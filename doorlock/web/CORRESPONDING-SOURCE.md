# doorlock NUI — Corresponding Source (GPL-3.0)

The files in **`doorlock/web/build/`** are compiled/object code for the doorlock admin UI.

## Where to get the source

**Corresponding Source** for this UI is the **`web/`** tree from upstream **ox_doorlock**, matching this resource version:

| Field | Value |
|-------|--------|
| Upstream project | [communityox/ox_doorlock](https://github.com/communityox/ox_doorlock) |
| Tag / version | **v1.22.0** (see `doorlock/fxmanifest.lua`) |
| Source path | `web/` (not only `web/build/`) |
| License | GPL-3.0-or-later |

Clone example:

```bash
git clone --depth 1 --branch v1.22.0 https://github.com/communityox/ox_doorlock.git
# Corresponding Source for the UI: ox_doorlock/web/
```

Rebuild the UI using upstream instructions (typically `pnpm` / `npm` in `web/`, then deploy `web/build/` into this resource).

## What this repo includes

| Included | Not included in ox_enhanced |
|----------|----------------------------|
| `doorlock/web/build/*` (built UI) | `doorlock/web/src/` (UI dev source) |
| All `doorlock/*.lua`, SQL, locales, audio | — |

W2F-specific **non-UI** changes (markers, config, etc.) are in this repo under `doorlock/client/`, `doorlock/config.lua`, etc.

## Written offer

If you received only object code and need a written offer for source under GPL-3.0 §6(b), see **[WRITTEN-OFFER.txt](./WRITTEN-OFFER.txt)**.
