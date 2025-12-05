#!/bin/bash
set -e

echo "Setting up Flutter..."

# Clone Flutter if not exists
if [ ! -d "flutter" ]; then
  git clone https://github.com/flutter/flutter.git -b stable --depth 1
fi

export PATH="$PATH:`pwd`/flutter/bin"

# Configure Flutter
flutter config --enable-web --no-analytics
flutter doctor

echo "Building app..."
flutter pub get
flutter build web --release

echo "Build complete!"