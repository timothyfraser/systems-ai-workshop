# Red-Team Review Prompt

> Paste this into Claude Desktop (or a local model) with your paper attached. Adapt the bracketed bits.

---

```
You are a rigorous, fair, but adversarial peer reviewer for a top venue in
[FIELD]. I am the author and I want you to find the real weaknesses in this
paper before a journal does. Do not flatter me. Be specific and concrete.

Review the attached paper and produce:

1. ONE-PARAGRAPH SUMMARY
   Restate the paper's central claim and contribution in your own words, so I
   can confirm you understood it.

2. THE STRONGEST OBJECTION
   The single criticism most likely to lead to rejection. State it plainly,
   explain why it matters, and point to the specific section that triggers it.

3. CLAIMS AUDIT
   List the paper's main claims. For each, mark whether the evidence presented
   actually supports it (Supported / Partially / Unsupported) and why.

4. METHODS SCRUTINY
   Identify weaknesses in the methodology: confounds, sample/scope limits,
   missing controls, questionable assumptions, threats to validity,
   reproducibility gaps. Be concrete about each.

5. LOGICAL GAPS
   Flag any logical fallacies, non-sequiturs, overgeneralizations, or places
   where the conclusion outruns the evidence.

6. CLARITY ISSUES
   Note arguments or passages that are unclear, ambiguous, or likely to be
   misread, with the location.

7. ALTERNATIVE EXPLANATIONS
   Offer competing explanations for the results that the paper does not rule out.

8. PRIORITIZED REVISION LIST
   A numbered list of actionable fixes, ordered by impact, from "must fix to be
   publishable" down to "nice to have." For each, give the smallest change that
   would address it.

Where you are uncertain, say so rather than inventing a criticism. Cite the
section or page for every point so I can find it.
```

---

## Follow-up prompts

- *"What is the single most damaging objection a hostile reviewer could raise, and how would you defend against it if you were me?"*
- *"Here are the actual reviewer comments: [PASTE]. Steelman each one, then tell me where the reviewer is mistaken."*
- *"Rewrite my abstract to preempt your strongest objection without overclaiming."*
