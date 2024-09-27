#************ Installing and configuring RabbitMQ ***********************#

import os
import subprocess
import sys
def run_command(command):
   """Run a shell command and return the output."""
   try:
       result = subprocess.run(command, check=True, text=True, capture_output=True)
       print(result.stdout)
   except subprocess.CalledProcessError as e:
       print(f"Error occurred: {e.stderr}")
       sys.exit(1)
def install_rabbitmq():
   """Install RabbitMQ using apt-get for Debian/Ubuntu."""
   print("Updating package list...")
   run_command(["sudo", "apt-get", "update"])
   print("Installing RabbitMQ...")
   run_command(["sudo", "apt-get", "install", "-y", "rabbitmq-server"])
def start_rabbitmq():
   """Start the RabbitMQ service."""
   print("Starting RabbitMQ service...")
   run_command(["sudo", "systemctl", "start", "rabbitmq-server"])
def enable_rabbitmq():
   """Enable RabbitMQ service to start on boot."""
   print("Enabling RabbitMQ service to start on boot...")
   run_command(["sudo", "systemctl", "enable", "rabbitmq-server"])
def configure_rabbitmq():
   """Configure RabbitMQ (e.g., setting up a user)."""
   print("Configuring RabbitMQ...")
   run_command(["sudo", "rabbitmqctl", "add_user", "myuser", "mypassword"])
   run_command(["sudo", "rabbitmqctl", "set_user_tags", "myuser", "administrator"])
   run_command(["sudo", "rabbitmqctl", "set_permissions", "-p", "/", "myuser", ".*", ".*", ".*"])
def main():
   install_rabbitmq()
   start_rabbitmq()
   enable_rabbitmq()
   configure_rabbitmq()
   print("RabbitMQ installation and configuration completed successfully.")
if __name__ == "__main__":
   main()