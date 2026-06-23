# 📌 ACTIVITY

## Red-Team Your Own Paper

🕒 *Estimated Time: 25 minutes*

---

## ✅ Your Task

Run an **adversarial review** of one of your own papers (a draft, a revise-and-resubmit, or a rejected submission). The goal is to surface weaknesses while you can still fix them.

### 🧱 Stage 1: Gather the material

- [ ] A paper or substantial draft (PDF or text).
- [ ] *(Optional but powerful)* any reviewer comments you've received — Claude can simulate that reviewer's stance and extend it.

### 🧱 Stage 2: Run the red-team prompt

- [ ] Open Claude Desktop, attach the paper, and either invoke the [`red-team-research`](../.claude/skills/red-team-research/SKILL.md) Skill or paste the prompt from [`prompts/red_team_review.md`](prompts/red_team_review.md).
- [ ] Ask for the critique in priority order: the objections most likely to sink the paper first.

### 🧱 Stage 3: Push harder

- [ ] Follow up: *"What's the single most damaging objection a hostile reviewer could raise?"*
- [ ] Then: *"For each weakness, give the smallest change that would address it."*
- [ ] If you have real reviewer comments: *"Here's Reviewer 2. Steelman their position, then tell me where they're right."*

### 🧱 Stage 4: Triage

- [ ] Sort the feedback into **must-fix**, **should-fix**, and **out-of-scope**.
- [ ] Turn must-fix items into a concrete revision checklist.

---

## ⚠️ Use it well

- **You decide what's valid.** The model proposes; you dispose. Some objections will be wrong — that's fine, you're looking for the *useful* ones.
- **Privacy:** unpublished work is sensitive. If you'd rather not send a manuscript to the cloud, run this critique against a **local model** ([module 04](../04_local_ai/README.md)) — a strong reasoner like `phi4` does a creditable job.
- **Don't outsource judgment.** Red-teaming sharpens your argument; it doesn't replace your expertise.

---

## 📤 Try It

Red-team one real paper, produce a prioritized revision checklist, and identify the one objection you most need to preempt.

---

← 🏠 [Back to the module README](README.md)
