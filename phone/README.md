This is for using iSH on my phone. 

### Mount iOS Documents Files
mount -t ios . /mnt

### Mount iSH Settings and Add Dracula

mount -t real "$\(cat /proc/ish/documents\)" /mnt
git clone https://github.com/dracula/ish.git
