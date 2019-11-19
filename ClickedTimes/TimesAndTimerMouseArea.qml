import QtQuick 2.0

Item {
    /* 在countDownSecond秒内按钮按下targetTimes次，则timeToDo */
    property int second: 5 //倒计时时间，单位为s
    property int targetTimes: 5     //达到N次
    function timeToDo() {}          //所要处理的动作，需重载

    width: 50
    height: 50

    QtObject {//用于存放中间变量
        id: countObjdect
        property int clickedTimes: 0
        property int countDownSecond: second
    }

    Rectangle {
        id: clickedArea
        anchors.fill: parent
        color: "#ff3e3e3e"
        radius: 10

        Text {
            anchors.centerIn: parent
            text: "我是\n按钮"
            color: "#ffffffff"
            font.pixelSize: 15
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (!countClickedTimer.running) {//若当前计时器停止，则重置倒计时
                    countObjdect.countDownSecond = second
                    countClickedTimer.start()
                }
                countObjdect.clickedTimes++
                //当前按下次数达到目标次数并且计时器处于计时状态，则timeToDo
                if (countObjdect.clickedTimes == targetTimes && countClickedTimer.running) {
                    console.log("Clicked times:" + countObjdect.clickedTimes)
                    timeToDo()
                    countClickedTimer.stop()      //停止计时器
                    countObjdect.clickedTimes = 0 //清空按下次数
                }
            }
        }
    }
/* 仅用于调试
    Text {
        id: timeText
        text: countObjdect.countDownSecond + "S"
        anchors.left: clickedArea.right
        anchors.verticalCenter: clickedArea.verticalCenter
        anchors.margins: 10
    }

    Text {
        id: clicekdTimesText
        text: countObjdect.clickedTimes + "次"
        anchors.top: timeText.bottom
        anchors.horizontalCenter: timeText.horizontalCenter
        anchors.margins: 10
    }
*/
    Timer {
        id: countClickedTimer
        running: false
        interval: 1000 //计时器间隔，单位为ms
        repeat: true   //重复执行

        onTriggered: {//计时器每触发一次
            countObjdect.countDownSecond--
            //倒计时时间到
            if (countObjdect.countDownSecond <= 0) {
                countClickedTimer.stop()      //停下计时器
                countObjdect.clickedTimes = 0 //清空按下次数
            }
        }
    }
}
