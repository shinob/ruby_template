# SETUP

```
cd /etc/systemd/system/
sudo ln -s /var/www/ruby_template/etc/ruby_template.service
sudo systemctl daemon-reload
sudo systemctl enable --now myapp
```