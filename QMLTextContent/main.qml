import QtQuick 2.5

Rectangle {
    id: root
    width: 800; height: 400

    property int _col1X: 5
    property int _col2X: _col1X + 255
    property int _col3X: _col2X + 255

    property int _row1Y: 5
    property int _row2Y: _row1Y + 95
    property int _row3Y: _row2Y + 95
    property int _row4Y: _row3Y + 95

    Text {
        id: title1
        text: "1.不指定wrapMode、elide的属性"
        x: _col1X; y: _row1Y

        Rectangle {
            id: rect1
            anchors.top: title1.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text1
                anchors.fill: parent
                width: parent.width
                text: "abcdefg一二三四五六七八九十"
                font.pixelSize: 16
            }
        }
    }

    Text {
        id: title2
        text: "2.不指定wrapMode、但指定Text.ElideLeft"
        x: _col2X; y: _row1Y

        Rectangle {
            id: rect2
            anchors.top: title2.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text2
                anchors.fill: parent
                width: parent.width
                text: "abcdefg一二三四五六七八九十"
                font.pixelSize: 16
                elide: Text.ElideLeft
            }
        }
    }

    Text {
        id: title3
        text: "3.不指定wrapMode、但指定Text.ElideRight"
        x: _col3X; y: _row1Y

        Rectangle {
            id: rect3
            anchors.top: title3.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text3
                anchors.fill: parent
                width: parent.width
                text: "abcdefg一二三四五六七八九十"
                font.pixelSize: 16
                elide: Text.ElideRight
            }
        }
    }

    Text {
        id: title4
        text: "4.不指定wrapMode、但指定Text.ElideMiddle"
        x: _col1X; y: _row2Y

        Rectangle {
            id: rect4
            anchors.top: title4.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text4
                anchors.fill: parent
                width: parent.width
                text: "abcdefg一二三四五六七八九十"
                font.pixelSize: 16
                elide: Text.ElideMiddle
            }
        }
    }

    Text {
        id: title5
        text: "5.不指定wrapMode、但指定Text.ElideNone"
        x: _col2X; y: _row2Y

        Rectangle {
            id: rect5
            anchors.top: title5.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text5
                anchors.fill: parent
                width: parent.width
                text: "abcdefg一二三四五六七八九十"
                font.pixelSize: 16
                elide: Text.ElideNone
            }
        }
    }

    Text {
        id: title6
        text: "6.指定Text.NoWrap、不指定elide"
        x: _col3X; y: _row2Y

        Rectangle {
            id: rect6
            anchors.top: title6.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text6
                anchors.fill: parent
                width: parent.width
                text: "abcdefg一二三四五六七八九十"
                font.pixelSize: 16
                wrapMode: Text.NoWrap
            }
        }
    }

    Text {
        id: title7
        text: "7.指定Text.Wrap、不指定elide"
        x: _col1X; y: _row3Y

        Rectangle {
            id: rect7
            anchors.top: title7.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text7
                anchors.fill: parent
                width: parent.width
                text: "This is a test string."
                font.pixelSize: 16
                wrapMode: Text.Wrap
            }
        }
    }

    Text {
        id: title8
        text: "8.指定Text.WordWrap、不指定elide"
        x: _col2X; y: _row3Y

        Rectangle {
            id: rect8
            anchors.top: title8.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text8
                anchors.fill: parent
                width: parent.width
                text: "This is a test string."
                font.pixelSize: 16
                wrapMode: Text.WordWrap
            }
        }
    }

    Text {
        id: title9
        text: "9.指定Text.WrapAnywhere、不指定elide"
        x: _col3X; y: _row3Y

        Rectangle {
            id: rect9
            anchors.top: title9.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text9
                anchors.fill: parent
                width: parent.width
                text: "This is a test string."
                font.pixelSize: 16
                wrapMode: Text.WrapAnywhere
            }
        }
    }

    Text {
        id: title10
        text: "10.指定Text.Wrap、不指定elide、不指定行距"
        x: _col1X; y: _row4Y

        Rectangle {
            id: rect10
            anchors.top: title10.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text10
                anchors.fill: parent
                width: parent.width
                text: "This is a test string."
                font.pixelSize: 16
                wrapMode: Text.WrapAnywhere
            }
        }
    }

    Text {
        id: title11
        text: "10.指定Text.Wrap,不指定elide,指定行距为0.5"
        x: _col2X; y: _row4Y

        Rectangle {
            id: rect11
            anchors.top: title11.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text11
                anchors.fill: parent
                width: parent.width
                text: "This is a test string."
                font.pixelSize: 16
                wrapMode: Text.WrapAnywhere
                lineHeight: 0.5
            }
        }
    }

    Text {
        id: title12
        text: "10.指定Text.Wrap,不指定elide,指定行距为0.5"
        x: _col3X; y: _row4Y

        Rectangle {
            id: rect12
            anchors.top: title12.bottom
            anchors.margins: 5
            width: 120; height: 60
            border.color: "black"
            border.width: 2

            Text {
                id: text12
                anchors.fill: parent
                width: parent.width
                text: "This is a test string."
                font.pixelSize: 16
                wrapMode: Text.WrapAnywhere
                lineHeight: 1.5
            }
        }
    }
}
