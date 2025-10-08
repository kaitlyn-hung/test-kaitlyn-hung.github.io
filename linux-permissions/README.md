# 🧱 Linux File Permissions Project

### 🧠 Objective
Learn how to view and change file permissions in Linux using `ls`, `chmod`, and `chown`.  
This exercise demonstrates how ownership and permission bits control access to files.  

---

### ⚙️ Steps & Commands

#### 1️⃣ Create a file
```bash
touch testfile.txt
ls -l testfile.txt
```

🗒 **Result:**  
Shows the new file with default permissions:
```
-rw-r--r-- 1 kait kait 0 Oct 8 19:30 testfile.txt
```
Owner can read/write, group can read, others can read.

---

#### 2️⃣ Change the owner (optional)
```bash
sudo chown $USER testfile.txt
```
🧩 **Explanation:**  
Ensures the file belongs to the current user.

---

#### 3️⃣ Modify permissions
```bash
chmod 640 testfile.txt
ls -l testfile.txt
```

💡 **Breakdown of 640:**

| Role | Binary | Meaning | Permissions |
|------|---------|----------|--------------|
| Owner | 6 | Read + Write | `rw-` |
| Group | 4 | Read | `r--` |
| Others | 0 | None | `---` |

**Result:**
```
-rw-r----- 1 kait kait 0 Oct 8 19:35 testfile.txt
```

---

#### 4️⃣ Add execute for owner
```bash
chmod u+x testfile.txt
ls -l testfile.txt
```

🧩 Adds execute (`x`) permission for the user.  

Final output:
```
-rwxr----- 1 kait kait 0 Oct 8 19:40 testfile.txt
```

---

### 📘 Key Takeaways
- `ls -l` → view permissions  
- `chmod` → change permissions (numeric or symbolic)  
- `chown` → change file ownership  
- Permissions follow: **Owner | Group | Others**  
- Values: **r = 4, w = 2, x = 1**

---

### 🧰 Skills Demonstrated
✅ Linux command line basics  
✅ File ownership and access control  
✅ Shell scripting fundamentals  
✅ Clear documentation and result interpretation  

---
