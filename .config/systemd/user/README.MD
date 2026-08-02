# Guide to activate the custom timers and services (like the alert-battery.timer)

1. Enable the timer using the following command in the terminal:
    
    ```bash
    systemctl --user enable --now alert-battery.timer
    ```

> [!NOTE]
> Make sure to rename the file path in the alert-battery.service as it is hardcoded, if you have changed the username to something else other than 'Nearl' (since the home directory will be different in case of different username, plus i dont know of any other ways other than using absolute filepaths like this).
