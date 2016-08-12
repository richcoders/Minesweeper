import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Rectangle {
    id: settingsPage
    height: parent.height
    width: parent.width
    visible: true
    color: "#303030"
    AndroidToolbar{
        id: toolbar_settings
        BackButton{
            id: backButton_settingsPage
            onClicked:{
                stack.pop()
            }
        }
        Text{
            color: "#FFFFFF"
            text: qsTr("Minesweeper - Settings Page")
            width: parent.width
            anchors.left: backButton_settingsPage.right
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: parent.height*0.37
            wrapMode: Text.Wrap
        }
    }

    Text{
        id: settings_header
        anchors.top: toolbar_settings.bottom
        width: parent.width
        height: parent.height*0.1
        color:"#FFFFFF"
        text: qsTr("Settings")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: height*0.5
        font.family: "droid sans"
        wrapMode: Text.Wrap
    }

    Text{
        id: musicText
        anchors.top: settings_header.bottom
        width: parent.width
        height: root.height/13
        color:"#FFFFFF"
        text: qsTr("Music:")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: height*0.5
        font.family: "droid sans"
        wrapMode: Text.Wrap
    }
    Slider{
        id: musicSlider
        anchors.top: musicText.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width-parent.width/3
        height: 30

        value: 50.0
        maximumValue: 100.0
        minimumValue : 0.0
        stepSize: 1.0
        updateValueWhileDragging : true

    }
    Text{
        id: soundsText
        anchors.top: musicSlider.bottom
        width: parent.width
        height: root.height/13
        color:"#FFFFFF"
        text: qsTr("Sounds:")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: height*0.5
        font.family: "droid sans"
        wrapMode: Text.Wrap
    }
    Slider{
        id: soundsSlider
        anchors.top: soundsText.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width-parent.width/3
        height: 30

        value: 50.0
        maximumValue: 100.0
        minimumValue : 0.0
        stepSize: 1.0
        updateValueWhileDragging : true

    }



    AndroidButton
    {
        id: mute
        anchors.bottom: max.top
        anchors.bottomMargin: height*0.14
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width/3.5
        height: root.height/16
        Text{
            width: parent.width
            height: parent.height
            text: qsTr("Mute")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.pixelSize: parent.height*0.5
        }
        onClicked:
        {
            musicSlider.value=0.0
            soundsSlider.value=0.0
        }
    }

    AndroidButton
    {
        id: max
        anchors.bottom: defaults.top
        anchors.bottomMargin: height*0.14
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width/3.5
        height: root.height/16
        Text{
            width: parent.width
            height: parent.height
            text: qsTr("Max")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.pixelSize: parent.height*0.5
        }
        onClicked:
        {
            musicSlider.value=100.0
            soundsSlider.value=100.0
        }
    }

    AndroidButton
    {
        id: defaults
        anchors.bottom: signature.top
        anchors.bottomMargin: height*0.40
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width/3.5
        height: root.height/16
        Text{
            width: parent.width
            height: parent.height
            text: qsTr("Defaults")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.pixelSize: parent.height*0.5
        }
        onClicked:
        {
            musicSlider.value=50.0
            soundsSlider.value=50.0
        }
    }



    Text{
        id: signature
        //visible:false
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width*0.9
        color: "#FFFFFF"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: parent.height*0.0186
        text: qsTr("Aristotle University of Thessaloniki - 2016")
    }
}