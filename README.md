# FROGhamil
Bash script for taking the Overlap and Fock matrix from a logfile from Gaussian16

take_data.sh

First make it executable
chmod +X take_data.sh

Second copy it in your bin directory.
sudo cp take_data.sh /bin/take_data

Then use it in your directory when you have an output file .log from Gaussian, generate after a single point energy calculation with the keyword:
iop(3/33=1) iop(5/33=3)

Usage:
take_geom

At the end, you get a file name data_frog.log2 where there is the overlap and the Fock matrix, with the statements:
 *** Overlap ***
                 1             2             3             4             5
.
.
.
.
.
.
 Fock matrix (alpha):
                1             2             3             4             5
.
.
.
.
.
