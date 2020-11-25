#!/bin/bash
user_id=$(id -u)
case $user_id in
     0)
       ;;
     *)
       echo -e "\e[1;31mYou should be root user to perform this steps\e[0m;"
       exit 1
       ;;
     esac
status_check() {
  case $? in
    0)
      echo -e "\e[1;32mSuccess\e[0m"
      *)
        echo -e "\e[1;31mFailure\e[0m"
        exit 3
        ;;
      esac
}
print() {
  echo -e "\e[1;34m$1\e[0m"
}
print1() {
  echo -e "\e[1;33m$1\e[0m"
}
print2() {
  echo -e "\e[1;31mUsage: $0 *****Update | frontend | catalogue | mongodb*********"
}
case $1 in
      Update)
        print "updating the system"
        status_check
        print1 "Finish..."
        ;;
      frontend)
        print "Installing nginx server"
        status_check
        print1 "finish..."
        ;;
      catalogue)
        print "Installing nodejs server"
        status_check
        print1 "finish..."
        ;;
      mongodb)
        print "Installing mongodb server"
        status_check
        print1 "finish.."
        ;;
      *)
        print2
        exit 2
        ;;
      esac