if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Torch696/AUTO-FILTER-BOT.git /AUTO-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AUTO-FILTER-BOT
fi
cd /AUTO-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
