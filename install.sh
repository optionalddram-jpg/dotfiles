# --- mimic_ // ADVANCED RECON ENV ---

# 1. THE PROMPT (Hacker Density)
# [Time] [IP] [Directory] [Git]
export PS1="\[\033[38;5;196m\]⚡ \[\033[38;5;46m\]\t \[\033[38;5;39m\]\u@mimic \[\033[38;5;220m\]\w \[\033[38;5;208m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2) \[\033[0m\]\n$ "

# 2. BUG BOUNTY & RECON ALIASES
alias ls='ls --color=auto -h --group-directories-first'
alias grep='grep --color=auto --line-number'
alias ports='netstat -tulanp' # See every open port on your machine
alias sniff='sudo tcpdump -i any -n' # Quick network sniffing
alias myip='curl -s https://ifconfig.me && echo ""'

# 3. PYTHON & SECURITY TOOLS
alias audit='python3 ~/mimic-security-tools/headers_audit.py'
alias server='python3 -m http.server 8080' # Instant local web server for payloads
alias bypass='echo "Adding custom headers..." && python3 -c "import requests; print(requests.get(input(\"URL: \"), headers={\"X-Forwarded-For\": \"127.0.0.1\", \"User-Agent\": \"mimic-bot\"}).text)"'

# 4. ENVIRONMENT LOCKDOWN
export HISTSIZE=10000
export HISTCONTROL=ignoreboth # Don't save duplicate commands or ones starting with spaces

# 5. THE STARTUP BANNER (ASCII ART)
clear
echo -e "\033[38;5;46m"
echo "  __  __ ___ __  __ ___ ___  "
echo " |  \/  |_ _|  \/  |_ _/ __| "
echo " | |\/| || || |\/| || | (__  "
echo " |_|  |_|___|_|  |_|___\___| "
echo -e "\033[0m"
echo -e "\033[38;5;39m[+] Target environment: $(uname -snrc)\033[0m"
echo -e "\033[38;5;39m[+] Recon IP: $(curl -s ifconfig.me)\033[0m"
echo -e "------------------------------------------------------"
