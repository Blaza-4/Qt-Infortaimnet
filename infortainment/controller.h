#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>

class controller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int carTemp READ carTemp WRITE setCarTemp NOTIFY carTempChanged FINAL)
    Q_PROPERTY(int speed READ speed WRITE setSpeed NOTIFY speedChanged FINAL)
    Q_PROPERTY(int follow READ follow WRITE setFollow NOTIFY followChanged FINAL)
    Q_PROPERTY(int zoom READ zoom WRITE setZoom NOTIFY zoomChanged FINAL)

public:
    explicit controller(QObject *parent = nullptr);

    int carTemp() const;
    void setCarTemp(int newCarTemp);
    Q_INVOKABLE void tempAdjust(const int & val);
    Q_INVOKABLE void speedaAdjust(const int &val);
    Q_INVOKABLE void followAdjust(const int &val);
    Q_INVOKABLE void zoomAdjust(const int &val);
    int speed() const;
    void setSpeed(int newSpeed);

    int follow() const;
    void setFollow(int newFollow);



    int zoom() const;
    void setZoom(int newZoom);

signals:
    void carTempChanged();
    void speedChanged();

    void followChanged();



    void zoomChanged();

private:
    int m_carTemp;
    int m_speed;
    int m_follow;

    int m_zoom;
};

#endif // CONTROLLER_H
