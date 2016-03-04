# Raspberry pi server backup
Automatic commits tests from raspberry pi
Located in ~/dev/

## Add a ssh key and commit

'''sh
ssh-keygen -t rsa -b 4096 -C "loic.norgeot@gmail.com"
ssh -T git@github.com
'''

Then, add the generated key to github keys

## Automatic commits

To create a new repository:
'''sh
git init
git remote add origin git@github.com:loicNorgeot/raspberry_pi.git
'''

To autommatically commit:
'''sh
git add *
git commit -m "first commit"
git push -u origin master
'''
