Alpine Linux docker image with the Symfony installer set up with "symfony" as entrypoint.

```bash
$ docker run --rm -it -v $(pwd):/data jimlei/alpine-symfony new my_project_name
```

#### Alias
Add to `~/.bashrc`
```bash
alias symfony='docker run --rm -it -v $(pwd):/data jimlei/alpine-symfony'
```

Load the changes
```bash
$ source ~/.bashrc
```

Usage
```bash
$ symfony new my_project_name
```
