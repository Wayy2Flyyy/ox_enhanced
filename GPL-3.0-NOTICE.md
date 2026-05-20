# GPL-3.0 compliance notice (ox_enhanced)

This repository is a **W2F / Wayy2Flyyy** enhancement pack. It contains modified works based on [Overextended](https://github.com/overextended) / [communityox](https://github.com/communityox) projects, which are licensed under the **GNU General Public License v3.0 (GPL-3.0)**.

Redistributing this pack (whole or in part) requires you to comply with GPL-3.0, including passing on license terms and making **Corresponding Source** available for any object code you convey.

Full license text: [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html). Copies are also in each resource’s `LICENSE` file where applicable.

---

## Components and source availability

| Resource | Based on | License | Corresponding Source in this repo |
|----------|----------|---------|-----------------------------------|
| `inventory/` | [communityox/ox_inventory](https://github.com/communityox/ox_inventory) | GPL-3.0 | **Yes** — Lua + `inventory/web/src/` + built `inventory/web/build/` |
| `target/` | [communityox/ox_target](https://github.com/communityox/ox_target) | GPL-3.0 | **Yes** — Lua + `target/web/` (HTML/CSS/JS) |
| `doorlock/` | [communityox/ox_doorlock](https://github.com/communityox/ox_doorlock) v1.22.0 | GPL-3.0 | **Partial** — Lua, SQL, locales, audio; **UI see below** |
| `w2f_adminspawner/` | W2F original (uses inventory APIs) | GPL-3.0 | **Yes** — all `.lua` in resource |

**On your FiveM server**, rename `inventory` → `ox_inventory`, `target` → `ox_target`, `doorlock` → `ox_doorlock` under `resources/[ox]/` (see README). Repo paths above use unprefixed folder names.

**Dependencies (not part of this repo):** `ox_lib` and `oxmysql` remain separate upstream projects under their own licenses.

---

## doorlock UI — Corresponding Source not bundled here

This repository includes **`doorlock/web/build/`** (minified NUI) but does **not** ship the doorlock UI **development source** (e.g. React/Vite `web/src/`). That matches the upstream release model for ox_doorlock.

Under **GPL-3.0 §6**, recipients of the built UI must still be able to obtain Corresponding Source. For the doorlock UI, use:

1. **Preferred:** [communityox/ox_doorlock](https://github.com/communityox/ox_doorlock) — tag **`v1.22.0`**, directory **`web/`** (source + build scripts).  
   Build: see upstream `web/README` or release workflow; output goes to `web/build/`.

2. **Written offer (GPL-3.0 §6(b)):** See [`doorlock/web/WRITTEN-OFFER.txt`](doorlock/web/WRITTEN-OFFER.txt).

3. **Summary:** [`doorlock/web/CORRESPONDING-SOURCE.md`](doorlock/web/CORRESPONDING-SOURCE.md).

W2F changes in `doorlock/` outside the UI (e.g. `client/marker.lua`, config) are included as Lua source in this repository.

---

## Modified works

Modified files are marked by project history and by W2F authorship in manifests (author **Wayy2Flyyy**). Original copyrights remain with Overextended / communityox authors per GPL-3.0 §4.

When you redistribute:

- Keep `LICENSE` / this notice with the software.
- Do not remove copyright or license notices from upstream files.
- If you convey `doorlock/web/build/`, you must also comply with the UI source obligations above.

---

## Contact

For Corresponding Source requests under the written offer: open an issue or contact the maintainer listed on [Wayy2Flyyy/ox_enhanced](https://github.com/Wayy2Flyyy/ox_enhanced).
