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
                id: header
                text: "Header"
                Layout.fillWidth: true
                height: 100
            }
            Block{
                id: content
                text: "Some content"
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
                        id: btn1
                        text: "Item 1"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        MouseArea {
                            id:mouse1
                            hoverEnabled: true
                            anchors.fill: parent
                            onPressed: {btn1.width+=1;btn1.height+=1;
                                        btn1.color="#696969";btn1.color="#545454";
                                        btn2.color="#a4a4a4";btn3.color="#a4a4a4";
                                        content.text="Item 1 content";;header.text="Header 1"}
                            onReleased: {btn1.width-=1; btn1.height-=1;
                            }
                        }
                    }
                    Block{
                        id: btn2
                        text: "Item 2"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        MouseArea {
                            id:mouse2
                            hoverEnabled: true
                            anchors.fill: parent
                            onPressed: {btn2.width+=1;btn2.height+=1;
                                        btn2.color="#696969";btn2.color="#545454";
                                        btn3.color="#a4a4a4";btn1.color="#a4a4a4";
                                        content.text="Item 2 content";header.text="Header 2"}
                            onReleased: {btn2.width-=1; btn2.height-=1;
                            }
                        }
                    }
                    Block{
                        id: btn3
                        text: "Item 3"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        MouseArea {
                            id:mouse3
                            hoverEnabled: true
                            anchors.fill: parent
                            onPressed: {btn3.width+=1;btn3.height+=1;
                                        btn3.color="#696969";btn3.color="#545454";
                                        btn1.color="#a4a4a4";btn2.color="#a4a4a4";
                                        content.text="Item 3 content";header.text="Header 3"}
                            onReleased: {btn3.width-=1; btn3.height-=1;
                            }
                        }
                    }
                }
            }
        }
    }
}
