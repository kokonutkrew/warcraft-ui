; This is the default Pre-Startup script.  Any changes made to this file will be overwritten.
; Only things that need to be done BEFORE the game is allowed to initialize should go in Pre-Startup

function main()
{
/*
  if ${LavishScript.Executable.Find[eqgame.exe]} || ${LavishScript.Executable.Find[everquest.exe]}
  {
    FileRedirect eqlsPlayerData.ini "eqlsPlayerData-${Profile}.ini"
    FileRedirect eqclient.ini "eqclient-${Profile}.ini"
    INIRedirect eqclient.ini * * "eqclient-${Profile}.ini" * *
  }
/**/
}
