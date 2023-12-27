import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 640
    title: qsTr("Pizza")

    Rectangle {
        id: gradientBackground
        color: "#CBBCB6"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }


    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: main1

    }
    Main1 {
        id: main1
        onButtonSing: {
            stack_view.push(entrance)
        }
    }

    Entrance {
        id: entrance
        onButtonSing_in: {
            stack_view.push(enter)
        }
        onButtonSing_up: {
            stack_view.push(register)
        }
    }

    Register {
        id: register
        visible: false
        onButtonBack: {
            stack_view.pop(entrance)
        }
        onButtonContin: {
            stack_view.push(mainPage)
        }
    }

    Enter {
        id: enter
        visible: false
        onButtonBack: {
            stack_view.pop(entrance)
        }
        onButtonMainPage: {
            stack_view.push(mainPage)
        }
        onButtonPass: {
            stack_view.push(non_existent)
        }
    }

    MainPage {
        id: mainPage
        visible: false
        onButtonPizz: {
            stack_view.push(pizza)
        }
        onButtonPep: {
            stack_view.push(pepperoni)
        }
        onButtonMain: {
            stack_view.pop(mainPage)
        }
        onButtonMenu: {
            stack_view.push(pizza)
        }
        onButtonMap: {
            stack_view.push(map)
        }
    }

    Pepperoni {
        id: pepperoni
        visible: false
        onButtonMain: {
            stack_view.pop(mainPage)
        }
        onButtonMenu: {
            stack_view.push(pizza)
        }
        onButtonMap: {
            stack_view.push(map)
        }
    }

    Map {
        id: map
        visible: false
        onButtonMain: {
            stack_view.pop(mainPage)
        }
        onButtonMenu: {
            stack_view.push(pizza)
        }
        onButtonMap: {
            stack_view.pop(map)
        }
    }

    Pizza {
        id: pizza
        visible: false
        onButtonMain: {
            stack_view.pop(mainPage)
        }
        onButtonMenu: {
            stack_view.pop(pizza)
        }
        onButtonMap: {
            stack_view.push(map)
        }
    }

    Error_404 {
        id: error_404
        visible: false
        onButtonBack_in: {
            stack_view.pop(mainPage)
        }
    }
    Non_existent {
        id: non_existent
        visible: false
        onButtonBack_pop: {
            stack_view.pop(entrance)
        }
    }

}
