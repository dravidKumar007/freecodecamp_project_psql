#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
R=$(( $(($RANDOM)) % 1000 ))
echo "Enter your username:"
read n
poiu=$($PSQL "select un from player where un='$n'")
p=$($PSQL "select ng from player where un='$n'")
b=$($PSQL "select b from player where un='$n'")

if [[ -z $p ]]
then
in=$($PSQL "insert into player(un)values('$n')")
p=0
b=10000;
echo "Welcome, $n! It looks like this is your first time here."
else
echo "Welcome back, $poiu! You have played $p games, and your best game took $b guesses."
fi
t=0
c=0
while [[ $c -eq 0 ]]
do
let "t=t+1"
echo "Guess the secret number between 1 and 1000:"
read r
if [[ ! $r =~ ^[0-9]+$ ]]
then 
echo "That is not an integer, guess again:"
else
  if [[ $r -eq $R ]]
  then
  let "c=c+1"
  fi
  if [[ $r -lt $R ]]  
  then
  echo "It's lower than that, guess again:"
  fi
  if [[ $r -gt $R ]]
  then
  echo "It's higher than that, guess again:"
  fi
fi
done


let "p=p+1"


if [[ $t -lt $b ]]
then

alt=$($PSQL "update player set b=$t where un='$n' ")
fi

al=$($PSQL "update player set ng=$p where un='$n' ")

































echo -e "You guessed it in $t tries. The secret number was $R. Nice job!"
