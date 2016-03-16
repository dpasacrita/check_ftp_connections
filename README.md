# check_ftp_connections
A batch file that checks the number of connections to coresrvr.exe.
This script is compatible with Nagios, as was it's original intention.

Make sure that you increase the timeout if you use it with nagios though, the script needs about 20 seconds to run usually.
