# RubyAcademy 2013 - Testing


## Slides

Per una rapida introduzione al testing con ruby apri nel browser il file slides/index.html


## Esempi

Requisiti: installare la gemma rspec: ``` gem install rspec```

Scrivere il corpo dei test nei seguenti file:
  * specs/array_spec.rb making all tests pass
  * specs/string_specs.rb making all tests pass

* Countdown: quanti giorni mancano a Natale?
  * Obiettivo: gli stub ci aiutano a rendere i test sulle date affidabili fissando la data ad un valore predefinito
  * ompito a casa: cosa succede se oggi è il 27 dicembre? Scrivere dei test che espongano il problema e successivamente correggere il codice eliminando il bug


## Test doubles

Vedi il file test_doubles.md
Per eseguire il codice degli esempi inclusi in test_doubles.md scrivere nel terminale:
```rspec spec/mock_example_spec.rb```
e
```rspec spec/stub_example_spec.rb```