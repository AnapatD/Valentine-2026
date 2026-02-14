# 🚀 Quick Deployment Guide

## Option 1: Automated Setup Script (Easiest!)

1. **Run the setup script:**
   ```bash
   ./setup-deploy.sh
   ```
   
2. **Follow the prompts:**
   - Enter your GitHub username
   - Enter your repository name (or press Enter for default)
   
3. **Create the repository on GitHub:**
   - Go to https://github.com/new
   - Use the SAME name you entered in the script
   - Keep it public
   - DON'T initialize with README
   
4. **Push your code:**
   ```bash
   git push -u origin main
   ```
   
5. **Enable GitHub Pages:**
   - Go to your repo's Settings → Pages
   - Select "GitHub Actions" as the source
   
6. **Done!** Your site will be live in ~1 minute at:
   `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`

---

## Option 2: Manual Setup

### Step 1: Create GitHub Repository
1. Go to https://github.com/new
2. Name: `valentine-website`
3. Visibility: Public
4. Don't initialize with anything
5. Click "Create repository"

### Step 2: Update Configuration
Edit `vite.config.js` if your repo name is different:
```javascript
base: '/YOUR-REPO-NAME/'  // Change this line
```

### Step 3: Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/valentine-website.git
git push -u origin main
```

### Step 4: Enable GitHub Pages
1. Go to your repository on GitHub
2. Settings → Pages
3. Source: Select "GitHub Actions"
4. Wait for the workflow to complete

### Step 5: Access Your Site
`https://YOUR-USERNAME.github.io/valentine-website/`

---

## 🎨 Before Deploying - Personalization Tips

### Change the messages:
Edit `src/App.svelte`:
- Line 41: Change the question
- Lines 59-60: Change the celebration message

### Change colors:
- Question background: Line 72 in `src/App.svelte`
- Celebration background: Line 140 in `src/App.svelte`

---

## ⚠️ Troubleshooting

**Site shows 404?**
- Check that base path in `vite.config.js` matches your repo name
- Make sure GitHub Pages source is set to "GitHub Actions"

**Workflow failed?**
- Check the Actions tab for error details
- Ensure node_modules is in .gitignore (it already is)

**No button still clickable?**
- This is normal! The JavaScript makes it escape, working as intended

---

## 📱 Testing Locally First

Before deploying, test locally:
```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

---

**Need help?** Check the full README.md for more details!
