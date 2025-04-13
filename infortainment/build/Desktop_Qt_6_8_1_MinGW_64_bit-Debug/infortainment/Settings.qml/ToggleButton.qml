import QtQuick
import QtQuick.Controls

Switch {
    height:parent.height/ 10
    width:parent.width/4
    id: root
    property color checkedColor: "#439df3"

    indicator: Rectangle {
        width: parent.width
        height:parent.height
        radius: height / 2
        color: root.checked ? root.checkedColor : "#1e1e1e"

        Rectangle {
            x: root.checked ? parent.width - width - 2 : 1
            width: root.checked ? parent.height - 4 : parent.height - 2
            height: width
            radius: width / 2
            anchors.verticalCenter: parent.verticalCenter
            color: "grey"
            border.color: "black"
            Behavior on x {
                NumberAnimation { duration: 300 }
            }
        }
    }
}

