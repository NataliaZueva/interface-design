import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2


Window {
    width: 450
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
                id: header
                text: "Header"
                Layout.fillWidth: true
                height: 100
            }
            Block{
                id: content
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
                    Button  {
                        id: pizzaBtn1
                        width:300
                        height: 100
                        text: "1"
                        font.pixelSize: 12
                        background: Rectangle {
                            color: "#2f4f4f"
                            radius: 90
                            border.width: 0
                        }
                        onClicked: {
                            content.text = qsTr("Button 1")

                            pizzaBtn1.background.border.color = "#212e2e"
                            pizzaBtn1.background.border.width = 1
                            pizzaBtn1.background.color = "#253e3e"

                            pizzaBtn2.background.border.width = 0
                            pizzaBtn2.background.color = "#2f4f4f"
                            pizzaBtn3.background.border.width = 0
                            pizzaBtn3.background.color = "#2f4f4f"

                        }
                    }
                    Button  {
                        id: pizzaBtn2
                        width:300
                        height: 100
                        text: "2"
                        font.pixelSize: 12
                        background: Rectangle {
                            color: "#2f4f4f"
                            radius: 90
                            border.width: 0
                        }
                        onClicked: {
                           content.text = qsTr("Button 2")

                            pizzaBtn1.background.border.color = "#212e2e"
                            pizzaBtn1.background.border.width = 1
                            pizzaBtn1.background.color = "#253e3e"

                            pizzaBtn2.background.border.width = 0
                            pizzaBtn2.background.color = "#2f4f4f"
                            pizzaBtn3.background.border.width = 0
                            pizzaBtn3.background.color = "#2f4f4f"

                        }
                    }
                    Button  {
                        id: pizzaBtn3
                        width:300
                        height: 100
                        text: "3"
                        font.pixelSize: 12
                        background: Rectangle {
                            color: "#2f4f4f"
                            radius: 90
                            border.width: 0
                        }
                        onClicked: {
                           content.text = qsTr("Button 2")
                            pizzaBtn1.background.border.color = "#212e2e"
                            pizzaBtn1.background.border.width = 1
                            pizzaBtn1.background.color = "#253e3e"

                            pizzaBtn2.background.border.width = 0
                            pizzaBtn2.background.color = "#2f4f4f"
                            pizzaBtn3.background.border.width = 0
                            pizzaBtn3.background.color = "#2f4f4f"

                        }
                    }
                }
            }
        }
    }
}
