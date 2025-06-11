# TP AntLR

## Tutorials

<details>
  <summary>Windows</summary>

### Windows: Install chocolatey and Java

⚠️ Open an admin shell with `windows + R -> "powershell" -> ctrl + shift + enter`.

Check if java is not already installed wih:

```powershell
java -version
```

This will display your java version, which must be at least 11. If this is not the case, uninstall java before continuing.

Output example of a java version lower than 11:

```text
java version "1.8.0_291"
Java(TM) SE Runtime Environment (build 1.8.0_291-b10)
Java HotSpot(TM) 64-Bit Server VM (build 25.291-b10, mixed mode)
```

Output example if java is not installed:

```text
'java' is not recognized as an internal or external command, operable program or batch file.
```

After checking that your computer does not have java enter:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install openjdk
```

### Windows: Retrieve sources for java-docs

⚠️ Re-open a shell in your project folder.

```powershell
./mvnw.cmd dependency:sources
```

### Windows: Compile and run

```powershell
./mvnw.cmd clean compile exec:java
```

### Windows: Build standalone JAR and EXE

```powershell
./mvnw.cmd clean package
```

The following warning can occur. You can ignore it.

```log
[WARNING] Failed to build parent project for org.openjfx:javafx-...:jar:17
```

</details>

<details>
  <summary>Ubuntu</summary>

### Ubuntu: Make Maven Wrapper executable

⚠️ Open a shell in your project folder.

```bash
chmod +x mvnw
```

### Ubuntu: Update and Install Java

```bash
sudo apt -y update && sudo apt -y install default-jdk
```

### Ubuntu: Retrieve sources for java-docs

```bash
./mvnw dependency:sources
```

### Ubuntu: Compile and run

```bash
./mvnw clean compile exec:java
```

### Ubuntu: Build standalone JAR and EXE

```bash
./mvnw clean package
```

The following warning can occur. You can ignore it.

```log
[WARNING] Failed to build parent project for org.openjfx:javafx-...:jar:17
```

</details>

<details>
  <summary>Mac</summary>

### Mac: Make Maven Wrapper executable

⚠️ Open a shell in your project folder.

```bash
chmod +x mvnw
```

### Mac: Install Homebrew and Java

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
brew install java
```

### Mac: Retrieve sources for java-docs

```bash
./mvnw dependency:sources
```

### Mac: Compile and run

```bash
./mvnw clean compile exec:java
```

</details>


