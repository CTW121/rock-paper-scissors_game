import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
import "Database.js" as LocalStoroge

Item {
    //anchors.fill: parent

    Label{
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.bold: true
        font.pointSize: 15
        text: "Click the Icon..."
    }

    MouseArea{
        anchors.centerIn: parent
        width: 100
        height: 100

        onClicked: {
            swipeView.setCurrentIndex(0)
            winState = 0
            playerOption = ""
            botOption = ""
        }

        Image{
            anchors.fill: parent
            antialiasing: true
            source: if(winState===0) {"qrc:/Images/drawImg.png"}
                    else if(winState===1) {"qrc:/Images/winImg.png"}
                    else if(winState===2) {"qrc:/Images/losImg.png"}
            onSourceChanged: {
                resultTimer.start()
            }
        }
    }

    Label {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.bold: true
        font.pointSize: 25
        text: "Win:: "+ winCount +" | "+ losCount+" ::Loss"
    }

    Timer{
        id: resultTimer
        interval: 10000
        repeat: false
        running: false
        onTriggered: {
            gameFrame.setCurrentIndex(0)
            winState = 0
            playerOption = ""
            botOption = ""
        }
    }
}
