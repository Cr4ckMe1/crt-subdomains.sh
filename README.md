This README file explains how to use the **subdomains.sh** script to automate subdomain enumeration for a single domain or a list of domains.  

---

## **About the Script**  
The **subdomains.sh** script automates subdomain enumeration using **crt.sh**, a public Certificate Transparency (CT) log search tool. It helps security researchers and bug bounty hunters find subdomains associated with a target domain.  

### **Features**  
✔️ **Find subdomains for a single domain**  
✔️ **Enumerate subdomains for multiple domains from a list**  
✔️ **Subfinder-style real-time output**  
✔️ **Each domain’s results are saved separately (`domain-subs.txt`)**  
✔️ **Verbose mode (`-v`) for detailed progress**  

---

## **Installation & Usage**  

### **1Clone the Repository**  
```bash
git clone https://github.com/Cr4ckMe1/crt-subdomains.sh
.git
cd crt-subdomains.sh
```

### **Make the Script Executable**  
```bash
chmod +x subdomains.sh
```

### **Usage Examples**  

👉 **Find subdomains for a single domain:**  
```bash
./subdomains.sh example.com
```

👉 **Enable verbose mode (detailed progress):**  
```bash
./subdomains.sh example.com -v
```

👉 **Find subdomains for multiple domains from a file (`domains.txt`):**  
```bash
./subdomains.sh domains.txt
```

👉 **Multiple domains with verbose mode:**  
```bash
./subdomains.sh domains.txt -v
```

---

## **📁 Example Output**
```bash
[*] Fetching subdomains for: amazon.com
amazon.com
mail.amazon.com
aws.amazon.com
[*] Scan completed. Subdomains saved to: amazon.com-subs.txt

[*] Fetching subdomains for: google.com
google.com
mail.google.com
docs.google.com
[*] Scan completed. Subdomains saved to: google.com-subs.txt
```

---

## **💡 Why Use This Script?**  

🔹 **Fast & Automated** – No need to manually check crt.sh  
🔹 **Bug Bounty Friendly** – Helps find attack surfaces easily  
🔹 **Works for Multiple Domains** – Save time by scanning multiple domains in one go  
🔹 **Real-Time Output** – See results instantly like Subfinder  

---

## **⚠️ Disclaimer**  
This script is intended for ethical security research and penetration testing. **Do not use this script on unauthorized domains.** The author is not responsible for any misuse.  

---

🔥 **Happy Hunting! 🕵️‍♂️🚀**
