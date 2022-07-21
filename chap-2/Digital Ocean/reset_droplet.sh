#Reset droplet after python installation via miniconda
#CAUTION: This script might delete also notebooks and other files that have been created after the python installation

rm -rf /root/miniconda3/
rm -rf /root/.jupyter
rm -rf /root/notebook
head -n -2 /root/.bashrc > /root/.bashrc_new
mv /root/.bashrc_new /root/.bashrc
rm install.sh
pkill -f jupyter

# show Jupyter Notebook instances
# jupyter notebook list
# ... or ...
# ps aux | grep 'jupyter'

# kill all Jupyter Notebook instances
# pkill -f jupyter