# Scoping a Test

Answer these before you measure anything.

## Purpose

- What is the site or app for: payments, content, a service, a portfolio?
- What exactly are you trying to learn: user count, transaction volume, response time?
- What do users expect for speed?
- How long do you have, and which tools and environments can you use?

## Analysis checklist

- Acceptable time between clicks.
- Expected session length.
- Acceptable page load time.
- Existing baselines.
- Where the volume data comes from (analytics, server logs).

## Principles

1. **Keep the test environment current.** An outdated test setup makes root causes slow to find and the results less trustworthy.
2. **Use real numbers.** Base the load on actual peak traffic, for example peak-hour orders times expected growth plus about 20 percent.
3. **Watch both sides.** Track client-side and server-side traffic at peak and off-peak times to spot imbalances.
4. **Cover the whole app.** As many pages and page-to-page paths as you can, down to component load times.
5. **See where time goes.** Time per page and per activity shows where effort pays off.
6. **Spread the load.** Simulate users from several regions and networks, not one location.
7. **Pair load time with volume.** Measure both at every stage.
8. **Mine live logs.** Real request patterns beat invented ones.
9. **Use the right tool.** Repeatable synthetic monitoring, log matching, device emulation and full-stack visibility beat ad hoc scripts.
