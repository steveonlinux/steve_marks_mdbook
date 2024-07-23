# Raspberry Pi at Home 🥧 (2024-07-22)

![](../img/hold_pi.jpg =700x900 center)

*[Let's Take a Trip To Pie Country](https://youtu.be/EF4m4h15qEA)*


## What is an SBC?

A SBC or *single board computer* is a computer...on a single board. All the components, CPU, RAM, flash, i/o, on a single PCB or *printed circuit board*. They're usually really small and relatively inexpensive. They're commonly used for small hobbyist projects because they often have buses one can just shove raw wires into, they're small enough to cram into whatever you want, and have relatively low power usages. They are commonly associated with [*edge computing*](https://en.wikipedia.org/wiki/Edge_computing) and [IoT](https://en.wikipedia.org/wiki/Internet_of_things) or *internet of things*. These are two interrelated concepts involving smart fridges and toasters. Thermostats, air quality sensors, and home security systems. Washers and dryers. Even [soldering irons](https://pine64.com/product/pinecil-smart-mini-portable-soldering-iron/) and your girlfriend's [hair iron](https://glamoriser.com/product/glamorisor-bluetooth-smart-straightener/). Devices containing tiny computers connected to the internet, sometimes storing information and doing computations on a user's local infrastructure. 

## Buying Options
There are many brands to choose from:

| Manufacturer          | Flagship Board             | Processor                   | Architecture       | RAM Options       | Storage Options    | Connectivity                                       | Price Range        |
|-----------------------|----------------------------|-----------------------------|--------------------|-------------------|--------------------|----------------------------------------------------|--------------------|
| Raspberry Pi          | Raspberry Pi 5             | Broadcom BCM2712            | ARM Cortex-A76     | 4GB, 8GB          | microSD, USB 3.0   | Wi-Fi 6, Bluetooth 5.0, Gigabit Ethernet           | $60 - $80          |
| ASUS                  | Tinker Board 2S            | Rockchip RK3399             | ARM Cortex-A72/A53 | 2GB, 4GB          | 16GB eMMC, microSD | Wi-Fi 5, Bluetooth 4.2, Gigabit Ethernet           | $85 - $100         |
| NVIDIA                | Jetson Nano 2GB            | NVIDIA Maxwell GPU          | ARM Cortex-A57     | 2GB               | microSD            | Wi-Fi (with USB adapter), Bluetooth (with USB)     | $59                |
| ODROID                | ODROID-N2+                 | Amlogic S922X               | ARM Cortex-A73/A53 | 2GB, 4GB          | microSD, eMMC      | Gigabit Ethernet, Wi-Fi (with adapter), Bluetooth  | $79 - $90          |
| Rock Pi               | Rock Pi 4C+                | Rockchip RK3399             | ARM Cortex-A72/A53 | 4GB               | microSD, eMMC      | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet           | $69.99             |
| Banana Pi             | Banana Pi M5               | Amlogic S905X3              | ARM Cortex-A55     | 4GB               | microSD, eMMC      | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet           | $64 - $75          |
| Pine64                | Pine A64+                  | Allwinner A64               | ARM Cortex-A53     | 2GB, 4GB          | microSD            | Wi-Fi (with USB adapter), Bluetooth (with USB)     | $29.99 - $39.99    |
| BeagleBoard           | BeagleBone AI-64           | TI AM5729                   | ARM Cortex-A15     | 4GB               | microSD, eMMC      | Wi-Fi, Bluetooth, Gigabit Ethernet                 | $100 - $125        |
| UDOO                  | UDOO Bolt V8               | AMD Ryzen V1605B            | x86-64             | 8GB, 16GB         | M.2 NVMe, SATA     | Wi-Fi, Bluetooth, Gigabit Ethernet                 | $389 - $409        |
| Khadas                | Khadas VIM3 Pro            | Amlogic A311D               | ARM Cortex-A73/A53 | 4GB               | eMMC, microSD      | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet           | $139.99            |
| Libre Computer        | AML-S905X-CC (Le Potato)   | Amlogic S905X               | ARM Cortex-A53     | 1GB, 2GB, 4GB     | microSD            | Wi-Fi (with USB adapter), Bluetooth (with USB)     | $35 - $55          |
| FriendlyARM           | NanoPi M4V2                | Rockchip RK3399             | ARM Cortex-A72/A53 | 2GB, 4GB          | microSD, eMMC      | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet           | $65 - $75          |
| Radxa                 | Rock Pi 3 Model A          | Rockchip RK3588             | ARM Cortex-A76/A55 | 2GB, 4GB, 8GB     | eMMC, microSD      | Wi-Fi 6, Bluetooth 5.0, Gigabit Ethernet           | $99 - $150         |
| Orange Pi             | Orange Pi 5B               | Rockchip RK3588S            | ARM Cortex-A76/A55 | 4GB, 8GB, 16GB    | eMMC, microSD      | Wi-Fi 6, Bluetooth 5.0, Gigabit Ethernet           | $89 - $129         |


However, the market is dominated by the Raspberry Pi. It is the de facto option and is synonymous with the term SBC. There are a number of models to choose from: 

| Model                  | Release Date | Processor            | Architecture  | RAM Options         | Storage Options | Connectivity                                                                 | Price Range  |
|------------------------|--------------|----------------------|---------------|---------------------|-----------------|-----------------------------------------------------------------------------|--------------|
| Raspberry Pi Model B   | 2012         | Broadcom BCM2835     | ARM11         | 256MB               | SD Card         | 100 Mbps Ethernet, 2x USB 2.0                                              | $25 - $35    |
| Raspberry Pi Model A   | 2013         | Broadcom BCM2835     | ARM11         | 256MB, 512MB        | SD Card         | 1x USB 2.0                                                                 | $20 - $25    |
| Raspberry Pi Model B+  | 2014         | Broadcom BCM2835     | ARM11         | 512MB               | microSD         | 100 Mbps Ethernet, 4x USB 2.0                                              | $25 - $35    |
| Raspberry Pi Model A+  | 2014         | Broadcom BCM2835     | ARM11         | 256MB, 512MB        | microSD         | 1x USB 2.0                                                                 | $20 - $25    |
| Raspberry Pi 2 Model B | 2015         | Broadcom BCM2836     | ARM Cortex-A7 | 1GB                 | microSD         | 100 Mbps Ethernet, 4x USB 2.0                                              | $35          |
| Raspberry Pi Zero      | 2015         | Broadcom BCM2835     | ARM11         | 512MB               | microSD         | 1x mini HDMI, 1x micro USB                                                 | $5           |
| Raspberry Pi 3 Model B | 2016         | Broadcom BCM2837     | ARM Cortex-A53| 1GB                 | microSD         | Wi-Fi 4, Bluetooth 4.1, 100 Mbps Ethernet, 4x USB 2.0                      | $35          |
| Raspberry Pi Zero W    | 2017         | Broadcom BCM2835     | ARM11         | 512MB               | microSD         | Wi-Fi 4, Bluetooth 4.1, 1x mini HDMI, 1x micro USB                         | $10          |
| Raspberry Pi 3 Model A+| 2018         | Broadcom BCM2837B0   | ARM Cortex-A53| 512MB               | microSD         | Wi-Fi 4, Bluetooth 4.2, 1x USB 2.0                                         | $25          |
| Raspberry Pi 3 Model B+| 2018         | Broadcom BCM2837B0   | ARM Cortex-A53| 1GB                 | microSD         | Wi-Fi 4, Bluetooth 4.2, Gigabit Ethernet (300 Mbps), 4x USB 2.0            | $35          |
| Raspberry Pi 4 Model B | 2019         | Broadcom BCM2711     | ARM Cortex-A72| 1GB, 2GB, 4GB, 8GB  | microSD         | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet, 2x USB 3.0, 2x USB 2.0           | $35 - $75    |
| Raspberry Pi 400       | 2020         | Broadcom BCM2711     | ARM Cortex-A72| 4GB                 | microSD         | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet, 3x USB 3.0, 1x USB 2.0           | $70          |
| Raspberry Pi Pico      | 2021         | RP2040               | ARM Cortex-M0+| 264KB SRAM          | 2MB Flash       | 26x GPIO, 2x SPI, 2x I2C, 2x UART, 3x ADC                                   | $4           |
| Raspberry Pi Pico W    | 2022         | RP2040               | ARM Cortex-M0+| 264KB SRAM          | 2MB Flash       | Wi-Fi 4, 26x GPIO, 2x SPI, 2x I2C, 2x UART, 3x ADC                         | $6           |
| Raspberry Pi 4 Model A | 2022         | Broadcom BCM2711     | ARM Cortex-A72| 2GB                 | microSD         | Wi-Fi 5, Bluetooth 5.0, Gigabit Ethernet, 1x USB 3.0, 1x USB 2.0           | $25          |
| Raspberry Pi Zero 2 W  | 2021         | Broadcom BCM2710A1   | ARM Cortex-A53| 512MB               | microSD         | Wi-Fi 4, Bluetooth 4.2, 1x mini HDMI, 1x micro USB                         | $15          |
| Raspberry Pi 5         | 2023         | Broadcom BCM2712     | ARM Cortex-A76| 4GB, 8GB            | microSD, USB 3.0 | Wi-Fi 6, Bluetooth 5.0, Gigabit Ethernet, 2x USB 3.0, 2x USB 2.0           | $60 - $80    |



## Why Raspberry Pi?
It being the de facto option it has the most *support*. The Pi project has: a Linux distribution, hardware /software support, devices such as sensors and monitors, and forums. And the massive slice of the market Pi has means third party support is substantial as well. There are countless add on boards or HATs and enclosures that can be had. No matter the fact that competing SBCs may have comparable or even surpassing performance capabilities, many will choose Raspberry Pi due the overwhelming support. The greatest con is the availability. Raspberry Pis have historically been extremely difficult to come by. Especially considering memory shortages, and global pandemic, and a chip shortage over the last few years, the 4th model was essentially impossible to get, especially at retail. There are entire [databases](https://rpilocator.com/) dedicated to tracking retailer stocks. However, the release of the 5th model placated most and made obtaining at a reasonable price possible.

## What I Use Them For
Again there are a plethora of way to utilize a Pi due to the sheer amount of openness and attachable boards and devices. I personally use them in my homelab. I use them to host a variety of services, usually through containerization such as Docker. My Raspberry Pi 4s and 5s serve:
* DNS through [PiHole](https://pi-hole.net/)
* Dynamic DNS through [ddclient](https://ddclient.net/) and [DuckDNS](https://www.duckdns.org/)
* VPNs through [PiVPN](https://www.pivpn.io/)
* IP KVM using the [PiKVM board](https://pikvm.org/)
* File sharing through [Samba](https://www.samba.org/)
* Media through [Plex](https://www.plex.tv/)
* Password management through [Passbolt](https://www.passbolt.com/)
* Site hosting through Apache and Nginx

![pi box](../img/pi_box.jpg =700x500 center)

*A freshly arrived piKVM*

![](../img/pi_kvm.jpg =700x500 center)

*That piKVM running booted off of a USB*

I've used containers to run things like this as often as possible. Many utilities are available as container images on [Dockerhub](https://hub.docker.com/), however mileage may vary as ARM image are less common. I prefer containers due to the contained nature of the binaries and configurations. Everything can be contained in a single [docker-compose](https://docs.docker.com/compose/) file, which is very convenient. 
In the past I've even had my Pis clustered using Kubernetes, but that was more for educational purposes. 
I've also experimented with different Linux distributions on Pis. There is of course Pi OS, the officially supported one. However,the major distributions have ARM versions that run on Pis and there are others specifically designed for Pis:

| Distribution         | Description                                                                                          | Website                               |
|----------------------|------------------------------------------------------------------------------------------------------|---------------------------------------|
| Raspberry Pi OS      | Official operating system for Raspberry Pi, based on Debian. Includes a range of educational tools. | [raspberrypi.org](https://www.raspberrypi.org/software/) |
| Ubuntu               | Popular Linux distribution with an official version for Raspberry Pi.                               | [ubuntu.com](https://ubuntu.com/download/raspberry-pi)    |
| Manjaro ARM          | Arch-based distribution optimized for ARM devices, including Raspberry Pi.                           | [manjaro.org](https://manjaro.org/download/#raspberry-pi) |
| Kali Linux           | Security-focused distribution with a version for Raspberry Pi.                                       | [kali.org](https://www.kali.org/get-kali/#kali-arm)        |
| RetroPie             | Distribution focused on retro gaming emulation for Raspberry Pi.                                      | [retropie.org.uk](https://retropie.org.uk/download/)       |
| LibreELEC            | Minimalist distribution for running Kodi media center on Raspberry Pi.                               | [libreelec.tv](https://libreelec.tv/downloads/)            |
| Pi-hole              | Network-wide ad blocker that runs on Raspberry Pi.                                                   | [pi-hole.net](https://pi-hole.net)                         |
| OSMC                 | Open Source Media Center based on Debian, designed for Raspberry Pi.                                 | [osmc.tv](https://osmc.tv/download/)                       |
| RISC OS              | Lightweight operating system originally developed by Acorn Computers, available for Raspberry Pi.    | [riscosopen.org](https://www.riscosopen.org/content/downloads/raspberry-pi) |
| Gentoo               | Highly customizable distribution with an ARM version for Raspberry Pi.                               | [gentoo.org](https://www.gentoo.org/downloads/)            |
| Arch Linux ARM       | Lightweight and flexible distribution for ARM devices, including Raspberry Pi.                       | [archlinuxarm.org](https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-4) |
| DietPi               | Extremely lightweight Debian-based distribution with a small footprint for Raspberry Pi.             | [dietpi.com](https://dietpi.com/)                          |
| Twister OS           | Distribution that aims to provide a true desktop computing experience on Raspberry Pi.               | [twisteros.com](https://twisteros.com/download.html)       |
| Raspbian XP, Raspbian 95 | Custom distributions based on Raspberry Pi OS with themes mimicking Windows XP and Windows 95. | [pi-apps.io](https://pi-apps.io/raspbian-xp/)              |
| BalenaOS             | Container-based distribution optimized for IoT devices, including Raspberry Pi.                      | [balena.io](https://www.balena.io/os/)                     |
| LineageOS            | Android-based distribution available for Raspberry Pi.                                               | [konstakang.com](https://konstakang.com/devices/rpi4/LineageOS17.1/) |
| Recalbox             | Distribution focused on retro gaming emulation, similar to RetroPie.                                 | [recalbox.com](https://www.recalbox.com/)                  |
| Lakka                | Lightweight distribution focused on retro gaming, using RetroArch emulator.                          | [lakka.tv](https://www.lakka.tv/get/)                      |
| MotionEyeOS          | Distribution focused on turning Raspberry Pi into a video surveillance system.                       | [motioneyeos.org](https://motioneyeos.org/)                |

*For instance installing and running Gentoo on one was... an experience.*
<br> <br>
All in all, Pis are a great way to learn and an even better way to run services at home at a low monetary cost and low power cost.

