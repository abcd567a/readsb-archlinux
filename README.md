# readsb-archlinux


### readsb for Arch Linux & Arch Linux Arm

```
git clone https://github.com/abcd567a/readsb-archlinux.git

cd readsb-archlinux

makepkg -si

```

The cloned directory contains following three files

- PKGBUILD
- foo.install
- README.md

Give command `makepkg -si `

Above command will run the PKGBUILD script which will: 

1. Check for conflicts with existing other versions of dump1090
2. Check Build tools needed (git, make, gcc, pkgconf, binutils, and fakeroot), and will offer to install missing tools [Yes/no]. 
3. Offer to install dependency rtl-sdr, [Yes/no]
4. Build package `readsb-*.pkg.tar.xz` or `readsb-*.pkg.tar.zst`
5. Offer to install the above package [Yes/no]

The above package can be install later also by following command:
```
cd dump1090-fa-arch 
sudo pacman -U readsb-*.pkg.tar.*
```
### AFTER INSTALLATION, REBOOT COMPUTER / RPI.

**To check status:**
```
sudo systemctl status readsb
```

**To restart:**
```
sudo systemctl restart readsb
```
To edit config, edit following file
`sudo nano /etc/default/readsb  `   </br>

After completing & saving config changes, restart readsb
`sudo systemctl restart dump1090-fa `  </br>

</br></br>
