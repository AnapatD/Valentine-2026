# 💕 Valentine Website - Will You Be My Valentine? 💕

A fun, interactive Valentine's Day website built with Svelte featuring an escaping "No" button and fireworks celebration!

## ✨ Features

- 💖 Interactive question with Yes/No buttons
- 🏃 The "No" button escapes when you try to hover or click it
- 🎆 Beautiful fireworks animation when "Yes" is clicked
- 📱 Fully responsive design
- 💝 Romantic gradient backgrounds and animations

## 🚀 Quick Start (Local Development)

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR-USERNAME/valentine-website.git
   cd valentine-website
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Run the development server**
   ```bash
   npm run dev
   ```

4. **Open your browser**
   Navigate to `http://localhost:5173` to see your site!

## 📦 Deployment to GitHub Pages

### Automated Deployment (Recommended)

The repository includes a GitHub Actions workflow that automatically deploys your site when you push to the main branch.

**Steps:**

1. **Create a new repository on GitHub**
   - Go to https://github.com/new
   - Name it `valentine-website` (or any name you prefer)
   - Make it public or private
   - Do NOT initialize with README, .gitignore, or license

2. **Update the base path in `vite.config.js`**
   
   If your repository name is different from `valentine-website`, update line 6:
   ```javascript
   base: '/YOUR-REPO-NAME/'
   ```

3. **Initialize git and push to GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit - Valentine website"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
   git push -u origin main
   ```

4. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Click **Settings** > **Pages**
   - Under "Build and deployment":
     - Source: Select **GitHub Actions**
   - Save the changes

5. **Wait for deployment**
   - Go to the **Actions** tab in your repository
   - You'll see the "Deploy to GitHub Pages" workflow running
   - Once complete (green checkmark), your site is live!

6. **Access your website**
   Your site will be available at:
   ```
   https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/
   ```

### Manual Deployment

If you prefer to deploy manually:

1. **Build the project**
   ```bash
   npm run build
   ```

2. **The `dist` folder contains your built site**
   - Upload the contents of `dist` to any static hosting service
   - Or use GitHub Pages manual deployment

## 🎨 Customization

### Change Colors
Edit the gradient backgrounds in `src/App.svelte`:
- Question screen: `.container` class
- Celebration screen: `.celebration` class

### Modify Text
Update the text in `src/App.svelte`:
- Question: Line with "Will you be my Valentine?"
- Celebration: Lines with "Good choice!" and "I love youuuu!!!!"

### Adjust Button Behavior
Modify the `escapeNo()` function to change how the "No" button moves.

## 🛠️ Built With

- [Svelte](https://svelte.dev/) - Reactive UI framework
- [Vite](https://vitejs.dev/) - Build tool
- [GitHub Actions](https://github.com/features/actions) - CI/CD
- [GitHub Pages](https://pages.github.com/) - Hosting

## 📝 License

Feel free to use this for your Valentine! 💕

## 💡 Tips

- Share the link with your Valentine!
- The "No" button can't actually be clicked - it's designed to leave only "Yes" as the option 😉
- The fireworks animation starts automatically after clicking "Yes"

---

Made with 💖 for Valentine's Day!
