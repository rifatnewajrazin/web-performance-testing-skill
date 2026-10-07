# Thresholds

People feel perceived load time more than any raw metric. Rough human limits:

| Time | What it feels like |
| --- | --- |
| Under 100 ms | Instant |
| 100 to 300 ms | A delay you notice |
| About 1 s | The limit before a train of thought breaks |
| About 2 s | What most people expect a page to take |
| About 3 s | Around 40 percent of visitors give up past here |
| About 10 s | Attention is gone |

## Starting budgets

Adjust to your audience and network.

| Measure | Target |
| --- | --- |
| Time to first byte | under 200 ms from a nearby region |
| Largest Contentful Paint | under 2.5 s on a mid-range phone on 4G |
| Cumulative Layout Shift | under 0.1 |
| Interaction to Next Paint | under 200 ms |
| Home page weight | under 500 KB for content sites |
| Requests on first load | as few as you can, ideally under 30 |

Slow connections change the picture. If your visitors are mostly on mobile data in a region with slow networks, test with throttling and treat the budget as a hard limit.
