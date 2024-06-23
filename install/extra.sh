# installs devbox for dev work
if ! command -v devbox >/dev/null; then
    /bin/bash -c "$(curl -fsSL https://get.jetify.com/devbox)"
else 
    echo "devbox is already installed"
fi