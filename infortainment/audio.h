#ifndef AUDIO_H
#define AUDIO_H

#include <QObject>

class audio : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int audiolevel READ audiolevel WRITE setAudiolevel NOTIFY audiolevelChanged FINAL)
public:
    explicit audio(QObject *parent = nullptr);

    int audiolevel() const;
    void setAudiolevel(int newAudiolevel);
    Q_INVOKABLE void volumeAdjust(const int & val);


signals:
    void audiolevelChanged();
private:
    int m_audiolevel;
};

#endif // AUDIO_H
