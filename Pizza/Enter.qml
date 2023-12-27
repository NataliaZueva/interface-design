import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    signal buttonBack();
    signal buttonMainPage();
    signal buttonPass();

    visible: true
    width: 360
    height: 640
    title: qsTr("Pizza")

    background:
        Rectangle {
            id: gradientBackground
            color: "#CBBCB6"
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

    Button {
        id: button3
        x: 20
        y: 36
        width: 49
        height: 49
        text: qsTr("<-")
        font.pixelSize: 20
        icon.color: "#ffffff"
        anchors.topMargin: -17
        anchors.top: pizzalogo.top
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.width: 0
        }
        onClicked: {
            root.buttonBack()
        }
    }
    Image {
        id: pizzalogo
        width: 90
        height: 90
        anchors.verticalCenterOffset: -240
        anchors.horizontalCenterOffset: 1
        source: "images/pizzalogo.png"
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Image.AlignLeft
        verticalAlignment: Image.AlignBottom
        anchors.bottomMargin: 50
    }
    TextEdit {
        id: textEdit
        x: 123
        y: 152
        anchors.top: pizzalogo.bottom
        anchors.margins: 40
        text: qsTr("Вход")
        font.pixelSize: 30
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 36

    }
    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: usernameField
        anchors.top: textEdit.bottom
        anchors.margins: 40
        width: 158
        height: 31
        placeholderText: "Логин"
        font.pixelSize: 16
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
    }
    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: passwordField
        anchors.top: usernameField.bottom
        anchors.margins: 10
        width: 158
        height: 31
        placeholderText: "Пароль"
        font.pixelSize: 16
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
    }
    Button {
        id: button1
        anchors.top: passwordField.bottom
        anchors.margins: 5
        width: 116
        height: 25
        text: qsTr("Забыли пароль?")
        font.pixelSize: 12
        anchors.horizontalCenterOffset: 21
        anchors.topMargin: 6
        display: AbstractButton.TextBesideIcon
        autoRepeatDelay: 236
        autoRepeat: false
        checkable: true
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#00000000"

            border.width: 0
        }
        onClicked: {
            root.buttonPass()
        }
    }

    Button {
        id: button
        anchors.top: button1.bottom
        anchors.margins: 35
        width: 158
        height: 158
        text: qsTr("Продолжить")
        font.pixelSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
            focus: true
        }
        onClicked: {
            root.buttonMainPage()
        }
    }

}
