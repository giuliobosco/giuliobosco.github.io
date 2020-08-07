# giuliobosco.github.io

My website source code, based on [Hugo](https://gohugo.io) with [smol](https://themes.gohugo.io/smol/) theme.

- [projects](https://giuliobosco.github.io/projects)
- [experience](https://giuliobosco.github.io/experience)
- [education](https://giuliobosco.github.io/education)

## branches

- master  
Website source code with Hugo
- gh-pages  
Compiled webiste source code ([https://giuliobosco.github.io](https://giuliobosco.github.io))

## deploy

This repository has auto-deploy, on push on master branch it will automatically build the website with hugo command and upload the code in the `gh-pages` branch.  
For manually deploy run the `deploy.sh` script.

```sh
./deploy.sh "commit message"
```

The manually deploy is faster if you do have Hugo installed as cli program, the auto-deploy should install everytime Hugo and then compile the code.
