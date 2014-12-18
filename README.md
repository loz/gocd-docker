A simple script to bring up a go-cd setup

Build the images as per names in the start.sh

Ensure there is a .ssh credential for github in the following places:

    /root/deploykey/gocd-server/.ssh    owner/grp  102:104
    /root/deploykey/gocd-agent/.ssh     owner/grp  root:root
