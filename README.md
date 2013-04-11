# RubyAcademy 2013 - Testing


## Slides

Per una rapida introduzione al testing con ruby apri nel browser il file **slides/index.html**


## Esempi

Requisiti: installare la gemma rspec:

```bash
$ gem install rspec
```

Scrivere il corpo dei test nei seguenti file:
  * specs/array_spec.rb making all tests pass
  * specs/string_specs.rb making all tests pass

FizzBuzzBar: Test Driven Development con Rspec

Countdown: quanti giorni mancano a Natale?
  * Obiettivo: gli stub ci aiutano a rendere i test sulle date affidabili fissando la data ad un valore predefinito
  * Compito a casa: cosa succede se oggi è il 27 dicembre? Scrivere dei test che espongano il problema e successivamente correggere il codice eliminando il bug

Il codice sta in ```examples/xmas_countdown.rb```, mentre il file con i test da integrare sta in ```spec/xmas_countdown_spec.rb```

Per eseguire i test:
```bash
$ rspec examples/spec/xmas_countdown_spec.rb --color --format documentation
```




## Test doubles

Vedi il file test_doubles.md (guardatelo direttamente da github così lo vedrete formattato).

Per eseguire il codice degli esempi inclusi in test_doubles.md scrivere nel terminale:

```bash
$ rspec examples/spec/mock_example_spec.rb
```

e

```bash
$ rspec examples/spec/stub_example_spec.rb
```
