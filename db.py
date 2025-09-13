"""
cli program which queires a sqlite database.
Read only: no no writes to the source, e.g dir of markdown files
Use: used to preform complex quires
db base is updated using hooks, e.g github actions commit, chron job (no), git hook 

```
md-db --tags 'foo-bar,baz' --updated '5d' --made '29' --author 'john' --links '' 

foo.md
qux.md
```


"""

All tooling is shell scripts in the scripts repo
- safe name change: updates links too
- pull links
- conver to md
- complie

New Plan: just use gnu core utils or shell scripsl all of which are in my scripts repo
