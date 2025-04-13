
import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "./Settings.qml"

Rectangle {
    property double selectedOpacity: 1.0
    property double unselectedOpacity: 0.6
    property int selectedIndex: 0 // Track which button is selected

    id: main
    color: "transparent"
    width: parent.width * 0.95
    anchors {
        horizontalCenter: parent.horizontalCenter
        top: timeText.bottom
        bottom: parent.bottom
    }

    Rectangle {
        height: parent.height
        width: parent.width * 0.4
        color:theme.panefirst     //"#0E0E0E"
        anchors {
            left: parent.left
        }

        Column {
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
                bottom: parent.bottom
                topMargin: 20
            }
            spacing: 30

            Repeater {
                model: [
                    { icon: Theme.Istheme ? "Assets/Settings/quickcontrols.svg" : "Assets/Settings/light/quickcontrols.svg", label: "Quick Controls" },
                    { icon: Theme.Istheme ? "Assets/Settings/lights.svg": "Assets/Settings/light/lights.svg" ,label: "Lights controls" },
                    { icon: Theme.Istheme ? "Assets/Settings/lock.svg": "Assets/Settings/light/lock.svg", label: "Lock settings" },
                    { icon: Theme.Istheme ? "Assets/Settings/display.svg" : "Assets/Settings/light/display.svg", label: "Display" },
                    { icon: Theme.Istheme ? "Assets/Settings/model3-icon-small.svg": "Assets/Settings/light/model3-icon-small.svg", label: "Driving" },
                    { icon: Theme.Istheme ? "Assets/Settings/steering-wheel-small.svg" :"Assets/Settings/light/steering-wheel-small.svg" , label: "Autopilot" },
                    { icon: Theme.Istheme ? "Assets/Settings/safetyandsecurity.svg" : "Assets/Settings/light/safetyandsecurity.svg", label: "Safety and security" },
                    { icon: Theme.Istheme ? "Assets/Settings/service.svg" : "Assets/Settings/light/service.svg", label: "Service" }
                ]

                IconButton2 {
                    id: button
                    setIcon: modelData.icon
                    setLabel: modelData.label
                    opacity: index === main.selectedIndex ? main.selectedOpacity : main.unselectedOpacity
                    onClicked: {
                        main.selectedIndex = index
                        console.log("Selected: " + modelData.label)
                        switchPage(index)
                    }
                }
            }
        }
    }

    Rectangle {
        height: parent.height
        width: parent.width * 0.6
        color: theme.paneleft
        anchors {
            right: parent.right
        }
        StackView{
           id:stack
           anchors.fill:parent
           initialItem:"Settings.qml/QuickControls.qml"
        }


    }
    function switchPage(index){
      switch(index){
      case 0:
          stack.replace(null,"Settings.qml/QuickControls.qml")
          break;
       case 1:
           stack.replace(null,"Settings.qml/Light.qml")
           break;
       case 2:
           stack.replace(null,"Settings.qml/Lock.qml")
           break;
       case 3:
           stack.replace(null,"Settings.qml/Display.qml")
           break;
       case 4:
           stack.replace(null,"Settings.qml/Driving.qml")
           break;
       case 5:
           stack.replace(null,"Settings.qml/Autopilot.qml")
           break;
       case 6:
           stack.replace(null,"Settings.qml/Saftey.qml")
           break;
       case 7:
           stack.replace(null,"Settings.qml/Security.qml")
           break;

      }
    }
}
