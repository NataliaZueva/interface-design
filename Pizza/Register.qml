import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    signal buttonBack();
    signal buttonContin();


    visible: true
    width: 360
    height: 640
    title: qsTr("Pizza")

    background:
        Rectangle {
            id: gradientBackground
            color: "#CBBCB6"
            anchors.fill: parent
        }

    Button {
        id: button3
        x: 20
        y: 36
        width: 49
        height: 49
        text: qsTr("<-")
        font.pixelSize: 20
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
        width: 100
        height: 100
        anchors.verticalCenterOffset: -240
        anchors.horizontalCenterOffset: -1
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
        text: qsTr("Регистрация")
        font.pixelSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
    }
    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: usernameField
        anchors.top: textEdit.bottom
        anchors.margins: 40
        width: 158
        height: 31
        placeholderText: "Имя"
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
        id: userField
        anchors.top: usernameField.bottom
        anchors.margins: 10
        width: 158
        height: 31
        placeholderText: "Фамилия"
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
        id: email
        anchors.top: userField.bottom
        anchors.margins: 10
        width: 158
        height: 31
        placeholderText: "email"
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
        anchors.top: email.bottom
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
    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: entrance

    }

    Button {
        id: contin
        anchors.top: passwordField.bottom
        anchors.margins: 40
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
        }
        onClicked: {
            root.buttonContin()
        }

    }
}
