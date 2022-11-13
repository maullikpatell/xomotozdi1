if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/maullikpatell/xomotozdi.git /xomotozdi
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /xomotozdi
fi
cd /xomotozdi
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
