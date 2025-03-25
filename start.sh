if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Declared-Pen/File-Share-Bot/File-Share-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Share-Bot
fi
cd /File-Share-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
