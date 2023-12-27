import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    visible: true
    width: 360
    height: 640
    title: qsTr("Pizza")

    signal buttonMain();
    signal buttonMenu();
    signal buttonMap();



    Rectangle {
        id: gradientBackground
        color: "#CBBCB6"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }

    Image {
        id: pizzalogo
        y: 40
        width: 70
        height: 70
        anchors.verticalCenterOffset: -258
        source: "images/pizzalogo.png"
        anchors.horizontalCenterOffset: 0
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    TextEdit {
        id: textEdit
        x: 123
        y: 152
        anchors.top: pizzalogo.bottom
        anchors.margins: 30
        text: qsTr("Ищите нас по всему городу!")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }


    Button {
        id: button4
        x: 18
        y: 14
        width: 49
        height: 49
        Image {
            id: menu1
            y: 17
            width: 15
            height: 15
            source: "images/menu1.png"
            anchors.horizontalCenterOffset: 0
            fillMode: Image.PreserveAspectFit
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.top: pizzalogo.top
        font.pixelSize: 20
        anchors.topMargin: -17
        background: Rectangle {
            color: "#c79b9f"
            radius: 90
            border.width: 0
            implicitHeight: 30
            implicitWidth: 100
        }
        onClicked: {
            sideMenu.visible = true
            button3.visible = true
        }
    }

    Button {
        id: button3
        x: 18
        y: 14
        width: 49
        height: 49
        visible: false
        Image {
            id: menu2
            y: 17
            width: 15
            height: 15
            source: "images/menu2.png"
            anchors.horizontalCenterOffset: 0
            fillMode: Image.PreserveAspectFit
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.top: pizzalogo.top
        font.pixelSize: 20
        anchors.topMargin: -17
        background: Rectangle {
            color: "#c79b9f"
            radius: 90
            border.width: 0
            implicitHeight: 30
            implicitWidth: 100
        }
        onClicked: {
            button3.visible = false
            sideMenu.visible = false
        }
    }

    Rectangle {
        id: sideMenu
        width: 150
        y: 65
        color: "lightgrey"
        visible: false

        ColumnLayout {
            anchors.fill: parent
            Button {
                text: "Главная"
                onClicked: {
                    root.buttonMain()
                }
            }
            Button {
                text: "Ресторан"
                onClicked: {
                    root.buttonMap()
                }
            }
            Button {
                text: "Меню"
                onClicked: {
                    root.buttonMenu()
                }
            }
        }
    }

    Button {
        id: button5
        x: 290
        y: 14
        width: 49
        height: 49
        text: qsTr("🍕")
        anchors.top: pizzalogo.top
        font.pixelSize: 20
        anchors.topMargin: -17
        background: Rectangle {
            color: "#c79b9f"
            radius: 90
            border.width: 0
            implicitHeight: 30
            implicitWidth: 100
        }
    }

    Image {
        id: map
        width: 250
        source: "images/map.jpg"
        fillMode: Image.PreserveAspectFit
        anchors.top: textEdit.bottom
        anchors.margins: 30
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }





}
