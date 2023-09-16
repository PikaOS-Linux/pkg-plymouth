# Get Logos
wget https://github.com/PikaOS-Linux/pika-branding/raw/main/logos/pika-simple-small-nv.png -O ./plymouth/debian/local/bgrt-fallback.png
wget https://github.com/PikaOS-Linux/pika-branding/raw/main/logos/pika-logo-text-dark-nv.png -O ./plymouth/debian/local/pika-logo.png
# Clone Upstream
cd ./plymouth

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
