# Quick Wins

Usually the biggest movers, roughly in order of payoff. Change one, then re-measure.

1. **Images.** Convert to WebP or AVIF, resize to the display size, lazy-load below the fold. One real project went from about 3.9 MB of images to about 70 KB this way.
2. **Caching.** Long-lived immutable cache headers for versioned assets. Short or revalidated cache for HTML.
3. **Fonts.** Load fonts with a `<link>` and `preconnect`, not a CSS `@import`. Use `font-display: swap`. Subset to the characters you need.
4. **Third-party scripts.** Each one costs requests and main-thread time. Remove what is not earning its place. Self-host what you keep when the licence allows.
5. **Minify and compress.** Minify CSS and JS, serve with Brotli or gzip.
6. **Request count.** Vendor and bundle small libraries instead of pulling dozens of files from a CDN at runtime.
7. **Render path.** Inline critical CSS, defer non-critical scripts.
8. **Server.** Put a CDN in front of anything static. Use a region close to your users.

## Always re-measure

A fix that helps on a fast laptop can do nothing on a phone. Compare before and after on the same throttled profile.
