import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    title: "Qt_StackView"
    visible: true

    // 画面QMLを読み込むStackView
    StackView {
        id: _stackView
        anchors.fill: parent
    }

    // 画面Aへ遷移するボタン
    Button {
        id: _buttonA

        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50

        width: 150
        height: 80

        text: "画面Aへ"
        palette.buttonText: "#000000"

        // ボタンがクリックされた場合の処理
        onClicked: {

            // StackView内をクリアする
            _stackView.clear( StackView.Immediate )

            // 読み込むComponentを作成し、StackViewにpushする
            let qmlComponent = Qt.createComponent( "./screenA.qml" )
            _stackView.push( qmlComponent, StackView.Immediate )
        }
    }

    // 画面Bへ遷移するボタン
    Button {
        id: _buttonB

        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50

        width: 150
        height: 80

        text: "画面Bへ"
        palette.buttonText: "#000000"

        // ボタンがクリックされた場合の処理
        onClicked: {

            // StackView内をクリアする
            _stackView.clear( StackView.Immediate )

            // 読み込むComponentを作成し、StackViewにpushする
            let qmlComponent = Qt.createComponent( "./screenB.qml" )
            _stackView.push( qmlComponent, StackView.Immediate )
        }
    }

    // Window表示時に実行される処理
    Component.onCompleted: {

        // 読み込むComponentを作成し、StackViewにpushする
        let qmlComponent = Qt.createComponent( "./screenA.qml" )
        _stackView.push( qmlComponent, StackView.Immediate )
    }
}

