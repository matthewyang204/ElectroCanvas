#!/bin/bash
echo "Downloading..."
cd ~/Downloads
curl -LO https://github.com/matthewyang204/ELectroCanvas/releases/download/1.0/Install.ElectroCanvas.1.0.dmg
echo "Installing with sudo, enter password if asked..."
hdiutil attach ~/Downloads/Install.ElectroCanvas.1.0.dmg
sudo cp -R /Volumes/ElectroCanvas/ElectroCanvas\ Bundle /Applications/ElectroCanvas\ Bundle
echo "Installation complete, cleaning up..."
hdiutil detach /Volumes/ElectroCanvas
sudo rm -R ~/Downloads/Install.ElectroCanvas.1.0.dmg
echo "done"