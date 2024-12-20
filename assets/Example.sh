dependencies=""

# Check if required packages are installed, if not, install them
if command -v apt-get > /dev/null 2>&1; then
    for dep in $dependencies; do
        dpkg -s "$dep" > /dev/null 2>&1 || sudo apt-get install -y "$dep"
    done

elif command -v pacman > /dev/null 2>&1; then
    for dep in $dependencies; do
        pacman -Qi "$dep" > /dev/null 2>&1 || sudo pacman -S --noconfirm "$dep"
    done

elif command -v dnf > /dev/null 2>&1; then
    for dep in $dependencies; do
        dnf list installed "$dep" > /dev/null 2>&1 || sudo dnf install -y "$dep"
    done

elif command -v yum > /dev/null 2>&1; then
    for dep in $dependencies; do
        yum list installed "$dep" > /dev/null 2>&1 || sudo yum install -y "$dep"
    done

# MacOS / Linux support
elif command -v brew > /dev/null 2>&1; then
    for dep in $dependencies; do
        brew list "$dep" > /dev/null 2>&1 || sudo brew install "$dep"
    done

else
    echo "No supported package manager found. Please install the required packages manually."

    for dep in $dependencies; do
        echo "Please install: $dep"
    done

    exit 1
fi

# Check if executable 'Lib' exists and is executable
if [ -x ./Lib ]; then
    echo "Running executable..."
    ./Lib
else
    echo "'./Lib' not found or not executable. Please check the build process and try again."
    exit 1
fi
