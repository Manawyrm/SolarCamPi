# SolarCamPi

__Detailed information at https://tbspace.de/solarcampi.html__

BOM (PCB-RevC):  
https://tbspace.de/content/downloads/ibom_solarcampi_revc.html

Firmware (PCB-RevB/RevC):  
https://github.com/Manawyrm/SolarCamPi/tree/master/firmware

Schematic (PCB-RevC):  
https://github.com/Manawyrm/SolarCamPi/blob/master/pcb/solarcampi.pdf

Raspberry Pi can flash the AVR, using [avrdude with LinuxSPI support](https://github.com/kcuzner/avrdude) and _inverted_ GPIO 17 as reset.

avrdude.conf configuration entry: 
```
programmer 
  id       = "linuxspi";
  desc     = "Use Linux SPI device in /dev/spidev*";
  type     = "linuxspi";
  reset    = ~ 17;
  baudrate = 40000;
;
```

avrdude Usage to flash firmware:  
`avrdude -p m328p -P /dev/spidev0.0 -c linuxspi -U flash:w:firmware.hex`
  
avrdude Usage to set fuses:  
`avrdude -p m328p -P /dev/spidev0.0 -c linuxspi -U lfuse:w:0xe2:m -U hfuse:w:0xd9:m -U efuse:w:0xfd:m`

![Revision B PCB](https://tbspace.de/content/images/solarcampi2/IMG_6061.JPG)
