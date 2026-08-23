# 🦆 Ducking Around - Alpha PWA

A fun, social mobile game inspired by Club Penguin. Create and customize duck avatars, play mini-games, collect coins, and interact with other players!

## 🚀 Quick Start

### Local Testing (Pick One)

**Python 3:**
```bash
python -m http.server 8000
# Visit http://localhost:8000
```

**Node.js:**
```bash
npx http-server
```

**VS Code:**
- Install "Live Server" extension
- Right-click index.html → "Open with Live Server"

### Deploy to Web (30 seconds)

**Vercel (Recommended):**
1. Push files to GitHub
2. Go to vercel.com → Import project
3. Deploy! ✨

**Netlify:**
1. Push files to GitHub
2. Go to netlify.com → New site from Git
3. Connect repo → Deploy! ✨

**GitHub Pages:**
1. Create GitHub repo
2. Upload files
3. Settings → Pages → Deploy from main branch

See [DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md) for detailed instructions.

## 📱 Install as App

### Desktop
- Click install icon in address bar (Chrome/Edge)
- Or: Menu → "Install app"

### iOS
- Safari: Share → "Add to Home Screen"

### Android
- Chrome: Menu (•••) → "Install app"

## 🎮 How to Play

### Create Your Duck
1. Name your duck
2. Pick a color (6 options)
3. Choose a pattern (solid, dots, stripes)

### Earn Coins
- **Coin Flip**: 25-50 coins
- **Duck Race**: 30-60 coins
- **Corn Catch**: 40-80 coins

### Customize
- Buy accessories in the shop
- See your duck's full outfit in profile
- Collect rare items

### Socialize
- Wave at other players
- Meet ducks in the pond
- Check out their stats

## ✨ Features

✅ **Create & Customize** - 6 colors + 3 patterns + 6 accessories
✅ **Mini-Games** - 3 fun games to earn coins
✅ **Offline** - Works without internet
✅ **Installable** - Add to home screen
✅ **Auto-Save** - Progress saved automatically
✅ **Fast** - Lightning quick load time
✅ **Mobile Optimized** - Perfect on any device

## 🎯 Game Stats

Start with: **100 coins**

**Shop Prices:**
- Accessory: 60-150 coins
- Save up for better items!

**Games Per Session:** Unlimited
**Session Duration:** 5-15 minutes average

## 🔧 Customize the Game

### Add New Mini-Game
Edit `index.html` - search for `shopItems` array:
```javascript
const shopItems = [
    { id: 1, name: 'Top Hat', price: 100, emoji: '🎩' },
    // Add your items here
];
```

### Change Colors/Patterns
Modify duck creation in JavaScript section

### Adjust Coin Rewards
Find `rewards` object in `playGame()` function

## 📊 Files

- `index.html` - Full game (all-in-one file)
- `manifest.json` - PWA configuration
- `service-worker.js` - Offline support
- `DEPLOYMENT_GUIDE.md` - Detailed deployment
- `README.md` - This file

## 🛠️ Tech Stack

- **Vanilla JavaScript** - No frameworks
- **HTML5 + CSS3** - Modern, responsive
- **Service Workers** - Offline first
- **LocalStorage** - Game saves

## ✅ Tested On

- Chrome (Desktop & Mobile)
- Firefox (Desktop & Mobile)
- Safari (iOS & macOS)
- Edge
- Opera

## 🚧 Alpha Features

**Working:**
- ✅ Character creation
- ✅ Duck customization
- ✅ 3 mini-games
- ✅ Shop system
- ✅ Player lobby
- ✅ Progress saving
- ✅ Offline support

**Coming Soon:**
- 🔜 Real-time multiplayer
- 🔜 Chat system
- 🔜 More mini-games (20+)
- 🔜 Seasonal events
- 🔜 Housing/decorating
- 🔜 Trading system
- 🔜 Leaderboards
- 🔜 Daily quests

## 🐛 Known Issues

- Multiplayer is simulated (local only in alpha)
- Limited accessories in shop
- No real-time player interactions
- Mobile installation banner appears at 5s delay

## 💡 Tips for Best Experience

1. **First Time?** Start with lobby to meet NPCs
2. **Earn Fast?** Play Corn Catch (highest rewards)
3. **Save Progress?** Visits are auto-saved
4. **Customize More?** Check shop frequently for restocks
5. **Install App?** Much faster when installed

## 📞 Feedback & Suggestions

- Game too easy/hard? Adjust coin rewards
- Want more items? Add to shop array
- Need new games? Fork and contribute!

## 📄 License

Open source - modify and share freely

## 🎉 Enjoy!

Start playing now! Create your duck and explore Duckville! 🦆

---

**Version:** Alpha 1.0
**Status:** Active Development
**Platform:** Web + Mobile (iOS & Android)
