#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ -z $1 ]]
then
  echo -e "Please provide an element as an argument."
fi
if [[ $1 =~ ^[0-9] ]]
then
  element=$($PSQL "select name from elements where atomic_number=$1;")
  else
  element=$($PSQL "select name from elements where name='$1' OR symbol='$1';")
fi


element_atomic_n=$($PSQL "select atomic_number from elements where name='$element';")
element_symbol=$($PSQL "select symbol from elements where name like '$element';")
element_type=$($PSQL "select type from types left join properties on(types.type_id=properties.type_id) WHERE atomic_number=$(($element_atomic_n));")
element_atom_mass=$($PSQL "select atomic_mass from properties where atomic_number=$(($element_atomic_n));")
element_melting=$($PSQL "select melting_point_celsius from properties where atomic_number=$(($element_atomic_n));")
element_boiling=$($PSQL "select boiling_point_celsius from properties where atomic_number=$(($element_atomic_n));")





if [[ -z $element ]] && [[ ! -z $1 ]]
then
 echo -e "I could not find that element in the database."
 else
  if [[ ! -z $element ]] && [[ ! -z $1 ]]
  then
    echo -e "The element with atomic number $(($element_atomic_n)) is $element ($element_symbol). It's a $element_type, with a mass of $element_atom_mass amu. $element has a melting point of $element_melting celsius and a boiling point of $element_boiling celsius."
  fi
fi
