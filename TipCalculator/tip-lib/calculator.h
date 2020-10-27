#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>
#include <QString>
#include <tip-lib_global.h>
namespace tip {
namespace system {
class TIPLIB_EXPORT Calculator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ui_message READ getMessage CONSTANT)
    Q_PROPERTY(float ui_cost READ getBill WRITE setBill NOTIFY billChanged)
    Q_PROPERTY(int ui_rating READ getRating WRITE setRating NOTIFY ratingChanged)
    Q_PROPERTY(int ui_number READ getNumber WRITE setNumber NOTIFY numberChanged)
    Q_PROPERTY(bool ui_canExecute READ canExecute CONSTANT)
    Q_PROPERTY(float ui_total READ getTotal CONSTANT)
public:
    explicit Calculator(QObject *parent = nullptr);
    QString getMessage();
    float getTotal();
    float getBill () const;
    int getRating() const;
    int getNumber() const;
    void setRating(const int &customerRating);
    void setBill(const float &customerBill);
    void setNumber(const int &numberSharing);
signals:
    void calculateTip();
    void billChanged();
    void ratingChanged();
    void numberChanged();
private:
    void execute();
    bool canExecute();
    float total = 0;
    QString message;
    int rating = 30;
    float bill= 0;
    int number = 0;

};
}}


#endif // CALCULATOR_H
