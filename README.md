# RARS Web

[RARS 1.6](https://github.com/TheThirdOne/rars), the RISC-V assembler and simulator, running directly in the browser. Nothing to install and no Java needed.

It works by running the original `rars.jar` in a WebAssembly JVM called [CheerpJ](https://cheerpj.com). The whole site is static, so GitHub Pages can host it.

## Put it online (GitHub Pages)

1. Create a new GitHub repository, for example `rars-web`, and push these files to the `main` branch.
2. In the repository, go to **Settings → Pages → Build and deployment**. Set the source to **Deploy from a branch**, pick `main` and `/ (root)`, then click **Save**.
3. After about a minute the site is live at `https://<your-username>.github.io/rars-web/`.

## Use it

| Action | How |
|---|---|
| Open an example | File → Open → `/str/examples` |
| Open your own file | Use the **Import .asm** button, then File → Open → `/str/import` |
| Save (stays in this browser) | File → Save as… → `/files/...` |
| Download to your computer | Save into `/files/downloads/` and the download starts automatically |

`/str` is read-only. To edit an example, use *Save as* to copy it into `/files` first.

## Add examples

Put `.asm` or `.s` files in `examples/`, then add their names to the `EXAMPLES` array in `index.html`.

## Run it locally

You need a web server. Opening `index.html` by double-clicking will not work.

```sh
python3 -m http.server 8080   # then open http://localhost:8080
```

## Licences

- RARS is MIT-licensed, © Benjamin Landers and the MARS authors (Pete Sanderson, Kenneth Vollmar).
- CheerpJ is © Leaning Technologies. It is free for personal projects and open-source (FOSS) projects. For other uses, see https://cheerpj.com/docs/licensing.
