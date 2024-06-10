# Shell script to setup venv and github repo

# Get Github username
read -p "Enter GitHub Username : " username

# Get Github email
read -p "Enter Github Email : " email

# Enter github repository link
read -p "Github Repository Link : " repo

# Configure github username and email
echo "Configuring Github username and email"
git config --global user.name $username
git config --global user.email $email

# Create a folder named repository
mkdir repository

# Clone github repo
echo "Cloning from github repository"
git clone $repo repository

# Copy requirements.txt to repository
cp requirements.txt repository

# Change to repository folder
cd repository

# Upgrade pip
python3 -m pip install --upgrade pip

# Install venv
python3 -m venv env

# Activate venv
source env/bin/activate

# install requirements.txt
pip install -r requirements.txt

# Open vscode in repository folder
code .
