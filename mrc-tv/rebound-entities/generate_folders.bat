@echo off

REM Root directory for documentation
set root=docs

REM Categories and their folders
set categories=Shared-Exports Server-Exports Client-Exports

REM Create main directory
mkdir %root%
echo Creating folder structure...

REM Create category folders and index.md for each
for %%c in (%categories%) do (
    mkdir %root%\%%c
    echo --- > %root%\%%c\index.md
    echo title: %%c >> %root%\%%c\index.md
    echo parent: Rebound Entities >> %root%\%%c\index.md
    echo layout: page >> %root%\%%c\index.md
    echo has_children: true >> %root%\%%c\index.md
    echo --- >> %root%\%%c\index.md
    echo >> %root%\%%c\index.md
    echo ## %%c >> %root%\%%c\index.md
    echo Explore the functions available in %%c. >> %root%\%%c\index.md
)

REM Add individual function files
echo Generating function documentation...
set sharedFunctions=GetEntities GetEntityData GetEntitiesByModel GetClosestEntity GetClosestEntities AddRegisteredFunction SetOnSyncKeyChange
set serverFunctions=CreateReboundEntity DeleteReboundEntity
set clientFunctions=SetOnSpawn SetOnDespawn

REM Shared Exports
for %%f in (%sharedFunctions%) do (
    echo --- > %root%\Shared-Exports\%%f.md
    echo title: %%f >> %root%\Shared-Exports\%%f.md
    echo parent: Shared Exports >> %root%\Shared-Exports\%%f.md
    echo layout: page >> %root%\Shared-Exports\%%f.md
    echo --- >> %root%\Shared-Exports\%%f.md
    echo >> %root%\Shared-Exports\%%f.md
    echo ## `%%f()` >> %root%\Shared-Exports\%%f.md
    echo Description for %%f function. Add details here. >> %root%\Shared-Exports\%%f.md
)

REM Server Exports
for %%f in (%serverFunctions%) do (
    echo --- > %root%\Server-Exports\%%f.md
    echo title: %%f >> %root%\Server-Exports\%%f.md
    echo parent: Server Exports >> %root%\Server-Exports\%%f.md
    echo layout: page >> %root%\Server-Exports\%%f.md
    echo --- >> %root%\Server-Exports\%%f.md
    echo >> %root%\Server-Exports\%%f.md
    echo ## `%%f()` >> %root%\Server-Exports\%%f.md
    echo Description for %%f function. Add details here. >> %root%\Server-Exports\%%f.md
)

REM Client Exports
for %%f in (%clientFunctions%) do (
    echo --- > %root%\Client-Exports\%%f.md
    echo title: %%f >> %root%\Client-Exports\%%f.md
    echo parent: Client Exports >> %root%\Client-Exports\%%f.md
    echo layout: page >> %root%\Client-Exports\%%f.md
    echo --- >> %root%\Client-Exports\%%f.md
    echo >> %root%\Client-Exports\%%f.md
    echo ## `%%f()` >> %root%\Client-Exports\%%f.md
    echo Description for %%f function. Add details here. >> %root%\Client-Exports\%%f.md
)

echo Documentation generation complete!
pause
