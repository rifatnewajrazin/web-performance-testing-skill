---
name: web-performance-testing
description: Plan, run and report a performance test on a website or web app. Covers scoping, choosing between performance, load, stress, capacity and endurance tests, perceived-load thresholds, quick fixes and a report template. Use when asked to test, audit, benchmark or speed up a site, or to check whether it can handle traffic.
---

# Web Performance Testing

## Steps

1. **Scope first.** Read `references/scoping.md`. Write down what you are measuring, for whom, and what counts as good. Do not start measuring before this.
2. **Pick the tests.** Read `references/test-types.md`. A static site on a CDN usually needs only a performance check. Do not run load or stress tests against a site you do not own or have permission to test.
3. **Get a baseline.** Record time to first byte, load time, page weight and request count on a real mobile profile and on desktop. `examples/quick-check.sh` gives a rough baseline in seconds.
4. **Judge against thresholds.** Use `references/thresholds.md`.
5. **Fix in order of payoff.** Use `references/quick-wins.md`. Change one thing at a time and re-measure.
6. **Report.** Fill `references/report-template.md`. Include the before and after numbers, what you tested, and what you did not.

## Rules

- Base load figures on real traffic numbers, not guesses. Peak hour volume plus expected growth plus about 20 percent headroom is a sound starting point.
- Measure load time and user volume together. They depend on each other.
- Test from more than one place and on a slow phone connection, not only a fast office line.
- Use a proper tool for anything repeatable (Lighthouse, WebPageTest, k6, Locust) instead of one-off scripts.
- Only test systems you own or have written permission to test. Load and stress tests can look like an attack.
- Never run a stress test against production without warning the owner.
- Say plainly what was measured and what was not. Mark each test type "done", "not applicable, because ..." or "not done".

## Output

End with a short summary: the worst problem, the biggest win available, and the exact numbers before and after.
