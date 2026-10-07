# Test Types

| Test | Question it answers | When to use it |
| --- | --- | --- |
| **Performance** | How fast and stable is it under normal use? | Always. This is the baseline that everything else compares to. |
| **Load** | What happens with realistic and above-realistic traffic? | Before launches, campaigns and seasonal peaks. Finds memory leaks, buffer overflows and slowdowns. |
| **Stress** | Where does it break, and how does it fail? | Before you depend on it. You want a graceful failure: no data loss, no security hole, quick recovery. |
| **Capacity** | Can it carry a specific number of users or transactions at once? | Sizing servers, plans and infrastructure. |
| **Endurance** (soak) | Does it hold up over hours or days? | Catches slow memory leaks and gradual decay that short tests miss. |

## Quick guide

- Static site on a CDN: performance test only. The others are not applicable.
- Content site with a database: performance and load.
- Shop, booking or login-heavy app: all five, with load and stress run on a staging copy.
- Planning a big campaign: load and capacity at the expected peak.
