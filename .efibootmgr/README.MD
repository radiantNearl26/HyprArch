# Guide to add GRUB bootentry to UEFI firmware after Windows installation

This guide will show you how to add a GRUB boot entry to your UEFI firmware after installing Windows. This is necessary because Windows may overwrite the existing GRUB boot entry, preventing you from booting into your Linux distribution.

1. **Boot in Arch Live USB**

    Start your computer using an Arch Linux live USB and mount the root, home and boot (efi) partitions of your installed Arch Linux system.

    ```bash
    mount /dev/sdXn /mnt  # Replace sdXn with your root partition
    mount /dev/sdXn /mnt/home  # Replace sdXn with your home partition
    mount /dev/sdXn /mnt/boot/efi  # Replace sdXn with your EFI partition
    arch-chroot /mnt # Switch to the installed system
    ```

2. **Download older efibootmgr (skip if version 17 is already installed)**

    Set SigLevel in /etc/pacman.conf to Never (SigLevel=Never) and install the older version of efibootmgr (17-2). And also add the line "IgnorePkg = efibootmgr" to /etc/pacman.conf to prevent it from being updated in the future.

    ```bash
    pacman -U https://archive.archlinux.org/packages/e/efibootmgr/efibootmgr-17-2-x86_64.pkg.tar.zst # install this before adding IgnorePkg in the config file
    ```

3. **Add GRUB boot entry**
    
    Create a new GRUB entry using grub-install. Then, use efibootmgr to delete old boot entries, set the active status of nescessary boot entries to active, linux one as the first boot option, and adjust the boot order.

    ```bash
    grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ARCH-LINUX
    efibootmgr -b XXXX -a  # Set the active status of the new GRUB entry anf the Windows one
    efibootmgr -b XXXX -B  # Delete old boot entry (linux one)
    efibootmgr -o XXXX,YYYY  # Set the boot order
    efibootmgr -n XXXX  # Set the next boot option
    ```

4. **Reboot and test**

    Reboot your computer and enter the BIOS settings. Go to the "NVME BBS Priorities" in "Boot" tab and assign the 'Boot Option #1' and 'Boot Option #2' to the GRUB and Windows entries respectively. Save the changes and exit the BIOS.


> [!NOTE]
> - Create the bootentry using efibootmgr if grub-install fails for some reason.
> - Check the version of efibootmgr using `efibootmgr -V` in step 2.
> - Replace XXXX and YYYY with the actual boot entry numbers for your GRUB and Windows entries.
