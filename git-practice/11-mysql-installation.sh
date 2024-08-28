USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root privileges"
    exit 1  # Exit the script if not running as root
fi

# Check if Git is installed
dnf list installed git &> /dev/null

if [ $? -ne 0 ]; then
    echo "Git is not installed, going to install..."
    dnf install git -y
    if [ $? -ne 0 ]; then
        echo "Failed to install Git, check for errors"
        exit 1
    else
        echo "Git installed successfully"
    fi
else
    echo "Git is already installed"
fi

# Check if MySQL is installed
dnf list installed mysql &> /dev/null

if [ $? -ne 0 ]; then
    echo "MySQL is not installed, going to install..."
    dnf install mysql -y
    if [ $? -ne 0 ]; then
        echo "Failed to install MySQL, check for errors"
        exit 1
    else
        echo "MySQL installed successfully"
    fi
else
    echo "MySQL is already installed"
fi
