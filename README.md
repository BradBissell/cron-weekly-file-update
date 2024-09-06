Currently, if your workflow does not include creating or updating local files on at least a weekly basis, IT Support needs to manually liveshare to check to ensure Google Drive is effectively syncing.

These steps are to setup a weekly file update on your desktop to force Google Drive to sync to confirm Google Drive is working and avoid IT Support manual checks.

### Step 1: Clone repo
clone this repo with:
```sh
git clone link/to/repo/...

cd cron-weekly-file-update

### Step 2: Make the Script Executable

Make the update script executable by running:

```sh
chmod +x force_update.sh
```

### Step 2: Add a Cron Job

Edit your crontab file to schedule the script to run once a week. Open your crontab file in edit mode:

```sh
crontab -e
```

Add the following line to the crontab file to schedule the script to run every Monday at 10 AM:

```sh
0 10 * * 1 path/to/repo/force_update.sh
```
**Note**: replace `path/tp/repo/` with the current working directory.  In shell you can obtain this with the `pwd` command.

Save and close the crontab file.

### Step 3: Verify the Cron Job

To verify that the cron job has been added, you can list your current cron jobs with:

```sh
crontab -l
```

You should see the line you added:

```sh
0 10 * * 1 path/to/repo/force_update.sh
```



This setup will ensure that the timestamp file on your desktop is updated every week with the current date and time.  This will help automatically confirm that google drive is effectively syncing even if your workflow does not regularly involve creating or updating local files.
