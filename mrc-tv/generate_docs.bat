@echo off

REM Root directory for documentation
set root=docs\mrc-tv

REM Create main folder and index file
mkdir %root%
echo --- > %root%\index.md
echo title: MRC TV >> %root%\index.md
echo has_children: true >> %root%\index.md
echo nav_order: 1 >> %root%\index.md
echo --- >> %root%\index.md
echo # MRC TV Documentation >> %root%\index.md
echo. >> %root%\index.md
echo Welcome to the documentation for MRC TV. Use the navigation to explore the sections. >> %root%\index.md

REM Create Data Structures folder and file
echo Creating Data Structures section...
echo --- > %root%\data-structures.md
echo title: Data Structures >> %root%\data-structures.md
echo parent: MRC TV >> %root%\data-structures.md
echo nav_order: 2 >> %root%\data-structures.md
echo --- >> %root%\data-structures.md
echo # Data Structures >> %root%\data-structures.md

REM Create Shared Exports folder and files
echo Creating Shared Exports section...
mkdir %root%\shared-exports
echo --- > %root%\shared-exports\index.md
echo title: Shared Exports >> %root%\shared-exports\index.md
echo parent: MRC TV >> %root%\shared-exports\index.md
echo has_children: true >> %root%\shared-exports\index.md
echo nav_order: 3 >> %root%\shared-exports\index.md
echo --- >> %root%\shared-exports\index.md
echo # Shared Exports >> %root%\shared-exports\index.md

for %%f in (GetEntities,GetEntityData,GetEntitiesByModel,GetClosestEntity,GetClosestEntities,AddRegisteredFunction,SetOnSyncKeyChange) do (
    echo --- > %root%\shared-exports\%%f.md
    echo title: %%f >> %root%\shared-exports\%%f.md
    echo parent: Shared Exports >> %root%\shared-exports\%%f.md
    echo grand_parent: MRC TV >> %root%\shared-exports\%%f.md
    echo nav_order: 1 >> %root%\shared-exports\%%f.md
    echo --- >> %root%\shared-exports\%%f.md
    echo # %%f >> %root%\shared-exports\%%f.md
)

REM Create Server Exports folder and files
echo Creating Server Exports section...
mkdir %root%\server-exports
echo --- > %root%\server-exports\index.md
echo title: Server Exports >> %root%\server-exports\index.md
echo parent: MRC TV >> %root%\server-exports\index.md
echo has_children: true >> %root%\server-exports\index.md
echo nav_order: 4 >> %root%\server-exports\index.md
echo --- >> %root%\server-exports\index.md
echo # Server Exports >> %root%\server-exports\index.md

for %%f in (CreateReboundEntity,DeleteReboundEntity) do (
    echo --- > %root%\server-exports\%%f.md
    echo title: %%f >> %root%\server-exports\%%f.md
    echo parent: Server Exports >> %root%\server-exports\%%f.md
    echo grand_parent: MRC TV >> %root%\server-exports\%%f.md
    echo nav_order: 1 >> %root%\server-exports\%%f.md
    echo --- >> %root%\server-exports\%%f.md
    echo # %%f >> %root%\server-exports\%%f.md
)

REM Create Client Exports folder and files
echo Creating Client Exports section...
mkdir %root%\client-exports
echo --- > %root%\client-exports\index.md
echo title: Client Exports >> %root%\client-exports\index.md
echo parent: MRC TV >> %root%\client-exports\index.md
echo has_children: true >> %root%\client-exports\index.md
echo nav_order: 5 >> %root%\client-exports\index.md
echo --- >> %root%\client-exports\index.md
echo # Client Exports >> %root%\client-exports\index.md

for %%f in (SetOnSpawn,SetOnDespawn) do (
    echo --- > %root%\client-exports\%%f.md
    echo title: %%f >> %root%\client-exports\%%f.md
    echo parent: Client Exports >> %root%\client-exports\%%f.md
    echo grand_parent: MRC TV >> %root%\client-exports\%%f.md
    echo nav_order: 1 >> %root%\client-exports\%%f.md
    echo --- >> %root%\client-exports\%%f.md
    echo # %%f >> %root%\client-exports\%%f.md
)

echo All folders and files have been created successfully!
pause
