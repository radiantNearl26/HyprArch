# Guide to symlink scripts from this directory to $PATH

This guide will help you create symlinks for all scripts in your `$HOME/.scripts` directory so they can be run from anywhere in your terminal.

1. **Make sure your shell scripts are inside `$HOME/.scripts`:**

   First, verify that the `.sh` files you want to link are present in your scripts directory.

   ```bash
   ls $HOME/.scripts/*.sh
   ```

2. **Create symlinks in `/usr/local/bin`:**

   Next, run the following command to symlink all `.sh` files from `$HOME/.scripts` into `/usr/local/bin`.

   ```bash
   ln -s $HOME/.scripts/*.sh /usr/local/bin
   ```

3. **Verify that the links were created:**

   Check that the new symlinks are now visible in `/usr/local/bin`.

   ```bash
   ls -l /usr/local/bin/
   ```

4. **Run your scripts from anywhere:**

   You can now execute your scripts using their names from any directory.


> [!NOTE]
> If `/usr/local/bin` requires elevated permissions on your system, run the symlink command with `sudo`.
> If a link already exists, remove it first and re-run the command.
> Ensure that the scripts have adequate permissions (after reinstallation of OS or something) using `chmod +x *.sh`.
