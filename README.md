linux_project
Open Source Software Audit

Student Information
Name: Shreya Mandaogade  
Registration Number: 24BCE10614  


Selected Software
Application: VLC Media Player  
Type: Multimedia Application  
License Type: GNU GPL / LGPL  


About the Project
This project is carried out as part of the Open Source Software course. 
The main objective is to study an open-source application (VLC Media Player) and
implement multiple Linux shell scripts to explore system-level operations, automation, 
and the principles of open-source development.


Description of Scripts

🔹 Script 1: System Information Summary
This script collects and displays essential system details including:
- Operating system name  
- Kernel version  
- Current logged-in user  
- Home directory path  
- System uptime  
- Current date and time  
- Information related to Linux licensing (GPL)


🔹 Script 2: Software Package Checker
This script verifies whether VLC is installed on the system.  

It provides:
- Installed version details  
- Package maintainer information  
- Brief description of the software  

Additionally, it uses a case structure to display messages related to open-source philosophy.


🔹 Script 3: Directory Audit Tool
This script examines key system directories such as:
`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`

For each directory, it shows:
- Access permissions  
- Owner and group details  
- Storage usage  

It also checks the VLC configuration folder (`~/.config/vlc`) if present.


🔹 Script 4: Log Monitoring Script
This script processes a log file and performs the following:
- Searches for a specific keyword (default: "error")  
- Counts the number of occurrences  
- Displays the last five matching entries  

It also handles cases where the log file may be empty.


🔹 Script 5: Open Source Statement Generator
This interactive script:
- Accepts user input (like name and favorite open-source tool)  
- Generates a customized open-source statement  
- Stores the output in a text file  
- Demonstrates string handling and file operations  

Steps to Execute Scripts

Script 1:
 chmod +x script1.sh
 ./script1.sh

Script 2:
 chmod +x script2.sh
 ./script2.sh

Script 3:
 chmod +x script3.sh
 ./script3.sh

Script 4:
 chmod +x script4.sh
 ./script4.sh /var/log/syslog error

Script 5:
 chmod +x script5.sh
 ./script5.sh

Requirements
Ensure your system has VLC installed before running the scripts:

```bash
sudo apt update
sudo apt install vlc
```

Conclusion
This assignment demonstrates the use of Linux shell scripting for performing real-world system tasks. By working with VLC Media Player as a case study, the project reflects the importance of open-source tools and how they can be efficiently utilized and analyzed using scripting techniques.



