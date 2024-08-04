
function add_includedirs_recursively(baseDir)
    add_includedirs(baseDir, {public = true})

    for _, dir in ipairs(os.dirs(baseDir .. "/*")) do
        add_includedirs(dir, {public = true})
        add_includedirs_recursively(dir)
    end
end

local currentDir = os.curdir()
local projectName = path.filename(currentDir)

target(projectName)
    add_rules("ue4ss.mod")

    add_includedirs_recursively(currentDir)

    add_files("**.cpp")
