import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Button {
    id: control
    property real radius: 20
    property color backgroundColor: "#C0C0C0"
    property color smallBackgroundColor: "#C0C0C0"
    property string setIcon: ""
    property color textColor: "#FFFFFF"
    property real borderWidth: 0
    property color borderColor: "transparent"
    property real iconWidth: 60
    property real iconHeight: 40
    property string textlabel
    implicitHeight: 30
    implicitWidth: iconWidth

    SystemPalette { id: myPalette; colorGroup: SystemPalette.Active }

    contentItem: RowLayout {
        anchors.centerIn: parent
        width: parent.width

        Image {
            id: iconImage
            source: control.setIcon
            anchors{
                fill:parent
            }
        }
    }
    background: Rectangle {
        implicitHeight: control.implicitHeight
        implicitWidth: control.implicitWidth
        radius: control.radius
        color: control.backgroundColor
        border.width: control.borderWidth
        border.color: control.borderColor
        Behavior on color {
            ColorAnimation {
                easing.type: Easing.Linear
                duration: 200
            }
        }
        Rectangle {
            id: indicator
            property int mx
            property int my
            x: mx - width / 3
            y: my - height / 3
            height: width
            radius: control.radius
            color: Qt.lighter(myPalette.highlight)
        }
    }

    ParallelAnimation {
        id: main
        NumberAnimation {
            target: indicator
            property: "width"
            from: 0
            to: control.width * 2.5
            duration: 200
        }
        NumberAnimation {
            target: indicator
            property: "opacity"
            from: 0.9
            to: 0
            duration: 200
        }
    }
}
