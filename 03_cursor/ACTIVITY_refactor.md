# 🎴 ACTIVITY · Refactor in Place

> ⏱️ **5 minutes** · 🎯 **Watch Cursor rewrite messy code right inside the file — the IDE superpower.**

**Do this:**

1. Make a new file `messy.py` and paste this in:
   ```python
   import pandas as pd
   def f(p):
    d=pd.read_csv(p);x=d[d['value']>0];y=x.groupby('group')['value'].mean();return y
   ```
2. Select all of it, press **`Ctrl/Cmd+K`**, and type:
   ```
   Refactor for readability: clear names, type hints, a docstring, and a brief comment per step. Keep behavior identical.
   ```
3. Accept the diff.

✅ **Done when:** the function is readable, typed, and commented — and you accepted the change *inside the file*, no copy-paste.

💬 **Discuss:** how is this different from pasting code into a chat window? When does in-place editing matter most?

---

← 🏠 [Back to the Cursor menu](README.md)
