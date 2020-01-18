@echo off
REM REM Will serve via Github Pages 
REM REM may need to create new Github repository with Curl + Github API 
REM git switch -c gh-pages 
REM git remote add gh-pages https://github.com/bh0/portrollio-test.git
REM git add index.html styles.css custom.css assets .gitignore serve.bat 
REM git commit -m "serve via gh-pages"
REM git push origin gh-pages
REM REM may need to change branch (back to master) 

git branch -D gh-pages
git push origin --delete gh-pages

REM set exists="git show-ref refs/heads/gh-pages"
REM if %exists% == "gh-pages"(
REM     echo "branch exists"
REM     git checkout gh-pages
REM ) else (
REM     echo "branch does not exist, creating branch via checkout -b gh-pages"
REM     git checkout -b gh-pages
REM )
REM git switch -c gh-pages 
REm git checkout -b gh-pages
REM git pull REM not comfortable with this 
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