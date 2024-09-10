#!/bin/bash

while true; do
    echo "-----SERVICE-SCRIPT-MENU-----"
    echo "1. Start a service."
    echo "2. Stop a service."
    echo "3. Restart a service."
    echo "4. Enable a service."
    echo "5. Check a service’s status."
    echo "6. Clear screen."
    echo "7. Exit script."
    read -p "Please choose an option by entering its number: " option

    case $option in
        1)
            read -p "Enter the service name to start: " service
            systemctl start $service
            if [ $? -eq 0 ]; then
                echo "Service $service started successfully."
            else
                echo "Failed to start $service."
            fi
            ;;
        2)
            read -p "Enter the service name to stop: " service
            systemctl stop $service
            if [ $? -eq 0 ]; then
                echo "Service $service stopped successfully."
            else
                echo "Failed to stop $service."
            fi
            ;;
        3)
            read -p "Enter the service name to restart: " service
            systemctl restart $service
            if [ $? -eq 0 ]; then
                echo "Service $service restarted successfully."
            else
                echo "Failed to restart $service."
            fi
            ;;
        4)
            read -p "Enter the service name to enable: " service
            systemctl enable $service
            if [ $? -eq 0 ]; then
                echo "Service $service enabled successfully."
            else
                echo "Failed to enable $service."
            fi
            ;;
        5)
            read -p "Enter the service name to check its status: " service
            systemctl status $service
            ;;
        6)
            clear
            ;;
        7)
            echo "Exiting script."
            exit 0
            ;;
        *)
            echo "Invalid option. Please enter a number between 1 and 7."
            ;;
    esac
done
