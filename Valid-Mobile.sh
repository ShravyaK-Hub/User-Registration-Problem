#! /bin/bash
read -p "Enter your first name: " firstName
read -p "Enter your last name: " lastName
read -p "Enter your email: " email
read -p "Enter your mobile number: " mobile
nameRegex="^[[:upper:]][[:lower:]]{3,}$"
emailRegex="^([a-z0-9]+[-._+]{0,1}[a-z0-9]+)+@[a-z0-9-]+.[a-z]{2,3}.[a-z]{2,3}$"
mobileRegex="^[9][1][6-9][0-9]{9}$"
if [[ $firstName =~ $nameRegex ]]
then
  echo "First name is valid"
else
  echo "First name is invalid"
fi
if [[ $lastName =~ $nameRegex ]]
then
  echo "Last name is valid"
else
  echo "Last name is invalid"
fi
if [[ $email =~ $emailRegex ]]
then
	echo "Email is valid"
else
	echo "Email is invalid"
fi
if [[ $mobile =~ $mobileRegex ]]
then
	echo "Mobile number is valid"
else
	echo "Mobile number is not valid"
fi
