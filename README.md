# AI Is the Tool. You're Still the Expert.

A browser-based presentation built with Reveal.js 5.1.0. No build step, no API keys, no backend.

## Preview on your computer

1. Unzip the folder.
2. Double-click `index.html`. It opens in your browser and works offline.

If your browser blocks the speaker view when opened from a file, start a tiny local server instead:

- Mac: open Terminal in this folder and run `python3 -m http.server 8000`
- Then visit http://localhost:8000

## Controls

| Action | Keys |
|---|---|
| Next click or slide | Right arrow, Down arrow, Space, Page Down, or a clicker |
| Back | Left arrow, Up arrow, Page Up |
| Speaker view (notes, timer, next slide) | S |
| Full screen | F |
| Slide overview | Esc or O |
| Black screen pause | B or period |

You can also click the arrows in the bottom-right corner.

## Put it on GitHub Pages

1. Create a new repository and upload everything in this folder.
2. In the repo, go to Settings, then Pages.
3. Under "Build and deployment," pick "Deploy from a branch," choose `main` and `/ (root)`, and save.
4. Your deck will be live at `https://YOUR-USERNAME.github.io/REPO-NAME/` in a minute or two.

## Edit content

- Slide text and notes: `index.html`. Each slide is one `<section>`. Notes live in `<aside class="notes">`.
- Colors, type, and animation: `css/theme.css`. Colors are tokens at the top.
- Anything with `class="fragment"` appears on a click. `data-fragment-index` sets the order.

## Licenses

- Reveal.js: MIT (licenses/reveal-js-LICENSE.txt)
- Inter and Inter Tight: SIL Open Font License (licenses/)
- Illustrations: original SVG, made for this deck.
