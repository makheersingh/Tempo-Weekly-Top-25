# Weekly Top 25 (Tempo)

Files: index.html (the site), data.json (the weekly lists), config.js (watchlist settings), setup.sql (one-time database setup).

## 1. Put it online (free)
Netlify Drop: go to app.netlify.com/drop, drag this whole folder in, and you get a public link. Rename the site or add your own domain in Site settings. Cloudflare Pages and GitHub Pages work the same way.

## 2. Turn on shared watchlists (one time)
1. Create a free project at supabase.com.
2. SQL Editor > New query > paste everything from setup.sql > Run.
3. Project Settings > API. Copy the Project URL and the "anon public" key.
4. Paste both into config.js, save, and upload the folder to your host again.

Until config.js is filled in, watchlists save only in each person's own browser.
Anyone with the link can add or remove watchlist entries. There is no sign-in.

## 3. Every Thursday
Send Claude the new export JSON along with the current data.json. Claude returns a new data.json. Upload just that file to your host. The link stays the same; email it with a note that the new week is up.
