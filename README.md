# Web Performance Testing Skill

A Claude Code skill that walks an AI (or you) through planning, running and reporting a performance test on a website or web app. It covers what to measure, which kind of test fits, what "good" looks like, and how to write up the result so the next person can compare against it.

## What it covers

| Topic | File |
| --- | --- |
| The overall method and rules | `skills/web-performance-testing/SKILL.md` |
| The five test types and when to use each | `references/test-types.md` |
| Scoping a test before you start | `references/scoping.md` |
| Perceived-speed thresholds and budgets | `references/thresholds.md` |
| Quick wins that usually move the numbers | `references/quick-wins.md` |
| Report template | `references/report-template.md` |

## Install

```bash
git clone https://github.com/rifatnewajrazin/web-performance-testing-skill.git
mkdir -p ~/.claude/skills
cp -r web-performance-testing-skill/skills/web-performance-testing ~/.claude/skills/
```

Then ask: "run a performance check on https://example.com using the web-performance-testing skill".

## Example

`examples/quick-check.sh` is a small script that records time to first byte, total load time and page weight for a URL, so you have a baseline in one command.

```bash
bash examples/quick-check.sh https://example.com
```

It uses `curl` only. It is a quick baseline, not a replacement for a browser based tool like Lighthouse or WebPageTest.

## When a full load test is not needed

A static site on a CDN does not need load, stress, capacity or endurance tests. The skill says so and focuses on perceived load time, per-page weight and mobile behaviour. Those are the numbers visitors actually feel.

## Sources

The method follows ideas from [DNSstuff's website and web app performance testing guidelines](https://www.dnsstuff.com/website-web-app-performance-testing-optimization-guidelines), extended with what I learned running these checks on real client sites. The text is my own.

## Contributing

Pull requests welcome. See `CONTRIBUTING.md`.

## License

MIT. Written by [Rifat Newaj Razin](https://github.com/rifatnewajrazin).
