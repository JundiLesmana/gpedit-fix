# Enable Group Policy Editor (gpedit.msc) on Windows Home Edition

This repository provides a simple script to install and enable the Group Policy Editor (`gpedit.msc`) on editions of Windows that do not normally include this feature, such as **Windows 10 Home** and **Windows 11 Home**.

## Description

The Group Policy Editor is a powerful administration tool for managing various policies and settings on the Windows operating system. Unfortunately, Microsoft officially includes it only in Pro, Enterprise, and Education editions.

The batch script (`.bat`) in this repository uses the **Deployment Image Servicing and Management (DISM)**, a built-in Windows command-line tool, to install the Group Policy packages that already exist within the system but are not activated.

> **Warning:**
> This script makes changes to your system with Administrator privileges. Although it uses standard Microsoft commands and is widely used by the community, you proceed at your own risk. Always ensure you download scripts from a trusted source.

## How to Use

Follow the steps below to enable `gpedit.msc` on your computer.

1.  **Download the Script**
    * Click on the `gpeditWindows-fix.bat` file in this repository.
    * Click the **Raw** or **Download** button.
    * Right-click on the page and select **"Save as..."**.
    * Ensure the `Save as type` is set to **"All Files"** and save the file with the name `gpeditWindows-fix.bat`.

2.  **Run as Administrator**
    * Locate the file you just downloaded.
    * Right-click on the `gpeditWindows-fix.bat` file.
    * Select **"Run as administrator"**.

3.  **Wait for the Process to Complete**
    * A Command Prompt window will open and begin the installation process. This may take a few minutes.
    * Do not close the window until the process is finished and the message `Press any key to continue...` appears.
    * Press any key to close the window.

4.  **Verify the Installation**
    * To confirm that `gpedit.msc` was successfully installed, press the **Windows + R** keys.
    * Type `gpedit.msc` and press **Enter**.
    * If the Local Group Policy Editor window opens, the installation was successful. It is recommended to **restart your computer** after this process to ensure all policies can be applied correctly.

## A Safer Alternative

If you are not comfortable running scripts, you can use a safe, open-source third-party application called **[Policy Plus](https://github.com/Fleex255/PolicyPlus)**. This application provides the same interface as GPEdit without needing to install any system packages.

## License

This script is in the public domain and can be used freely. No specific license applies.
