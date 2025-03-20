# Smart Compile
A smart script to automate C++ compilation — only recompiles when the source code changes.

---

## 🚀 Features
- Saves time and resources by reducing unnecessary compilations.  
- Only recompiles when the source file changes.
- Displays clear success or error messages.

---


## 🛠️ Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Smart-Compile.git
   ```
2. Navigate to the script folder:
   ```bash
   cd Smart-Compile
   ```
3. Make the script executable:
   ```bash
   chmod +x smart-compile.sh
   ```
4. Ensure `g++` is installed:
   ```bash
   sudo apt install g++
   ```

---


## 🚀 Usage
To compile a C++ file:
```bash
./smart-compile.sh <filename.cpp>
```

Example:
```bash
./smart-compile.sh main.cpp
```


### 💻 Use with VS Code (Code Runner Extension)  
1. Install the **Code Runner** extension from the VS Code marketplace.  
2. Open **VS Code** and open **Settings** (`Ctrl + ,`) or go to `File > Preferences > Settings`.  
3. Search for `code-runner.executorMap` and click on **Edit in settings.json**.  
4. change the "CPP" configuration to use the script with C++ files:  
   ```json  
   "code-runner.executorMap": {  
       "cpp": "bash ./smart-compile.sh $fileName"  
   }  
   ```  
5. Enable Code Runner to run in the terminal:  
   - Open **Settings** (`Ctrl + ,`)  
   - Search for `code-runner.runInTerminal`  
   - **Check** the option ✅ **"Code-runner: Run in Terminal"**  
6. Save the file.  
7. To run a C++ file using Code Runner, open the file and press **`Ctrl + Alt + N`** or click the **Run** button.  


---
## 🎯 Output Example
Successful compilation:
```plaintext
####################
# Compilation Done #
####################
```
Compilation error:
```plaintext
#####################
# Compilation Error #
#####################
```

---

## 🤝 Contributing
1. Fork the repo.
2. Create a new branch:
   ```bash
   git checkout -b feature/new-feature
   ```
3. Make your changes and commit:
   ```bash
   git commit -m "Add new feature"
   ```
4. Push to your branch:
   ```bash
   git push origin feature/new-feature
   ```
5. Create a Pull Request.


