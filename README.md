<h1 align="center">Pokedex</h1>

<p align="center">  
🗡️ Application for managing Pokémons.
</p>

## Open API

<img src="https://user-images.githubusercontent.com/24237865/83422649-d1b1d980-a464-11ea-8c91-a24fdf89cd6b.png" align="right" width="21%"/>

Pokedex using the [PokeAPI](https://pokeapi.co/) for constructing RESTful API.<br>
PokeAPI provides a RESTful API interface to highly detailed objects built from thousands of lines of data related to Pokémon.

## Functionalities:
* Fan registration
* Registration of new Pokemons
* Newsletter

## Development

#### Pre-requisites:
* IntelliJ Lombok plugin
* Java 17
* Gradle

#### Technologies:
* [Java](https://www.java.com/pt-BR/)
* [Gradle](https://gradle.org/)
* [Spring](https://spring.io/)
* [Terraform](https://www.terraform.io/)
* [AWS](https://aws.amazon.com/pt/?nc2=h_lg)

#### Integration Tests
Execute integration tests
```bash
$ make integration-tests
```

#### Unit Tests
Execute unit tests
```bash
$ make unit-tests
```

#### Execute Tests
Execute all tests
```bash
$ make test
```

#### Running

From now on, each dependency is a container.
The following is an example of what you need to run the service:

```bash
$ make run
```

## Endpoints
Under construction

* GET localhost:8080/health