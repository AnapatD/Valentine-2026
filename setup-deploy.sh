#!/bin/bash

echo "🎯 Valentine Website - GitHub Deployment Setup"
echo "=============================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📝 Initializing git repository..."
    git init
    git branch -M main
fi

# Get GitHub username
echo "Please enter your GitHub username:"
read github_username

# Get repository name
echo ""
echo "Please enter your repository name (default: valentine-website):"
read repo_name
repo_name=${repo_name:-valentine-website}

# Update vite.config.js with correct base path
echo ""
echo "📝 Updating vite.config.js with repository name..."
sed -i "s|base: '/valentine-website/'|base: '/$repo_name/'|g" vite.config.js

# Add all files
echo ""
echo "📦 Adding files to git..."
git add .

# Commit
echo ""
echo "💾 Creating initial commit..."
git commit -m "Initial commit - Valentine website"

# Add remote
echo ""
echo "🔗 Adding GitHub remote..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$github_username/$repo_name.git"

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub named '$repo_name'"
echo "   👉 https://github.com/new"
echo ""
echo "2. Push your code:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to: https://github.com/$github_username/$repo_name/settings/pages"
echo "   - Under 'Build and deployment', select 'GitHub Actions' as the source"
echo ""
echo "4. Your site will be live at:"
echo "   https://$github_username.github.io/$repo_name/"
echo ""
echo "💕 Happy Valentine's Day! 💕"
