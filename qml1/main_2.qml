import QtQuick 2.15
import QtQuick.Window 2.15
Window {
    width: 620; height: 680; visible: true; title: qsTr("№1")
    id:win
    color: "#C0C0C0"
    Item{
        id: root
        anchors.fill: parent
        Rectangle{
            id:rect_top
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right:parent.right
            height: parent.height/8
            color: "#696969"
            Text{
                id: text_1
                anchors.centerIn: parent
                text: "Header"
            }
        }
        Rectangle{
            id:rect_mid
            anchors.top: rect_top.bottom
            anchors.left: parent.left
            anchors.right:parent.right
            anchors.bottom: rect_bot.top
            anchors.margins: 10
            border.color: "#2F4F4F"
            border.width: 2
            color: "#C0C0C0"
            Text{
                id: text_2
                anchors.centerIn: parent
                text: "Content"
            }
        }
        Rectangle{
            id:rect_bot
            anchors.left: parent.left
            anchors.right:parent.right
            anchors.bottom: parent.bottom
            height: parent.height/7
            color: "#A9A9A9"
            Row{
                spacing: 10
                anchors.centerIn: parent
//                anchors.margins: 5
                Rectangle{
                    width: rect_bot.width/3.3
                    height: rect_bot.height/1.2
                    color: rect_top.color
                    Text{
                        id: text_1_1
                        anchors.centerIn: parent
                        text: "1"
                    }
                }
                Rectangle{
                    width: rect_bot.width/3.3
                    height: rect_bot.height/1.2
                    color: rect_top.color
                    Text{
                        id: text_1_2
                        anchors.centerIn: parent
                        text: "2"
                    }
                }
                Rectangle{
                    width: rect_bot.width/3.3
                    height: rect_bot.height/1.2
                    color: rect_top.color
                    Text{
                        id: text_1_3
                        anchors.centerIn: parent
                        text: "3"
                    }
                }
            }
        }
    }
}


