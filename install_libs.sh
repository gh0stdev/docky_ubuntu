#!/bin/bash

echo "Установка Библиотек для docky"
sudo apt-get install ./*.deb

echo "Установка docky"
cd docky_rep/
sudo apt-get install ./docky_2.2.1.1-1_all.deb

echo "Убираем иконку с дока (якорь)"
gconftool-2 --type bool --set /apps/docky-2/Docky/Items/DockyItem/ShowDockyItem false

echo "Fix icons (Фиксим иконки)"
mkdir ~/.local/share/applications

sudo cp /usr/share/applications/thunar.desktop ~/.local/share/applications
sudo cp /usr/share/applications/xfce4-terminal.desktop ~/.local/share/applications
