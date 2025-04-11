import QtQuick
import QtQuick.Controls
Slider{
    id:slider
    width:parent.width * .95
    height:parent.height * .08
    from:0
    to:1.0
    value:.8
    background:Rectangle{
        height:parent.height
        width:parent.width
        color:"#1c1d21"
        radius:height/2
        Rectangle{
            id:val
            height:parent.height
            color:"white"
            width:slider.visualPosition == 0 ? 0 : slider.handle.x + slider.handle.width
            radius:height/2
        }
    }
    handle:Rectangle{
        x :slider.visualPosition * (slider.availableWidth - width)
        id:handle
        height:parent.height
        width:parent.width/4
        color:theme.buttoncolor
        radius:slider.height/2

        Label{
            text:slider.value.toFixed(1) * 100 + "%"
            anchors.verticalCenter:parent.verticalCenter
            anchors.horizontalCenter:parent.horizontalCenter
            color:theme.fontcolor
        }

    }

}
