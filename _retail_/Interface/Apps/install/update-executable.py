from subprocess import call

call(["pyinstaller",
      "--onefile", "install.py",
      "--distpath", "../../",
      "--specpath", "./build"])
