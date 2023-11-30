import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    width: 500
    height: 650
    visible: true
    title: qsTr("Layouts")
    id: win
    color: "#C0C0C0"
    property int myMargin: 6
    Item{
        id: layout
        anchors.fill:  parent
        ColumnLayout{
            anchors.fill:  parent
            spacing: myMargin

            Block{
                text: "Header"
                Layout.fillWidth: true
                height: 100
            }
            Block{
                text: "Content"
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.margins: myMargin
                color: "#C0C0C0"
            }

            Item{
                height: 120
                Layout.fillWidth: true
                RowLayout{
                    anchors.fill:  parent
                    spacing:5
                    Block{
                        text: "1"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                    }
                    Block{
                        text: "2"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                    }
                    Block{
                        text: "3"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                    }
                }
            }
        }
    }
}
