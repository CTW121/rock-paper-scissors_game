import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
import "Database.js" as LocalStoroge

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("Rock-Paper-Scissors")

    property var winCount: 0
    property var losCount: 0
    property var winState: 0 //0=draw 1=player Win 2=player los

    //property var winCount: LocalStorage.dbGet("playerWin")
    //property var losCount: LocalStorage.dbGet("playerLos")

    SwipeView{
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Home_Page{      // Index: 0
            id: home_Page
        }

        Game_Page{      // Index: 1
            id: game_Page
        }

        End_Page{       // Index: 2
            id: end_Page
        }
    }

    Component.onCompleted: {
        //LocalStorage_Settings.dbInit()
        LocalStorage.dbInit()
    }
}
