local this = {}
this.ExecuteName = GetApplication()
this.Version = GetApplicationVersion()
this.Name = FindFileNameA(GetApplication())
this.Path = FindFilePath(GetApplication())
this.ScriptFile = GetScript()
function this.Exit()
    Exit()
end
function this.DoEvents()
    DoEvents()
end
return this
