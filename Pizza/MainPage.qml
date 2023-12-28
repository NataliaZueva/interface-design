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

    signal buttonPep();
    signal buttonMush();
    signal buttonCheese();
    signal buttonPizz();

    signal buttonMain();
    signal buttonMenu();
    signal buttonMap();

    signal buttonMap2();


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
        text: qsTr("Закажите прямо сейчас!")
        font.pixelSize: 25
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Row {
        id: row1
        width: 280
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textEdit.bottom
        spacing: 40
        anchors.margins: 40
        anchors.topMargin: 40
        Button  {
            id: pizzaBtn
            width: 120
            height: 120
            background: Rectangle {
                color: "#C79B9F"
                radius: 90
                implicitWidth: 100
                implicitHeight: 30
                border.width: 0
            }
            Image {
                id: pizza
                y: 23
                width: 75
                height: 75
                source: "images/pizza_icon.png"
                anchors.horizontalCenterOffset: 1
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: "Пиццы"
                anchors.bottom: pizza.bottom
                font.pixelSize: 12
                anchors.bottomMargin: -15
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            onClicked: {
                root.buttonPizz()
            }
        }
        Button  {
            id: drinkBtn
            width: 120
            height: 120
            background: Rectangle {
                color: "#C79B9F"
                radius: 90
                implicitWidth: 100
                implicitHeight: 30
                border.width: 0
            }
            Image {
                id: drink
                y: 20
                width: 75
                height: 75
                source: "images/drink1.png"
                anchors.horizontalCenterOffset: 0
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter

            }
            Text {
                text: "Напитки"
                anchors.bottom: drink.bottom
                font.pixelSize: 12
                anchors.bottomMargin: -15
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: best
        anchors.top: row1.bottom
        anchors.margins: 40
        width: 260
        height: 150
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#00000000"
            radius: 15.5
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#062732"
            border.width: 2
        }
        Text {
            x: 88
            y: 8
            text: "Товар дня"
            font.pixelSize: 18
            anchors.bottomMargin: 10
        }

        Row {
            id: row2
            y: 45
            width: 244
            height: 70
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20
            anchors.margins: 40
            anchors.horizontalCenterOffset: 0
            anchors.topMargin: 40
            Button  {
                id: pizza1
                width: 70
                height: 70

                onClicked: {
                    root.buttonPep()
                }
                background: Rectangle {
                    color: "#C79B9F"
                    radius: 90
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 0
                }
                Image {
                    id: piz1
                    y: 5
                    width: 60
                    height: 60
                    source: "images/piz5.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }


            }
            Button  {
                id: pizza2
                width: 70
                height: 70
                onClicked: {
                    root.buttonCheese()
                }


                background: Rectangle {
                    color: "#C79B9F"
                    radius: 90
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 0
                }
                Image {
                    id: piz2
                    y: 5
                    width: 60
                    height: 60
                    source: "images/piz2.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }
            Button  {
                id: pizza3
                width: 70
                height: 70
                onClicked: {
                    root.buttonMush()
                }


                background: Rectangle {
                    color: "#C79B9F"
                    radius: 90
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 0
                }
                Image {
                    id: piz3
                    y: 5
                    width: 60
                    height: 60
                    source: "images/piz6.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }
        }
    }
    Row{
        spacing: 45
        anchors.horizontalCenter: parent.horizontalCenter
        id: best2
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: -30
        Text {
            x: 65
            y: 485
            text: "Пепперони"

        }
        Text {
            x: 159
            y: 485
            text: "Сырная"
            font.pixelSize: 12
            anchors.bottomMargin: 10
        }
        Text {
            x: 249
            y: 485
            text: "Грибная"
            font.pixelSize: 12
            anchors.bottomMargin: 10

        }
    }


    Button {
        id: map
        text: "Карта ресторанов"
        anchors.top: best.bottom
        anchors.margins: 20
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
            root.buttonMap2()
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
