local this = {}
this.ClassesRoot = 0
this.CurrentUser = 1
this.LocalMachine = 2
this.Users = 3
this.CurrentConfig = 4

this.HKEY_CLASSES_ROOT = 0
this.HKEY_CURRENT_USER = 1
this.HKEY_LOCAL_MACHINE = 2
this.HKEY_USERS = 3
this.HKEY_CURRENT_CONFIG = 4

function this.CreateSubKey(root, path)
    return Registry_CreateSubKey(root, path)
end
function this.DeleteSubKey(root, path)
    return Registry_DeleteSubKey(root, path)
end
function this.SetValue(root, path, name, value)
    return Registry_SetValue(root, path, name, value)
end
function this.GetValue(root, path, name)
    return Registry_GetValue(root, path, name)
end
function this.DelValue(root, path, name)
    return Registry_DelValue(root, path, name)
end
function this.GetID(rootname)
    if (rootname == nil) then
        return 0
    elseif (rootname == "HKEY_CLASSES_ROOT") then
        return 0
    elseif (rootname == "HKEY_CURRENT_USER") then
        return 1
    elseif (rootname == "HKEY_LOCAL_MACHINE") then
        return 2
    elseif (rootname == "HKEY_USERS") then
        return 3
    elseif (rootname == "HKEY_CURRENT_CONFIG") then
        return 4
    else
        return 0
    end
end
return this
