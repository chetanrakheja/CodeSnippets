
## Commands to connect Android device wirelessly
```cmd
adb devices
adb tcpip 5555
adb connect 192.168.0.100
adb devices
```
## Explaination

`adb devices` This command is used to list all the Android devices connected to your computer via USB. When you execute this command, ADB will scan for connected devices and display a list of their unique device identifiers (referred to as "device serial numbers") along with their status.

`adb tcpip 5555` This command sets up the ADB server on the Android device to listen for connections over TCP/IP on port 5555. By default, ADB communicates with the device over USB, but this command enables network connectivity, allowing you to connect to the device wirelessly.

`adb connect 192.168.0.100`  This command establishes a wireless connection between your computer and the Android device with the IP address 192.168.0.100. It instructs ADB to connect to the device using the specified IP address and port (5555 in this case).
This is local IP of your Android Device

`adb devices` This command is executed again to list all the connected Android devices. After running the adb connect command, if the connection is successful, you should see the device with its device identifier and status listed in the output.

## Command to Disconnect Devices
`adb desconnect` command to disconnect devices connected to your system

### Note
First Connect your device using usb then execute the command only then it will work
