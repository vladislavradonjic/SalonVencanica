#Salon Vencanica WebApp

Ovo je prva verzija aplikacije za salon vencanica.

##Inicijalno generisanje aplikacije

Aplikacija je inicijalno generisana komandom:
```rails
rails new SalonVencanica -T --database=postgresql
```

Onda su komandama
```rails
rails db:create
rails db:migrate
```
generisane baze: SalonVencanica_development i SalonVencanica_test.

##Uspostavljanje kontrole verzije

Na lokalnoj masini je napravljen git repo (`git init`). Postoji i nalog na github.com.

gitignore vec sadrzi master key. to je za sada dovoljno.

##Generisan kostur za Appointment funkcionalnost

##Generisane staticke stranice _Home_, _About_, _Contact_
Routes su promenjene tako da je home sada root, i nema /pages/ u linku.

Podesen je dinamicki page tile.
Default value je u application controlleru.

Dodati linkovi za statičke stranice i zakazivanje novog termina.