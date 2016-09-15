# redish


### Forked from original code [redi.sh](https://github.com/crypt1d/redi.sh)

Redish is a primitive Redis client, written entirely in Bash. It allows you to read/write keys and sets from redis as if they were regular Bash variables.


## Instalation:
```bash
# All dibs
git clone https://github.com/CodeSh/redish
cd redish
sudo make install

# Or in DEBIAN/Ubuntu or Mint
wget https://github.com/CodeSh/redish/releases/download/redish/redish.deb
dpkg -i redish.deb
```
	


##Usage:

>By default redish reads input from stdin and interprets it as a variable or array (if -a is used).
>To avoid setting redis hostname and port number with each command, you can export REDIS_HOST and REDIS_PORT variables.

```
redish [-a] [-g <variable|array>] [-p <password>] [-H <hostname>] [-P <port>]

	-a              : Tells the script that we are working with arrays, instead of regular variables.
	-r <min,max>	: When used with -a, defines the range of elements to get from the array. Default is all (0,-1).
	-g <name>       : Get the variable/array specified by <name> and output it to stdout.
	-s <name>		: Set the variable/array specified by <name> with the input from stdin.
	-p <password>   : Use "AUTH <password>" before running the SET/GET command to authenticate to redis.
	-H <hostname>   : Specify a custom hostname to connect to. Default is localhost.
	-P <port>       : Specify a custom port to connect to. Default is 6379.
```

##Uninstall
```bash
# In redish folder
sudo make uninstall
```

##Example:

```shell
$ echo "this is a variable" | redish -s testvar
$ redish -g testvar
this is a variable
```

```shell
$ echo red green blue | redish -as Colors
$ redish -ag Colors
red
green
blue
```

License
----

MIT
