import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Window {
    minimumWidth: 360
    minimumHeight: 640
    visible: true
    Page{
        id:page
        anchors.fill:parent

        Item{
            id: container
            width: parent.width/1.5
            height: parent.height/3
            anchors.centerIn: parent

            SwipeView {
                id: view

                currentIndex: 1
                anchors.fill: parent

                clip:true

                Page_new{
                    id: firstPage
                    backgroundColor: "red"
                }
                Page_new {
                    id: secondPage
                    backgroundColor: "yellow"
                }
                Page_new {
                    id: thirdPage
                    backgroundColor: "green"
                }
            }

            PageIndicator {
                id: indicator
                count: view.count
                currentIndex: view.currentIndex
                anchors.bottom: view.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
