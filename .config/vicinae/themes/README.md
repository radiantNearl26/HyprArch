# Guide to set up softlink between the pywal.toml and the cache file, so that the theme gets updated when pywal is run.

1. Create a softlink between the pywal.toml and the cache file. This can be done using the following command in the terminal:

    ```bash
    ln -s ~/.cache/wal/colors.json ~/.config/vicinae/themes/pywal.toml
    ```

> [!NOTE]
> Make sure to restart the server (vicinae server) if you manually run pywal, so that the theme gets updated. Not required when using the theme switcher script, as it restarts the server automatically after running pywal along with other applications.
