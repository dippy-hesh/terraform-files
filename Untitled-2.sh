#!/bin/bash
# Update package list
apt update -y

# Install Apache web server
apt -y install apache2

# Create a custom HTML page with blue background
echo '<!DOCTYPE html>
<html>
<head>
    <title>Apache Web Server</title>
    <style>
        body {
            background-color: blue;
            color: white;
            text-align: center;
            font-size: 24px;
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>
    <h1>Hello world from $(hostname)</h1>
    <p>IP Address: $(hostname -I)</p>
</body>
</html>' > /var/www/html/index.html

# Restart Apache to apply changes
systemctl restart apache2

# Optional: Enable Apache to start on boot
systemctl enable apache2

# Output success message
echo "Apache installed and configured with custom index.html."