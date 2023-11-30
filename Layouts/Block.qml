import QtQuick 2.15


Rectangle{
    property alias text: txt.text
    id:rect1
    width:300
    height: 100
    border.color: "#2F4F4F"
    border.width: 1
    color: "#696969"
    Text{
        id: txt
        text:"My color: "+rect1.color
        anchors.centerIn: rect1
        font.pixelSize: 18
    }
}


