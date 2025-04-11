#ifndef THEMES_H
#define THEMES_H
#include <QDebug>
#include <QObject>

class Themes : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool Istheme READ Istheme WRITE setIstheme NOTIFY IsthemeChanged FINAL)
public:
    explicit Themes(QObject *parent = nullptr);

    bool Istheme() const;
public slots:
    void setIstheme(bool newIstheme);

signals:
    void IsthemeChanged();
private:
    bool m_Istheme;
};

#endif // THEMES_H
