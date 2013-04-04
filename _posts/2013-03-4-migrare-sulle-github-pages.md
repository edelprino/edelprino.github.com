---
layout: page
title: Ho migrato sulle github pages
---
Era da un po' che mi ripromettevo di fare questo "passo" e stasera dopo tanto posticipare, ecco qua.
La migrazione non è stata del tutto indolore, due orette per prendere confidenza con Jekyll e aggiustare il vecchio layout, qualche tempo ancora per ri-configurare i DNS, Repository e il gioco è fatto.
Ho mandato così in pensione il "mio" VPS, preso su hetzner.de ben due anni fa.

Perché ho fatto questo "trasloco"? *In primis* la praticità, con un **git push origin master** aggiorno il sito. Sicuramente il costo, da buon genovese, seppur il prezzo del vps era molto competitivo quello di github lo è ancora di più essendo gratis. Sulla macchina, inoltre, ci girava soltanto questo blog, gli esperimenti ormai li faccio su macchine virtuali.

Una volta configurati i files di templating, esportati i post (jekyll offre anche tool a posta), creato il repository su github secondo le specifiche e aggiunto il file CNAME che indica a quale dominio puntare ho aggiornato il repository online e automaticamente github ha compilato e mandato online il sito.

Una soluzione sicuramente interessante per chi, come me, non scrive frequentemente ma vuole comunque avere un sito personale a costo zero, o quasi (se si ha un dominio).