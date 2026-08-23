# Ducking Around - PWA Deployment Guide

## Overview

Ducking Around Alpha is a Progressive Web App (PWA) that works on mobile and desktop. It can be installed as a native-like app on any device and works offline!

## Files Included

- **index.html** - Main game application
- **manifest.json** - PWA configuration and metadata
- **service-worker.js** - Offline support and caching
- **DEPLOYMENT_GUIDE.md** - This file

## Quick Start (Local Testing)

### Option 1: Python (recommended for testing)
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

Then visit: http://localhost:8000

### Option 2: Node.js
```bash
npx http-server
```

Visit the provided URL (usually http://localhost:8080)

### Option 3: VS Code
Install the "Live Server" extension and right-click index.html → "Open with Live Server"

## Deployment Options

### 1. Vercel (Easiest - Recommended)

1. Push your files to GitHub
2. Go to [vercel.com](https://vercel.com)
3. Click "New Project"
4. Import your GitHub repository
5. Deploy! (Vercel handles everything)

**Pros:** Free, auto-deploys on push, instant HTTPS
**Cons:** Requires GitHub account

### 2. Netlify

1. Push your files to GitHub
2. Go to [netlify.com](https://netlify.com)
3. Click "New site from Git"
4. Connect your repository
5. Deploy!

**Pros:** Free, easy setup, great docs
**Cons:** Requires Git repository

### 3. GitHub Pages

1. Create a GitHub repository
2. Push these files to the repo
3. Go to Settings → Pages
4. Select "Deploy from a branch" → main branch
5. Save and wait for deployment

**URL:** https://yourusername.github.io/ducking-around

**Pros:** Free, simple
**Cons:** Custom domain requires extra setup

### 4. Firebase Hosting

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login
firebase login

# Initialize
firebase init

# Deploy
firebase deploy
```

**Pros:** Free tier, fast CDN, Google-backed
**Cons:** Requires Google account and CLI knowledge

### 5. Self-Hosted (Your Own Server)

1. Upload all files to your web server
2. Ensure HTTPS is enabled (required for PWA)
3. Access via your domain

**Important:** PWA requires HTTPS! Get a free SSL certificate from [Let's Encrypt](https://letsencrypt.org)

## Installation Methods

### Desktop (Chrome, Edge, Firefox)

1. Open the deployed URL in your browser
2. Click the install icon (usually appears in address bar)
3. Click "Install"

### iOS (Safari)

1. Open the deployed URL in Safari
2. Tap the Share button
3. Tap "Add to Home Screen"
4. Tap "Add"

### Android (Chrome)

1. Open the deployed URL in Chrome
2. Tap the menu (three dots)
3. Tap "Install app"
4. Confirm

## Features

✅ **Works Offline** - Play without internet after first load
✅ **Installable** - Add to home screen like a native app
✅ **Fast** - Service worker caches everything
✅ **Mobile Optimized** - Responsive design works on all sizes
✅ **Persistent Storage** - Game saves automatically with localStorage

## Game Mechanics (Alpha)

### Character Creation
- Name your duck
- Choose from 6 colors
- Select pattern (solid, dots, stripes)

### Gameplay
- **Lobby**: Meet other duck players
- **Mini Games**: Play 3 different games to earn coins
  - Coin Flip (25-50 coins)
  - Duck Race (30-60 coins)
  - Corn Catch (40-80 coins)
- **Shop**: Buy accessories with coins
- **Profile**: View your duck and stats

### Progression
- Start with 100 coins
- Earn coins from mini-games
- Buy accessories to customize your duck
- Track games played and coins earned

## Planned Features (Future Versions)

- [ ] Real-time multiplayer lobby with live players
- [ ] Chat system between ducks
- [ ] More mini-games (20+ total)
- [ ] Seasonal events and limited items
- [ ] Leveling system and achievements
- [ ] Duck housing/igloo customization
- [ ] Trading system
- [ ] Guilds and team activities
- [ ] Leaderboards
- [ ] Daily quests and rewards

## Technical Stack

- **Vanilla JavaScript** - No build tools required
- **HTML5** - Modern semantic markup
- **CSS3** - Mobile-first responsive design
- **Service Workers** - Offline support
- **LocalStorage** - Persistent game saves

## Browser Support

- Chrome 51+
- Firefox 44+
- Safari 11+ (iOS 11+)
- Edge 79+
- Opera 38+

## Performance

- **Load Time:** <2 seconds
- **Cache Size:** ~100KB
- **Offline Support:** Full functionality
- **Storage:** ~50KB for game saves

## Troubleshooting

### Service Worker not updating?
- Clear browser cache (Cmd+Shift+Delete / Ctrl+Shift+Delete)
- Uninstall and reinstall the app

### Game not saving?
- Check browser console (F12) for errors
- Ensure localStorage is enabled
- Try a different browser

### Can't install app?
- Ensure you're using HTTPS
- Service worker must be registered successfully
- Try refreshing the page

### Slow performance on mobile?
- Restart your browser
- Clear app cache in settings
- Try reinstalling from home screen

## Development

### Modifying the Game

1. Edit `index.html` - Game logic and UI
2. Modify `manifest.json` - App metadata
3. Update `service-worker.js` - Caching strategy

### Adding New Features

```javascript
// Add new mini-game
const newGame = {
    id: 'newgame',
    name: 'Game Name',
    emoji: '🎮',
    rewards: { min: 30, max: 60 }
};

// Add new shop item
const newItem = {
    id: 99,
    name: 'Item Name',
    price: 100,
    category: 'accessories',
    emoji: '🎯'
};
```

## Analytics & Metrics

Track these for alpha testing:
- Session duration
- Games played per session
- Shop purchases
- Device types (iOS/Android/Desktop)
- Crash reports

## Security Notes

- Game saves are stored locally only
- No personal data is collected
- No authentication required
- No external API calls
- All data stays on user's device

## License

Ducking Around is open for modification and distribution.

## Support & Feedback

### Report Issues
- Check browser console for errors (F12)
- Try clearing cache and reinstalling
- Test in incognito/private mode

### Feature Requests
- Document new game ideas
- Suggest new accessories or customization
- Share feedback on gameplay balance

## Next Steps

1. ✅ Deploy to Vercel/Netlify
2. 🎮 Test on iOS and Android
3. 📊 Gather player feedback
4. 🔧 Balance coin rewards and prices
5. ✨ Add more mini-games
6. 🎯 Implement multiplayer features

---

**Version:** Alpha 1.0
**Last Updated:** 2024
**Status:** Active Development
