### Configuration Management microservice

In the world of product development, we often face this scenario where different features should be enabled or disabled for different customers. One of the very common strategy is to create branches, one for each customer and modify code accordingly. This becomes clumsy over a period of time and hence the other solution is this.

This is a client-specfic configuration management microservice. This basically enlists all the clients in the `Client` model. All the available features or customisations are listed in a `scf` table. SCF stands for System Configuration Function.

The value for each client can be set using the `ScfConfiguration` model. 


Ruby Version

```
$ ruby -v
ruby 2.3.4p301 (2017-03-30 revision 58214) [x86_64-darwin17]
```

Rails version
```
$ rails -v
Rails 5.1.4
```

