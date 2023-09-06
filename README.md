# Graded Project onBuilding CI-CD Pipeline Tool
## Overview of the project: Create a complete CI-CD pipeline using bash,python and crontabs.
### Here we divided the complete project into six TASK's
#### -Task 1 : *Set up a simple HTML Project*
- create an index file for the website.
- add some content to it (e.g., Hello, World!)
#### Task 2 : *Set Up a AWS EC2 instance with nginx*
- Configure an EC2 server with the given access in the aws portal.
- Install nginx in ec2 instance.
- check the status of nginx in instance using *sudo systemctl status nginx*.
- If it not running then start nginx service by running command *sudo systemctl start nginx*.
#### Task 3 : *Write a python Script to Check for New Commits*
- Here we Write a python script (autodeploy.py)  to check the commits, if it get any new commits in git repository it will automatically displays with the help of GIT API.
- Confidential details like git token , owner , repo details should be store in config.py file.
- Put the config.py file in .gitignore file.
- Then check the Git status whether the config.py file is visible or not.
- Push the Remaining files into the git hub.
- check the new commit is detected or not
- If new commit is generated it will be updated in Previous_commit_hash.txt.
- If we make any changes in code and push the code into gitHub again,then the new commit is updated in previous_commit_hash.txt
#### Task 4: *Write a Bash Script to Deploy the Code *
- write a script.sh shellscript which takes two arguments one is, Clone the code into the required repository,second one is, Restart the Nginx in server
- commands
                - *cd /var/www*
                - *git clone " https://github.com/mohanvedase/cicd_assignment.git"
                - *echo "the repository has been cloned successfull".git* #checks the gitclone is successfull or not
                - *sudo systemctl status nginx"*
- Check the status of nginx server and configure the nginx in 
                - *cd /etc/nginx/sites-enabled/default*
- change the root address from default file  to gitrepo index.html .
- This makes your index.html file will host the nginx server ,port = 80 . 
- We can check this by using *curl -v localhost* command on CLI 
#### Task 5: Set Up a Cron Job to run the python script
- Install cron package in ubuntu using *apt update && apt upgrade -y && sudo apt install cron -y*
- If they are installed check any cronjobs are working or not by using *crontab-l*.
- This will provide the list of cronjob to the particular users.
- To edit the current user’s cron job use *crontab –e*, which opens the editor specified under $EDITOR environment variable.
- Then write the cron job to run the code for every minute.
- "* * * * * /usr/bin/python3 /var/www/cicd_assignment/autodeploy.py > /var/www/cicd_assignment/py_output.log 2>&1"
- This cronjob result is updated in py_output.log
- Likewise write a another cronjob for commitid's and it is saved in sh_outputlog. 
#### Task 6: Test the Setup
- Now push the changes in GitHub Repository.
- The output log of both scripts will get updated automatically after few minutes.
- check the changes are automatically reflected on the nginx server website.
- If output files are updated succesfully in remote log files then your CI-CD Automation is completed.
-                                         *JAIHIND*      