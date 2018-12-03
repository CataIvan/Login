#ifndef MYNETWORK_H
#define MYNETWORK_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QUrl>

class MyNetwork: public QObject
{
    Q_OBJECT

public:
    MyNetwork();
    void postData(const QString);

private slots:
    void onfinished(QNetworkReply* reply);

private:
    void validateUser(QString username, QString password);

    QNetworkAccessManager* m_network;
    QString mUsenrame;
    QString mPassword;
};

#endif // MYNETWORK_H
