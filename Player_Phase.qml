import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    //anchors.fill: parent

    MouseArea {
        anchors.centerIn: parent
        width: 200
        height: 200
        onClicked: {
            swipeView.setCurrentIndex(2)
        }
        Rectangle{
            anchors.fill: parent
            radius: 99
            color: "#fd7e35"

            Label{
                anchors.centerIn: parent
                font.bold: true
                font.pointSize: 25
                text: "Stop Game"
            }
        }
    }

    ListView{
        id: optionListView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        height: 50
        width: parent.width
        orientation: ListView.Horizontal

        model: ListModel{
            id: optionModel
            ListElement{
                img: "qrc:/Images/rockImg.png"
                value: "rock"
            }
            ListElement{
                img: "qrc:/Images/paperImg.png"
                value: "paper"
            }
            ListElement{
                img: "qrc:/Images/scissorImg.png"
                value: "scissor"
            }
        }

        delegate: Item {
            width: parent.width/3
            height: parent.height

            MouseArea{
                anchors.centerIn: parent
                width: 50
                height: 50
                onClicked: {
                    // function that start the game
                    console.log(value)
                    swipeView.setCurrentIndex(1)
                    playerOption = value
                    botOption = optionModel.get(Math.floor(Math.random() * optionModel.count))
                    winCheck()
                }

                Image{
                    anchors.fill: parent
                    antialiasing: true
                    source: img
                }
            }
        }
    }

    function winCheck() {
        if(playerOption === botOption.value){
            //draw
            winState = 0
        }
        else if(playerOption === "rock" && botOption.value === "scissor") {
            // player win
            winCounr++
            winState = 1
        }
        else if(playerOption === "paper" && botOption.value === "scissor") {
            // bot win
            losCount++
            winState = 2
        }
        else if(playerOption === "paper" && botOption.value === "rock") {
            // player win
            winCount++
            winState = 1
        }
        else if(playerOption === "scissor" && botOption.value === "rock") {
            // bot win
            losCount++
            winState = 2
        }
        else if(playerOption === "scissor" && botOption.value === "paper") {
            // player win
            winCount++
            winState = 1
        }
        else if(playerOption === "rock" && botOption.value === "paper") {
            // bot win
            losCount++
            winState = 2
        }
        console.log(winState)
        gameFrame.setCurrentIndex(1)
        // upload to local storage
    }
}
