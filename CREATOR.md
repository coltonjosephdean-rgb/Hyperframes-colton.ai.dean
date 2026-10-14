<!-- HYPERFRAMES_SETUP_INCOMPLETE -->
<!-- ^ Leave this marker until /setup is complete. It tells Claude to greet a new user
     and run onboarding before any video work. The setup skill removes it when finished. -->

# Creator Profile — _(name TBD)_

Your identity, positioning, and workflow for video work in this workspace. **Read this before every video task** (alongside `PREFERENCES.md`). Use it for on-screen text, niche framing, and workflow assumptions.

> 🚧 **Setup in progress (2026-10-14).** Profile + brand set; still waiting on name/handles and reference videos (setup Step 3).

## Identity

- **Name on-screen**: _(your display name)_
- **Instagram**: _(@handle or "—")_
- **TikTok**: _(handle or "—")_
- **YouTube**: _(handle or "—")_
- **X / other**: _(handle or "—")_

When putting handles on-screen (lower-thirds, outros, end-cards), use the platform-appropriate handle.

## Platform priority

**Long-form VSL (video sales letter)** for landing pages / paid ads. Default canvas: **16:9 landscape, 1920×1080, 30fps**. This overrides the workspace's 9:16 short-form defaults — scale caption sizes, safe areas and graphic layouts for landscape.

## Content niche

**Agency / B2B service** — direct-response VSLs selling a done-for-you service to business owners. Visuals should build trust and credibility (proof, numbers, process, case studies) as much as energy.

## On-camera mix

**Face-cam.** Talking head to camera is the anchor of every VSL; B-roll, graphics and full-screen explainers cut away from it and return.

- **Face-cam** → use `/short-form-video` face-mode choreography (BOTTOM / FULLSCREEN modes).
- **Faceless** → motion graphics + AI TTS narration (`npx hyperframes tts`) or screen-recordings.

## Workflow — division of labor

**The user provides RAW, unedited footage + the VSL script. The assistant does the full edit** — including cutting: remove dead air, flubs, retakes and long pauses (use the script to pick the best take), then build captions, zooms, B-roll, motion graphics and SFX on top. The script is the source of truth for wording; the edited A-roll timing is the source of truth for visuals.

(Template modes, for reference:)

- **You record + pre-edit your own speaking video** → it's the source of truth; the assistant builds the visual layer on top and does NOT cut your audio, remove pauses, or change your pacing.
- **You build from scratch with the assistant** → motion graphics, TTS narration, screen-recordings assembled together.

## Brand identity

Dark + blue accent: bg `#0a0a0f`, surface `#1a1a23`, accent `#3b82f6`, text `#ffffff`, display font Inter. See `assets/brand-tokens.css`. Logo: not provided yet.

## Inspiration creators

_(Studied creators live in [`_reference/creator-library/`](_reference/creator-library/). Paste a TikTok / Instagram Reel / YouTube Short URL and run `/study-creator <url>` to add one. At build time, name a creator — "build this like @handle" — to apply their style fingerprint to the visual layer. /setup seeds your first few here.)_

## Posting cadence & length defaults

- _Cadence_: per-campaign (VSLs, not a posting schedule)
- _Default length_: dictated by the VSL script (typically 3–20 min). Optional cut-downs for ads on request.
- _Default fps_: 30 (matches TikTok + Instagram defaults).

## Project slug convention

**Topic-only, kebab-case** (e.g. `agency-vsl-v1`). Each video gets a new subfolder under `video-projects/<topic-slug>/`. Examples: `ai-agents-intro`, `prompting-101`, `tool-of-the-week`. Keep slugs short and descriptive — scannable at a glance in `ls video-projects/`.

---

*This file is updated as your creator profile evolves. Major changes (new handles, platform shifts, workflow changes) can be edited here directly.*
