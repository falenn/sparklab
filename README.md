# sparklab

## BLUF - notes on basic spark techniques

## Java / Scala Spark

### Version Planning
Spark 3.3.x	Java 8, 11, 16	Scala 2.12.x, 2.13.x
Spark 3.4.x	Java 8, 11, 16	Scala 2.12.x, 2.13.x
Spark 3.5.x	Java 8, 11, 17	Scala 2.12.x, 2.13.x

### Install java
sudo dnf install java-11-openjdk java-11-openjdk-devel -y

### Install Apache Spark
```
wget https://dlcdn.apache.org/spark/spark-3.5.4/spark-3.5.4-bin-hadoop3.tgz
tar -zxvf spark-3.5.4-bin-hadoop3.tgz 
```



## PySpark


### Version planning for PySpark
https://sparkbyexamples.com/spark/spark-versions-supportability-matrix/

PySpark 3.3.x	Python 3.6, 3.7, 3.8, 3.9
PySpark 3.4.x	Python 3.6, 3.7, 3.8, 3.9
PySpark 3.5.x	Python 3.8, 3.9

### Python install
We want to install Python 3.9
```
sudo dnf -y update

# Usually the easy way
sudo dnf install python39 -y

# The more optimal way, Run the install script in the pyspark dir

# to check
python3.9 --version
```
### pyenv - multiple versions of python
Why PyEnv?  Pyenv with virtual-env allows us to install mlutiple versions of Python and configure them per project.  With Virtual-env, it acts like venv, locally containing any pip installs.

install with:
```
curl https://pyenv.run | bash
mkdir ~/bin
cd bin
ln -s ~/.pyenv/bin/pyenv
```

list all python versions to install:
```
pyenv install --list | grep " 3\.[8910]"
```
Install requirements
```
sudo dnf install -y \
    gcc \
    gcc-c++ \
    make \
    zlib-devel \
    bzip2 bzip2-devel \
    readline-devel \
    sqlite sqlite-devel \
    openssl-devel \
    xz xz-devel \
    libffi-devel \
    ncurses-devel

```
Install one with optimizations set:
```
env PYTHON_CONFIGURE_OPTS='--enable-optimizations' pyenv install -v 3.9.18
```

These installs are placed here:
```
ls ~/.pyenv/versions
```

Delete one:
```
r
 -rf ~/.pyenv/versions/2.7.15
# or
pyenv uninstall 2.7.15
```

List versions installed:
```
pyenv versions
```

List version using:
```
python -V
```

Get pyenv commands:
```
pyenv commands
```

Set default version:
```
pyenv global 3.6.8
```

Set a local / application specific version:
```
pyenv local 2.7.15
```

System python is the OS version.

### Pyenv virtualenv
Create the env
```
pyenv virtualenv 3.6.8 projectname
```

Activate the env
```
pyenv local myproejct

# or, add to bash_profile:
 eval "$(pyenv virtualenv-init -)"

# or
pyenv activate myproject
```

To deactivate:
```
pyenv deactivate myproject
```




### Create venv - virtual env
First of all, do not check `.venv` into git.  Add `.venv` to `.gitignore.`  This contains any pip installs internal to the venv and not all over the  host.

```
python -m venv /path/to/new/virtual/environment
```

to start the venv:
```
. <venv>/bin/activate
```

to stop, just type `exit`
