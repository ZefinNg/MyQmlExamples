import QtQuick 2.0

Item {
    id: root
    width: 640
    height: 480

    TimesAndTimerMouseArea {
        id: buttonTest
        anchors.centerIn: parent

        function timeToDo() { //重载所需处理的动作
            console.log("It's time to do you want to do...")
        }
    }
}

