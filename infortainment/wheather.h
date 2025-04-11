#ifndef WHEATHER_H
#define WHEATHER_H

#include <QObject>
#include <QMap>
#include <QString>
#include <QStringList>
#include <QDebug>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QtTypes>
#include <QTimer>
class wheather : public QObject
{
    Q_OBJECT
public:
    ~wheather();
    explicit wheather(QObject *parent = nullptr);
    Q_PROPERTY(QString Location READ Location WRITE setLocation NOTIFY LocationChanged FINAL)
    Q_PROPERTY(QString Temperature READ Temperature WRITE setTemperature NOTIFY TemperatureChanged FINAL)
    Q_PROPERTY(QString Feelslike READ Feelslike WRITE setFeelslike NOTIFY FeelslikeChanged FINAL)
    Q_PROPERTY(QString Condition READ Condition WRITE setCondition NOTIFY ConditionChanged FINAL)
    Q_PROPERTY(QString Icon READ Icon WRITE setIcon NOTIFY IconChanged FINAL)

    QString Location() const;
    void setLocation(const QString &newLocation);

    QString Temperature() const;
    void setTemperature(const QString &newTemperature);
    void weatherReplyFinished(QNetworkReply *reply);
    void locationReplayFinished(QNetworkReply *reply);

    QString Feelslike() const;
    void setFeelslike(const QString &newFeelslike);

    QString Condition() const;
    void setCondition(const QString &newCondition);

    QString Icon() const;
    void setIcon(const QString &newIcon);

public slots:
    Q_INVOKABLE void fetch();
    void fetchLocation();

signals:

    void LocationChanged();

    void TemperatureChanged();

    void FeelslikeChanged();

    void ConditionChanged();

    void IconChanged();

private:

    qreal latitude;
    qreal longitude;
    QString m_Location;
    QString m_Temperature;
    QTimer *timer,*timer1;
    QString m_Feelslike;
    QString m_Condition;
    QString m_Icon;
};

#endif // WHEATHER_H
