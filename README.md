# NugetPush

Batch script aim at help reducing the time taken to deploy my nuget packages. 

It combines the two commands

```
nuget pack
```
and 
```
nuget push AppLogger.1.0.0.nupkg secretkey -Source https://api.nuget.org/v3/index.json
```

You also don't need to remember you secret key any longer, save it and pass the path to ```nugetpush``` while it handles the rest.


The two commands above is shorten to 

```nugetpush secretkey_path```

##Installation

Download the .bat file unto your machine. Add the path to the file to your environment variable.


##Usage 

nugetpush path_to_secret_key



