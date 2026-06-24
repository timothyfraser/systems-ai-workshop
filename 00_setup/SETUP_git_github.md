# 📘 Optional Guide · Git & GitHub, Step by Step

> A self-serve checklist for getting fully set up with **Git**, a **GitHub account**, and a **personal access token** — handy if you'll clone, pull, or push to repositories. **None of this is required for the workshop;** the only requirement is [installing Claude Desktop](README.md). Tick the boxes as you go. ✅

---

## Table of Contents

- [1. Install Git & Git Bash](#1-install-git--git-bash)
- [2. Set Up a GitHub Account](#2-set-up-a-github-account)
- [3. Create a GitHub Repository](#3-create-a-github-repository)
- [4. Get a Personal Access Token (PAT)](#4-get-a-personal-access-token-pat)

---

## 1. Install Git & Git Bash

🕒 *~10 minutes*

Git is version control. On **Windows**, the installer also gives you **Git Bash** — a Unix-like terminal you'll use for running commands the same way macOS/Linux users do.

- [ ] Go to the 🔗 [Git download page](https://git-scm.com/downloads).
- [ ] Download Git for your operating system (Windows, macOS, or Linux).
- [ ] Run the installer and accept the **defaults** (they're fine).
- [ ] **Windows:** open **Git Bash** from the Start menu afterward. **macOS:** use the built-in **Terminal** (or `brew install git`).
- [ ] Verify — open your terminal and run:
  ```bash
  git --version
  ```
  You should see something like `git version 2.45.0`.

**New to the command line or Git?**
- 🔗 [Git Bash cheatsheet](https://timothyfraser.github.io/dsai/00_quickstart/CHEATSHEET_git_bash.html)
- 🔗 [Danny Adams' Git Version Control cheatsheet](https://drive.google.com/file/d/1D19baZ83N-hwfENKjj-us0H1u3XXMAz2/view?usp=sharing)

---

## 2. Set Up a GitHub Account

🕒 *~5–10 minutes*

- [ ] Go to the 🔗 [GitHub signup](https://github.com/signup) page.
- [ ] ⚠️ Check that you're on **`github.com`** — *not* a GitHub **Enterprise** site like `github.coecis.cornell.edu`. This matters.
- [ ] Create your account and pick a **professional username** — ideally your real name or something recognizable. *(Example: `github.com/timothyfraser`.)*
- [ ] *(Recommended)* **Edit your profile**: set your display name to your professional name (e.g. *Timothy Fraser, PhD*) and add a recognizable profile photo — a headshot works well. A distinctive photo makes you far easier to find than the default avatar.

---

## 3. Create a GitHub Repository

🕒 *~10 minutes*

One repository is plenty; make more if it's useful.

- [ ] On GitHub, click **New** (or the **+** menu → **New repository**).
- [ ] Give it a **simple name** — lowercase, no spaces.
- [ ] Choose **Public** or **Private**, then **Create repository**.
- [ ] Copy its URL (ends in `.git`) — you'll need it to clone or connect.
- [ ] *(Optional)* add a collaborator: **Settings → Collaborators → Add people**, then enter their GitHub username.

---

## 4. Get a Personal Access Token (PAT)

🕒 *~10 minutes*

A **PAT** is what you use in place of a password when Git connects to GitHub over HTTPS (to pull and push).

### Create the token

- [ ] On GitHub, click your profile icon (top-right) → **Settings**.
- [ ] In the left menu, scroll to **Developer settings**.
- [ ] **Personal access tokens** → choose **Fine-grained** (scoped to specific repos, recommended) or **Classic** (broader access).
  - **Fine-grained:**
    - [ ] Name the token and set an **expiration date** (e.g. a year out).
    - [ ] Select the repository it should apply to.
    - [ ] Under **Permissions → Repository permissions**, set **Contents** to **Read and write** (this also adds **Metadata** automatically).
  - **Classic:**
    - [ ] Name the token and set an **expiration date**.
    - [ ] Under **scopes**, check **repo** (and **public_repo**).
- [ ] **Generate** the token, then **copy it and store it somewhere safe** — a password manager is ideal. You won't be able to see it again.

### Use the token

When you `git push` or `git pull` over HTTPS and Git asks for a **password**, paste your **PAT** instead of your account password. Git can remember it via your OS credential manager so you only enter it once.

> 🔒 Treat your PAT like a password — never commit it to a repository or share it.

---

← 🏠 [Back to the Quick Start](README.md)
