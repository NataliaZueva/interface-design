import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    id:deleg
    property string name: "?"
    property string surname: "?"
    property string phoneNumber: "?"
    Text{ text:name }
    Text{ text:surname}
    Text{ text:phoneNumber }


    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        gradient:Gradient{
            GradientStop{position:0;color:"lightgray"}
            GradientStop{position:1;color:"white"}
        }
    }
    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        spacing:6
        anchors.margins: 10
        Text{text:mstext;anchors.verticalCenter:
                row.verticalCenter}


    }
    Text{
        text:time;
        anchors.right: rect.right
        anchors.bottom: rect.bottom
        anchors.rightMargin: 10
        anchors.bottomMargin: 3
    }

}
