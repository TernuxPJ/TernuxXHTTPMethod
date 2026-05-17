
# 🌊 Ternux - Free Proxy on GitHub Codespaces

<div align="center">

![Ternux](https://img.shields.io/badge/Ternux-00FFFF?style=for-the-badge&logo=github&logoColor=black)
![Version](https://img.shields.io/badge/version-2.0-00FFFF?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-00FFFF?style=for-the-badge)
![Free](https://img.shields.io/badge/free-100%25-00FFFF?style=for-the-badge)

</div>

---

## 📖 What is Ternux?

**Ternux** is a free tool that creates a **VLESS+xHTTP proxy** using **GitHub Codespaces**. No server needed. 100% free.

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🆓 | Completely free |
| ⚡ | High speed |
| 🔒 | Anti-censorship |
| 📱 | Works on all devices |
| 🔄 | Auto keepalive |

---

## 🚀 How to Use (3 Minutes)

### Step 1: Fork this repo
Click the **Fork** button (top right)

### Step 2: Create Codespace
Click **Code** → **Codespaces** → **Create codespace on main**

### Step 3: Wait 2 minutes
The terminal will show your VLESS link

### Step 4: Set port to Public
Go to **PORTS** tab → Right click port **443** → **Public**

### Step 5: Copy the link
Select and copy the `vless://` link

### Step 6: Import to your VPN app
Open v2rayNG / Nekobox / Streisand → Import from clipboard → Connect

---

## 📱 Supported Clients

| Platform | Client |
|----------|--------|
| Android | v2rayNG, Nekobox, Hiddify |
| Windows | v2rayN, Nekoray |
| iOS | Streisand, FoXray |
| Mac | Streisand |
| Linux | Nekoray |

---

## 🔧 Commands

```bash
show-link.sh          # Show your VLESS link
tmux attach -t ternux # View logs (press Ctrl+B then D to exit)
```

---

## 🌐 Alternative IPs (if slow)

| IP | Network |
|----|---------|
| `94.130.50.12` | Default |
| `63.141.252.203` | Irancell |
| `50.7.5.83` | Hamrah Aval |

**How to change:** Replace the IP in your vless:// link

---

## ❓ Troubleshooting

| Problem | Solution |
|---------|----------|
| Can't connect | Port 443 must be Public |
| Link not showing | Run `show-link.sh` |
| Codespace stops | Run `tmux attach -t ternux` |
| Slow speed | Try different IP |

---

## ⏰ Free Hours

| Item | Limit |
|------|-------|
| Free hours | 60 per month |
| Stop when not using | Saves hours |
| Reset | Monthly |

---

## 📂 Project Structure

```
Ternux/
├── .devcontainer/
│   ├── Dockerfile
│   ├── config.json
│   ├── devcontainer.json
│   ├── setup.sh
│   ├── show-link.sh
│   └── start.sh
├── LICENSE
└── README.md
```

---

## 📞 Support

- Telegram: https://t.me/ternux
- YouTube: https://youtube.com/@ternux

---

## 📜 License

MIT License - Free for everyone

---

<div align="center">

**🌊 Ternux - Free Internet for Everyone 🌊**

**⭐ Star this repo if it helps you ⭐**

</div>
```
