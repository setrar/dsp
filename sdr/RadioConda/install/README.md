---

### **How to Install RadioConda**
1. **Install Miniconda** (if not already installed):
   - Download and install Miniconda for your platform:
     ```bash
     wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
     bash Miniconda3-latest-Linux-x86_64.sh
     ```

2. **Add RadioConda Channel**:
   Run the following command to add the `radioconda` channel:
   ```bash
   conda config --add channels conda-forge
   conda config --add channels ryanvolz
   ```

3. **Create a RadioConda Environment**:
   ```bash
   conda create -n radioconda radioconda
   ```

4. **Activate the Environment**:
   ```bash
   conda activate radioconda
   ```

