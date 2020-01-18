@echo off
REM REM Will serve via Github Pages 
REM REM may need to create new Github repository with Curl + Github API 
REM git switch -c gh-pages 
REM git remote add gh-pages https://github.com/bh0/portrollio-test.git
REM git add index.html styles.css custom.css assets .gitignore serve.bat 
REM git commit -m "serve via gh-pages"
REM git push origin gh-pages
REM REM may need to change branch (back to master) 

git switch -c gh-pages 
if "git config remote.gh-pages.url"=="https://github.com/bh0/portrollio-test.git" (
    echo "adding remote"
    git remote add gh-pages https://github.com/bh0/portrollio-test.git
) else (
    echo "remote exists, continuing"
)
git add index.html styles.css custom.css assets .gitignore serve.bat 
git commit -m "serve via gh-pages"
git push origin gh-pages
echo "Returning to master branch"
git checkout master