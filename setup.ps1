# Flutter Setup and Build Script for EnterChat

Write-Host "EnterChat - Setup and Build" -ForegroundColor Green
Write-Host "============================" -ForegroundColor Green

cd c:\VisionQuantech-Projects\enterchat

# Check Flutter
Write-Host "`nChecking Flutter installation..." -ForegroundColor Cyan
flutter --version

# Clean previous builds
Write-Host "`nCleaning previous builds..." -ForegroundColor Cyan
flutter clean

# Get dependencies
Write-Host "`nGetting dependencies..." -ForegroundColor Cyan
flutter pub get

# Run code generation for Riverpod
Write-Host "`nGenerating Riverpod code..." -ForegroundColor Cyan
flutter pub run build_runner build --delete-conflicting-outputs

# Analyze code
Write-Host "`nAnalyzing code..." -ForegroundColor Cyan
flutter analyze

Write-Host "`n✓ EnterChat setup complete!" -ForegroundColor Green
Write-Host "`nAvailable commands:" -ForegroundColor Yellow
Write-Host "  flutter run -d chrome        # Run in web browser" -ForegroundColor White
Write-Host "  flutter build apk           # Build Android APK (requires Android SDK)" -ForegroundColor White
Write-Host "  flutter build web           # Build for web" -ForegroundColor White
Write-Host "`nNote: Android build requires Android SDK for Kotlin compilation" -ForegroundColor Yellow
