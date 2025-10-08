#!/bin/bash
# Demo: Linux file permissions

# Create a test file
touch testfile.txt

# Show default permissions
ls -l testfile.txt

# Change owner to current user (if not already)
sudo chown $USER testfile.txt

# Add read/write for owner, read for group, none for others
chmod 640 testfile.txt

# Show updated permissions
ls -l testfile.txt

# Add execute permission for owner
chmod u+x testfile.txt

# Final permissions
ls -l testfile.txt
