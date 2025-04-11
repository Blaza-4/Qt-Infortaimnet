#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>
#include <QTimer>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool lock READ lock WRITE setLock NOTIFY lockChanged FINAL)
    Q_PROPERTY(QString profile READ profile WRITE setProfile NOTIFY profileChanged FINAL)
    Q_PROPERTY(int temperature READ temperature WRITE setTemperature NOTIFY temperatureChanged FINAL)
    Q_PROPERTY(QString currentTime READ currentTime WRITE setCurrentTime NOTIFY currentTimeChanged FINAL)

public:
    explicit System(QObject *parent = nullptr);

    bool lock() const;

    QString profile() const;
    void setProfile(const QString &newProfile);

    int temperature() const;
    void settemperature(int newTemperature);

    QString currentTime() const;
    void setCurrentTime(const QString &newCurrentTime);

    void setTemperature(int newTemperature);

public slots:
    void setLock(bool newLock);
    void  currentTimerTimeout();

signals:
    void lockChanged();
    void profileChanged();

    void temperatureChanged();

    void currentTimeChanged();

private:
    bool m_lock;
    QString m_profile;
    int m_temperature;
    QString m_currentTime;
    QTimer *timerTimeout;
};

#endif // SYSTEM_H
