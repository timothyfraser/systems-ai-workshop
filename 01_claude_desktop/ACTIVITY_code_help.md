# 🎴 ACTIVITY · Clean Up & Explain Code

> ⏱️ **5 minutes** · 🎯 **Hand Claude a messy snippet and get back clean code you actually understand.**

Claude Desktop is a great *explainer*: it rewrites code **and** tells you what changed and why — useful when the code isn't yours or you're learning a new library.

**Do this:** paste into Claude Desktop:

```
Refactor this for readability — clear names, a docstring, and a brief comment per step —
then explain what each line does and what it computes. Keep behavior identical.

import pandas as pd
def f(p):
 d=pd.read_csv(p);x=d[d['value']>0];y=x.groupby('group')['value'].mean();return y
```

✅ **Done when:** you have a cleaner version **and** can explain, in a sentence, what the function returns.

💬 **Discuss:** when do you want Claude to *explain and rewrite* (here) versus an IDE agent that *edits across files in place*? (That's the [`03_cursor/`](../03_cursor/README.md) bonus folder.)

---

← 🏠 [Back to the Claude menu](README.md)
