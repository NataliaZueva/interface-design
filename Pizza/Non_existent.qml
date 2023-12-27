import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root

    signal buttonBack_pop();

    visible: true
    width: 360
    height: 640
    title: qsTr("Pizza")

    signal buttonPep();


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
        anchors.top: pizzalogo.bottom
        anchors.margins: 40
        text: qsTr("Данная страница не существует((")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: cost
        text: "вернуться.."
        anchors.top: textEdit.bottom
        anchors.margins: 400

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
            root.buttonBack_pop()
        }

    }




}
