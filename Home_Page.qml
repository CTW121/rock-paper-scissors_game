import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
import "Database.js" as LocalStoroge

Item {
    id: home_page
    width: 360
    height: 640

        Rectangle{
            anchors.fill: parent
            color: "#3e5a79"
        }

        Label{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 100
            text: "Rock-Paper-Scissor"
            color: "white"
            font.pointSize: 25
            font.bold: true
        }

        RoundButton{
            id: startGameBt
            anchors.centerIn: parent
            width: 200
            height: 200
            text: "Start Game"

            background: Rectangle{
                anchors.fill: parent
                radius: 99
                color: "#fd7e35"
                border.width: 1
            }

            onClicked: {
                swipeView.setCurrentIndex(1)
            }
        }

        Label{
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.bold: true
            text: "Win:: "+ winCount +" | "+ losCount+" ::Loss"
        }
}
