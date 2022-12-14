import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
import "Database.js" as LocalStoroge

Item {
    id: end_page
    width: 360
    height: 640

    Rectangle{
        anchors.fill: parent
        color: "#3e5a79"
    }

    Label{
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.bold: true
        font.pointSize: 25
        text: "Good Game!!!"
    }

    Image{
        anchors.centerIn: parent
        width: 200
        height: 200
        antialiasing: true
        source: "qrc:/Images/winImg.png"
    }

    Label{
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.bold: true
        font.pointSize: 25
        text: "Win:: "+ winCount +" | "+ losCount+" ::Loss"
    }
}
