res=0

while :; do
  read -p "what would you like to do?
  1. Add
  2. Subtract
  3. Multiply
  4. Divide
  5. Quit
  
  " res
  if [[ $res -eq 1 ]]; then
    read -p "What is the first number? " num1
    read -p "what is your second number? " num2
    ans=$(echo "$num1 + $num2" | bc)
    echo "The answer is $ans"
  elif [[ $res -eq 2 ]]; then
    read -p "What is the first number? " num1
    read -p "what is your second number? " num2
    ans=$(echo "$num1 - $num2" | bc)
    echo "The answer is $ans"
  elif [[ $res -eq 3 ]]; then
    read -p "What is the first number? " num1
    read -p "what is your second number? " num2
    ans=$(echo "$num1 * $num2" | bc)
    echo "The answer is $ans"
  elif [[ $res -eq 4 ]]; then
    read -p "What is the first number? " num1
    read -p "what is your second number? " num2
    ans=$(echo "$num1 / $num2" | bc)
    echo "The answer is $ans"
  elif [[ $res -eq 5 ]]; then
    break
  else
    echo "Please type a number 1-5 "
  fi
done
