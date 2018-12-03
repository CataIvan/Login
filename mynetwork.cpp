#include "mynetwork.h"

MyNetwork::MyNetwork()
{
    m_network = new QNetworkAccessManager(this);
    connect(m_network, SIGNAL(finished(QNetworkReply*)), this, SLOT(onFinished(QNetworkReply*)));
}

void MyNetwork::postData(const QString)
{
    QNetworkAccessManager *manager;
    manager = new QNetworkAccessManager();
    QNetworkRequest req;
    req.setUrl(QUrl("http://privatestate.ro/api/login"));

    QByteArray postData;
    postData.append("Username=cata@bns.com");
    postData.append("Password=123456");

    connect (manager, SIGNAL(finished(QNetworkReply *)), this, SLOT(replyFinish (QNetworkReply  *)));

    manager->post(req, postData);
}







