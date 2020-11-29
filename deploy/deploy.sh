!#/bin/bash

SITE=smallaxe
USER=ryan
DATABASE=strapi


cd /home/$USER/$SITE/frontend
sudo npm run build

cd /home/$USER/$SITE/backend
sudo NODE_ENV=production npm run build

cd /home/$USER
sudo pm2 start ecosystem.config.js

mysql -u $USER -p $DATABASE < /home/$USER/$SITE/data.sql

