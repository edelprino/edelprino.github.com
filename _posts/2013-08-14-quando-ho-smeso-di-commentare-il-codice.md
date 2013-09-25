---
layout: post
title: Quando ho smesso di commentare il codice
draft: true
published: true
---

Un tempo, mi ricordo, se trovavo del codice poco commentato o non commentato del tutto, mi arrabbiavo. Mandavo accidenti a colui che non aveva avuto la decenza di scrivere qualche linea, una frase o anche solo due parole...

Dopo aver letto [Clean Code](http://www.amazon.it/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882) di Robert C. Martin (Uncle Bob) ho capito che i commenti, in realtà, non sono "cosa buona".

I nomi delle variabili, delle classi, degli oggetti, dei metodi dovrebbero essere esplicativi già di loro, non ci dovrebbe essere bisogno di ulteriori aggiunte.

In Clean Code viene dedicato un intero capitolo:

> "L'uso dei commenti è quello di compensare il nostro fallimento nel creare codice comprensibile"

Ovviamente per poter permettersi di **non scrivere** un commento è necessario essere sicuri che il codice sia comprensibile.

Faccio un esempio, è più facile capire
```
// Check to see if the employee is eligible for full benefits
if (($employee->flags & HOURLY_FLAG) && ($employee->age > 65))
```
oppure
```
if ($employee->isEligibleForFullBenefits())
```
in molti casi basta creare una funzione che descriva esattamente quello che si vorrebbe scrivere nel commento.



