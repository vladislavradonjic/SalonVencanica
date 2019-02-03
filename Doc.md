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
Na lokalnoj masini je napravljen git repo (`git init`).