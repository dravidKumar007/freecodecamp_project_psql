#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
MAIN(){
  echo -e "1) cutting \n2) shaving \n3) both"

  read SERVICE_ID_SELECTED
  SN=$($PSQL "select name from services where service_id=$SERVICE_ID_SELECTED")
  if [[ -z $SN ]]
   then
   MAIN
   else
     echo "What's your phone number?"
     read CUSTOMER_PHONE
     CUSTOMER_NAME=$($PSQL "select name from customers where phone='$CUSTOMER_PHONE'")
     if [[ -z $CUSTOMER_NAME ]]
     then
     echo "I don't have a record for that phone number, what's your name?"
     read CUSTOMER_NAME
     IN=$($PSQL "insert into customers(name,phone)values('$CUSTOMER_NAME','$CUSTOMER_PHONE')" )
     fi
     SCI=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")
    
     echo "What time would you like your cut,$CUSTOMER_NAME?"
    read SERVICE_TIME
     OO=$($PSQL "insert into appointments(customer_id,service_id,time) values($SCI,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
    echo "I have put you down for a$SN at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}


MAIN
