# mdall

Terminal Markdown renderer with Mermaid diagrams and LaTeX formulas. Includes a live preview daemon for yazi/ranger.

## Install

```bash
brew install liangquanzhou/tap/mdall
```

Or manually:

```bash
git clone https://github.com/liangquanzhou/mdall.git
cd mdall && make install
```

## Commands

### `mdall` - Render Markdown with Mermaid + LaTeX

Renders Mermaid code blocks to PNG images, block LaTeX (`$$...$$`) to PNG via pdflatex, and inline LaTeX (`$...$`) to Unicode.

```bash
mdall document.md            # render and display
mdall document.md --pager    # render with pager
mdall document.md --keep     # keep cache for debugging
```

**Dependencies:** [mcat](https://github.com/Beastwick18/mcat), [@mermaid-js/mermaid-cli](https://github.com/mermaid-js/mermaid-cli) (mmdc), pdflatex (optional, for block LaTeX), ImageMagick (optional, for LaTeX PNG)

### `md-preview` - Live Markdown preview daemon

Launches a browser-based Markdown preview via nvim + [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim). Singleton mode ensures only one preview runs at a time. Includes an auto-shutdown watchdog.

```bash
md-preview document.md       # start preview in browser
md-preview stop              # stop preview
md-preview --stop-all        # stop all instances
```

**Dependencies:** nvim with markdown-preview.nvim plugin

## License

MIT
