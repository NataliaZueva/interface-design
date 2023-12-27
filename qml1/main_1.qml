import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 620
    height: 680
    visible: true
    title: qsTr("№212")
    id: win
    color: "#C0C0C0"
    Rectangle {
        width: 200
        height: 200
        color: "red"
        anchors.centerIn: parent
        rotation: 45
    }
    Rectangle {
        width: 200
        height: 200
        color: "red"
        radius: 100
        x: 275
        y: 175
        rotation: 45
    }
    Rectangle {
        width: 200
        height: 200
        color: "red"
        radius: 100
        x: 145
        y: 175
        rotation: 45
    }
}
