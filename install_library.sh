#!/bin/bash
echo 'ElevenBand_NFCKey Library Installer'
echo 'Dev v1.0-20180706 Developed by T.Morio'
echo -e "\n動作に必要なライブラリをインストールします。\nインストールされるライブラリ:\n・Python-usb(USBと接続するためのライブラリ)\n・nfcpy(Python NFCライブラリ)\n・mpg321(MP3を再生するコマンド)\n"
echo -n インストールを開始しますか?[Y/n]:
read answer

if [ $answer = "Y" ]; then
        echo 'Python-usbのインストールを行っています...'
        yes | sudo apt install python-usb
        echo 'nfcpyのインストールを行っています...'
        yes | sudo pip install nfcpy
	echo 'mpg321のインストールを行っています...'
	yes | sudo apt install mpg321
        echo 'インストール完了しました！'
else
        echo 'ライブラリのインストールがキャンセルされました。'
fi
