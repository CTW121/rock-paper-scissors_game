import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("Rock-Paper-Scissors")

    SwipeView{
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Home_Page{
            id: home_Page
        }

        Game_Page{
            id: game_Page
        }

        End_Page{
            id: end_Page
        }
    }
}
