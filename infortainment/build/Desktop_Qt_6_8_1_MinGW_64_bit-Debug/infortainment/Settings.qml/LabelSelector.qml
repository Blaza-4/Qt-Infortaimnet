import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5



Pane{
    id:control
    padding: 0
    leftInset: 0
    rightInset: 0
    property string setColors:Theme.Istheme ?" #6e6e6e" :  "#FFFFFF"  //Theme.isDarkMode ? "grey" : "#FFFFFF"
    property real radius: implicitHeight / 2
    property int allowMaxTags: 5
    property var labelList: ["label","labe","Lable"]
    implicitWidth: parent.width * .95  //ayout.implicitWidth
    implicitHeight:parent.width * .08

    background: Rectangle{
        implicitHeight: control.implicitHeight
        implicitWidth: control.implicitWidth
        color:Theme.Istheme ? "#2f2f39" : "#dfdfdf"
        radius: control.radius
    }

    RowLayout{
        id:layout
        spacing: 0
        anchors{
            verticalCenter: parent.verticalCenter
        }

        Repeater {
            id:rep
            Layout.alignment: Qt.AlignHCenter
            width: parent.width
            model: labelList

            delegate: RadioButton {
                id: labelIndicator
                padding: 0
                checked: index === 0
                indicator: Item{ }

                contentItem: Rectangle{
                    implicitHeight: control.implicitHeight - 1
                    implicitWidth:   control.implicitWidth /3   //  tags.implicitWidth + 106
                    radius: control.radius
                    color: labelIndicator.checked ? setColors : "transparent"

                    HoverHandler{
                        id: tagHovered
                    }

                    Label {
                        id:tags
                        text: modelData
                        font.pixelSize: 15
                        font.family: "Montserrat"
                        color:theme.fontcolor
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
