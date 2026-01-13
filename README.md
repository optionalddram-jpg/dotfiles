# 🐧 mimic_ // Linux Control Center

This is my automated **Linux environment**. I don't do manual setups. If it takes more than 60 seconds to configure a box, I've already failed. 

Based in **Tempe, AZ**, I’m focused on **Security Research** and **Automation**. This repo is the "Save Game" file for my entire workflow—custom prompts, security aliases, and the tools I use to hunt bugs.

---

### ⚡ The Setup
* **Shell:** Bash (Rebuilt for high-density recon).
* **Vibe:** Transparent, dark, and fast. 
* **Logic:** If I need an IP, a port status, or a header audit, it’s a one-word command. No fluff.

### 🛠️ Power Moves (Aliases)
* `audit`: Runs my custom Python header-security auditor.
* `myip`: Instant public IP check (because if the VPN drops, the scan stops).
* `ports`: See everything listening on the machine.
* `gpush`: Add, commit, and ship code in one command.

### 🚀 "I Need This on a New Machine"
```bash
git clone [https://github.com/optionalddram-jpg/dotfiles.git](https://github.com/optionalddram-jpg/dotfiles.git) ~/dotfiles && cd ~/dotfiles && ./install.sh
