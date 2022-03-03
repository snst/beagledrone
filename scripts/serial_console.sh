which picocom
if [ ! $? ]; then
sudo apt install picocom
fi 

#sudo screen /dev/ttyUSB0 115200
sudo picocom -b 115200 /dev/ttyUSB0
