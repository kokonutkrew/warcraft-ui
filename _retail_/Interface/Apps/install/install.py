import distutils
import json
import os
import pathlib
import re
import shutil
import tkFileDialog
import Tkinter

from distutils import dir_util

warcraft = ""
settings = ""

def main():
    findGameFolder()
    checkSettings()
    updateSettings()
    installProfiles()

def findGameFolder():
    global warcraft
    global settings
    if os.path.exists('../../../../World of Warcraft Launcher.exe'):
        warcraft = '../../../../'
        settings = '../../settings.json'
    elif os.path.exists('../../World of Warcraft Launcher.exe'):
        warcraft = '../../'
        settings = 'settings.json'
    else:
        warcraft = gameFolder() + '/'
        settings = warcraft + '_retail_/Interface/settings.json'

def checkSettings():
    if os.path.isfile(settings) and os.access(settings, os.R_OK):
        return

    print ("settings.json is missing, creating file with defaults...")
    data = {
        "default": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
        "profileTemplates": {
            "deathknight": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "demonhunter": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "druid": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "hunter": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "mage": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "monk": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "paladin": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "priest": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "rouge": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "shaman": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "warlock": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "warrior": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan",
            "custom": "_retail_/WTF/Account/SHGRSHN/Stormrage/Samoantitan"
        },
        "profiles": [{
            "path": "_retail_/WTF/Account/account/server/character",
            "template": "template"
        }]
    }
    write(data)

def updateSettings():
    data = read()

    updateProfiles = []
    accounts = next(os.walk(warcraft + '_retail_/WTF/Account'))
    for account in accounts[1]:
        if account == "SavedVariables":
            continue
             
        servers = next(os.walk(warcraft + '_retail_/WTF/Account/' + account))
        for server in servers[1]:
            if server == "SavedVariables":
                continue

            characters = next(os.walk(warcraft + '_retail_/WTF/Account/' + account + '/' + server))
            for character in characters[1]:
                if server == "SavedVariables":
                    continue

                if warcraft == '../':
                    path = characters[0] + '/' + character
                    path = path.partition("/")[2]
                else:
                    path = re.sub(warcraft, '', characters[0] + '/' + character)

                match = False
                for profile in data['profiles']:

                    if path in profile['path']:
                        match = True
                        updateProfiles.append({
                            "path": profile['path'],
                            "template": profile['template']
                        })
                        break
                        
                if match == False:
                    updateProfiles.append({
                        "path": path,
                        "template": 'default'
                    })
    
    data['profiles'] = updateProfiles
    write(data)

def installProfiles():
    data = read()

    defaultAccount = data['default'].split("/")[0:4]
    defaultAccount = os.path.join(warcraft, *defaultAccount)

    previousAccount = ''
    for profile in data['profiles']:
        account = profile['path'].split("/")[0:4]
        account = os.path.join(warcraft, *account)

        if account == defaultAccount:
            continue

        if not account == previousAccount:
            previousAccount = account
            distutils.dir_util.copy_tree(defaultAccount + '/SavedVariables', account + '/SavedVariables')

            files = next(os.walk(defaultAccount))[2]
            for defaultFile in files:
                defaultFile = os.path.join(defaultAccount, defaultFile)
                copy(defaultFile, account)
            print('Account level settings were copied from ' + defaultAccount + ' to ' + account)

        template = profile['template']
        template = data['profileTemplates'].get(template, data['default'])
        template = warcraft + template

        if template == warcraft + profile['path']:
            continue

        distutils.dir_util.copy_tree(template, warcraft + profile['path'])
        print(template + ' was copied to ' + warcraft + profile['path'])

def write(data):
    with open(settings, 'w') as out:
        json.dump(data, out, indent=4, sort_keys=True)

def read():
    json_data = open(settings, 'r').read()
    return json.loads(json_data, encoding="utf-8")

def copy(src, dst):
    try:
        shutil.copy(src, dst)
    except shutil.Error:
        return

def gameFolder():
    dialog = Tkinter.Tk()
    dialog.withdraw()
    return tkFileDialog.askdirectory()

main()