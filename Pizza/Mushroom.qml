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
        anchors.margins: 40
        text: qsTr("Грибная")
        font.pixelSize: 25
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: piz1
        width: 150
        height: 150
        anchors.top: textEdit.bottom
        anchors.margins: 20
        source: "images/piz1.png"
        anchors.horizontalCenterOffset: 0
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextEdit {
        id: text2
        anchors.top: piz1.bottom
        text: qsTr("30 см, традиционное тесто, 550г")
        font.pixelSize: 12
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }


    TextEdit {
        id: text3
        y: 431
        text: qsTr("Увеличенная порция моццарелы")
        font.pixelSize: 14
        anchors.horizontalCenterOffset: -1
        anchors.horizontalCenter: parent.horizontalCenter
    }
    TextEdit {
        id: text4
        anchors.top: text3.bottom
        anchors.margins: 5
        text: qsTr("Фирменный томатный соус")
        font.pixelSize: 14
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }


    Row {
        id: row1
        width: 280
        height: 29
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: text4.bottom
        anchors.margins: 20
        spacing: 10


        Button  {
            id: pizzaBtn1
            width: 85
            height: 25
            text: "Маленькая"
            font.pixelSize: 12
            background: Rectangle {
                color: "#C79B9F"
                radius: 90
                border.width: 0
            }
            onClicked: {
                piz1.width = 135
                piz1.height = 135
                text2.text = qsTr("25 см, традиционное тесто, 340г")
                cost.text = qsTr("Добавить в корзину за 439₽")

                pizzaBtn1.background.border.color = "#806161"
                pizzaBtn1.background.border.width = 1
                pizzaBtn1.background.color = "#bd9497"

                pizzaBtn2.background.border.width = 0
                pizzaBtn2.background.color = "#C79B9F"
                pizzaBtn3.background.border.width = 0
                pizzaBtn3.background.color = "#C79B9F"

            }
        }
        Button  {
            id: pizzaBtn2
            width: 85
            height: 25
            text: "Средняя"
            font.pixelSize: 12
            background: Rectangle {
                color: "#bd9497"
                radius: 90
                border.color: "#806161"
                border.width: 1
            }
            onClicked: {
                piz1.width = 150
                piz1.height = 150
                text2.text = qsTr("30 см, традиционное тесто, 550г")
                cost.text = qsTr("Добавить в корзину за 649₽")

                pizzaBtn2.background.border.color = "#806161"
                pizzaBtn2.background.border.width = 1
                pizzaBtn2.background.color = "#bd9497"

                pizzaBtn1.background.border.width = 0
                pizzaBtn1.background.color = "#C79B9F"
                pizzaBtn3.background.border.width = 0
                pizzaBtn3.background.color = "#C79B9F"
            }
        }
        Button  {
            id: pizzaBtn3
            width: 85
            height: 25
            text: "Большая"
            font.pixelSize: 12
            background: Rectangle {
                color: "#C79B9F"
                radius: 90
                border.width: 0
            }
            onClicked: {
                piz1.width = 175
                piz1.height = 175
                text2.text = qsTr("35 см, традиционное тесто, 760г")
                cost.text = qsTr("Добавить в корзину за 849₽")

                pizzaBtn3.background.border.color = "#806161"
                pizzaBtn3.background.border.width = 1
                pizzaBtn3.background.color = "#bd9497"

                pizzaBtn1.background.border.width = 0
                pizzaBtn1.background.color = "#C79B9F"
                pizzaBtn2.background.border.width = 0
                pizzaBtn2.background.color = "#C79B9F"
            }
        }
    }



    Button {
        id: cost
        y: 225
        text: "Добавить в корзину за 649₽"
        anchors.top: row1.bottom
        anchors.margins: 50
        checkable: true
        highlighted: false
        font.family: "Tahoma"
        width: 260
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 15
        anchors.horizontalCenterOffset: 0
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
        }
        onClicked: {
//            root.buttonSing_in()
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





}
