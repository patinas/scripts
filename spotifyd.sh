#!/bin/sh
cd /home/user
sudo apt update
sudo apt install rustc cargo libasound2-dev libssl-dev pkg-config
git clone https://github.com/Spotifyd/spotifyd.git
cd spotifyd
cargo build --release
cp /root/other_scripts/spotifyd/contrib/spotifyd.service /etc/systemd/user/
sudo systemctl --user start spotifyd.service
sudo systemctl --user enable spotifyd.service
./target/release/spotifyd
