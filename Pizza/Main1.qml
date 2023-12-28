import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.15

Page {
    id: root
    signal buttonSing();

    visible: true
    width: 360
    height: 640
    title: qsTr("Pizza")

    background:
        Rectangle {
            id: background1
            color: "#CBBCB6"
            anchors.fill: parent
        }

    TextEdit {
        id: textEdit
        x: 123
        y: 96
        text: qsTr("Добро пожаловать!")
        font.pixelSize: 30
        anchors.horizontalCenterOffset: 1
        anchors.topMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter


    }
    Image {
        id: pizzalogo
        width: 175
        height: 175
        anchors.top: textEdit.bottom
        anchors.margins: 60

        source: "images/pizzalogo.png"
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Button {
        id: sing_in
        y: 300
        text: "Начать"
        anchors.top: pizzalogo.bottom
        anchors.margins: 10
        checkable: true
        highlighted: false
        font.family: "Tahoma"
        width: 160
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 18
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
        }
        onClicked: {
            root.buttonSing()
        }

    }
}
