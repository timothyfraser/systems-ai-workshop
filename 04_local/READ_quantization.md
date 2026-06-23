# 📌 READ

## Quantization, Explained for Laptops

🕒 *Estimated Time: 8 minutes*

---

## The one-paragraph version

A model's "weights" are billions of numbers. Stored at full precision (16 bits each), a useful model needs more memory than a laptop has. **Quantization** stores those numbers with fewer bits — 4 or 5 instead of 16 — which shrinks the model **3–4×** while keeping **most** of its intelligence. That compression is the only reason a capable model fits on your machine. The sweet spot for laptops is **`Q4_K_M`** (sometimes **`Q5_K_M`** if you have room to spare).

---

## 🔢 Reading the label

A quantization tag like `Q4_K_M` has three parts:

- **`Q4`** — **4 bits** per weight (vs. 16 for full precision). Lower number = smaller and faster, but a bit less accurate. Common values: `Q3`, `Q4`, `Q5`, `Q6`, `Q8`.
- **`K`** — the modern "K-quant" method, which is smarter about *which* weights get more bits. Always prefer `K` quants.
- **`M`** — the **M**edium size within that tier (vs. `S` small or `L` large). `M` balances size and quality.

So **`Q4_K_M`** = *4-bit, K-quant, medium* — the widely recommended default. **`Q5_K_M`** is slightly larger and slightly sharper; use it if the model still fits comfortably.

---

## 📏 How much memory will it use?

Rule of thumb: a model needs roughly its **file size in free RAM** (or VRAM on a GPU), **plus 1–3 GB** for the conversation context.

| Quant | Bits/weight | Relative size | When to use |
|-------|-------------|---------------|-------------|
| `Q3_K_M` | ~3 | smallest usable | Desperate for space; quality dips noticeably |
| **`Q4_K_M`** | ~4 | **~30% of full** | **Default.** Best size-to-quality trade for laptops |
| **`Q5_K_M`** | ~5 | ~35% of full | A touch sharper; use if it fits |
| `Q6_K` | ~6 | ~45% of full | High quality, if you have the RAM |
| `Q8_0` | ~8 | ~55% of full | Near-lossless; usually overkill on a laptop |

**Worked example — a 7B model:**
- Full precision (16-bit): ~14 GB — won't fit comfortably on most laptops.
- `Q4_K_M`: ~4.5–5 GB — runs nicely on 8 GB.
- That's the whole trick.

---

## 🧮 Match a quant to your laptop

| Your RAM | Safe model size at `Q4_K_M` | Example |
|----------|-----------------------------|---------|
| **8 GB** | up to ~7B | `qwen2.5-coder:7b`, `gemma4:e4b` |
| **16 GB** | up to ~14B | `qwen2.5-coder:14b`, `phi4` |
| **32 GB** | up to ~30B (incl. MoE) | `qwen3-coder:30b`, `devstral` |

> **Apple Silicon bonus:** unified memory means the GPU and CPU share RAM, so a 32 GB Mac runs these models well via Ollama's Metal backend.

---

## ⚠️ Signs you over-reached

If a model is too big for your machine, you'll notice:

- **It's painfully slow** — a word every few seconds (it's swapping to disk).
- **Your fans roar** and everything else lags.
- **Ollama errors out** loading the model.

The fix is always the same: **drop to a smaller model or a lower quant.** A fast 7B you'll actually use beats a 30B that grinds to a halt.

---

## 🎯 Bottom line

- Default to **`Q4_K_M`**.
- If it fits with room to spare, try **`Q5_K_M`**.
- Pick the **largest model your RAM allows** at that quant — see [the model menu](READ_models.md).

---

← 🏠 [Back to the module README](README.md)
