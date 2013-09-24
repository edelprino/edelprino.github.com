---
layout: post
title: Be asyncronous, be stateless
draft: true
---
Asincronicità e comunicazioni stateless sono i principi fondamentali per creare una buon applicativo scalabile.

### Asincronicità

Possiamo portare in background operazioni che non richiedono la sincronicità con la richiesta dell'utente, lavorazione di immagini, invio di email, richieste a HTTP...

### Stateless

Un protocollo si dice "stateless" quando ogni richiesta è indipendente da quelle precendenti.

L'asincronicità permette di avere applicazioni più veloci e reattive, i lavori "pensanti" sono delegati a "worker", veri e propri script che elaborano dati. L'invio di mail ad esempio è uno di quei lavori che è d'obbligo impostare in background. Non solo, anche la lavorazione delle immagini o l'elaborazione di grandi quantitativi di dati.
I lavori in background vengono gestiti tramite code. Le code sono particolari strutture dati di tipo FIFO (First In, First Out).

I protocolli stateless permettono invece di creare applicazioni scalabili. L'HTTP è un protocollo stateless, cioè, come detto in precedenza.
