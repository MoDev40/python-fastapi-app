# Write daemon
sudo nano /etc/systemd/system/python-fastapi-app.service

# Reload systemd to recognize your new service file
sudo systemctl daemon-reload

# Start the FastAPI service
sudo systemctl start python-fastapi-app.service
# Status the FastAPI service
sudo systemctl status python-fastapi-app.service
# Restart the FastAPI service
sudo systemctl restart python-fastapi-app.service

# Enable the service to launch automatically on boot
sudo systemctl enable python-fastapi-app.service
