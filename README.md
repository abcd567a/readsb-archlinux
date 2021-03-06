# readsb-archlinux


### readsb for Arch Linux & Arch Linux Arm
**This PKGBUILD script uses Source code at: https://github.com/wiedehopf/readsb**

## To install give following commands  </br>
```
git clone https://github.com/abcd567a/readsb-archlinux.git

cd readsb-archlinux

makepkg -si

```

The cloned directory contains following three files

- PKGBUILD
- foo.install
- README.md

The command `makepkg -si ` will run the PKGBUILD script which will: 

1. Check for conflicts with existing other versions of dump1090
2. Check Build tools needed (git, make, gcc, pkgconf, binutils, and fakeroot), and will offer to install missing tools [Yes/no]. 
3. Offer to install dependency rtl-sdr, [Yes/no]
4. Build package `readsb-*.pkg.tar.xz` or `readsb-*.pkg.tar.zst`
5. Offer to install the above package [Yes/no]

If you say "no" to install the package (item 5 above), then the built package can be install later by following command:
```
cd readsb-archlinux 
sudo pacman -U readsb-*.pkg.tar.*
```


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

After completing & saving config changes, restart readsb </br>
`sudo systemctl restart readsb `  </br>

</br></br>
