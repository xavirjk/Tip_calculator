#include "calculator.h"
#include <QDebug>
namespace tip {
namespace system {
Calculator::Calculator(QObject *parent) : QObject(parent)
{
    message = "Tip Calculator";
}
QString Calculator::getMessage(){
    return message;
}
float Calculator::getTotal(){
    return total;
}
float Calculator::getBill() const{
    return bill;
}
int Calculator::getRating() const{
    return rating;
}
int Calculator::getNumber() const{
    return number;
}
bool Calculator::canExecute(){
    if(rating && bill){
        execute();
        return  true;
    }
    else {
        return false;
    }
}
void Calculator::setBill(const float &customerBill){
    if(customerBill != bill){
        bill = customerBill;
    }
}
void Calculator::setRating(const int &customerRating){
    if(customerRating != rating){
        rating = customerRating;
    }
}
void Calculator::setNumber(const int &numberSharing){
    if(numberSharing != number){
        number = numberSharing;
    }
}

void Calculator::execute() {
    if(number == 0){
       number = 1;
    }
    total = (bill * rating)/number;
    total = total/100;
}
}}



