---
layout: post
title: Da quando ho smesso di commentare il codice
published: true
---

Un tempo, mi ricordo, se trovavo del codice poco commentato o non commentato del tutto, mi arrabbiavo. Mandavo accidenti a colui che non aveva avuto la decenza di scrivere qualche linea, una frase o anche solo due parole...

Dopo aver letto [Clean Code](http://www.amazon.it/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882) di Robert C. Martin (Uncle Bob) ho capito che i commenti, in realtà, non sono "cosa buona".

I nomi delle variabili, delle classi, degli oggetti, dei metodi dovrebbero essere esplicativi non dovrebbe esserci bisogno di ulteriori aggiunte.

In Clean Code viene dedicato un intero capitolo a questo *anti-pattern*:

> "L'uso dei commenti è quello di compensare il nostro fallimento nel creare codice comprensibile"

Sempre, Robert C. Martin, nel libro fa questo esempio:

	// Check to see if the employee is eligible for full benefits
	if (($employee->flags & HOURLY_FLAG) && ($employee->age > 65))

oppure

	if ($employee->isEligibleForFullBenefits())

In molti casi, come nell'esempio, basta creare un metodo che dica le stesse cose che si vogliono scrivere nel commento per rendere tutto più chiaro.

Citando Brian W. Kernighan and P. J. Plaugher:
> "Don’t comment bad code—rewrite it."

Quando sento la necessità di commentare il codice che ho appena scritto mi fermo e ragiono su come poterlo rendere più leggibile, estraendo metodi, scrivendo nomi di variabili più significative ed esplicite.

Adesso, quando trovo del codice poco commentato o non commetato del tutto, mi arrabbio, lo stesso. Mandando accidenti a colui che non ha avuto la decenza di scrivere del codice più leggibile...



