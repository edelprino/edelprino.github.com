---
layout: post
title: Ho migrato sulle github pages
---
Era da un po' che mi ripromettevo di fare questo "passo" e stasera dopo tanto posticipare, ecco qua.
La migrazione non è stata del tutto indolore, due orette per prendere confidenza con [Jekyll](http://jekyllrb.com) e aggiustare il vecchio layout, qualche tempo ancora per ri-configurare i DNS, il repository e il gioco è fatto.
Ho mandato così in pensione il "mio" VPS, preso su [Hetzner](http://www.hetzner.de) ben due anni fa.

Perché ho migrato? *In primis* la praticità, con un *git push origin master* aggiorno il sito. Sicuramente il costo, da buon genovese, seppur il prezzo del vps è molto competitivo quello di github lo è ancora di più essendo **gratis**. In fine il mantenimento, github pages si può considerare un pseudo-[paas](http://it.wikipedia.org/wiki/Platform_as_a_service) non mi devo più occupare di configurazione di virtual host, aggiornare pacchetti, riavviare servizi o riavviare server. Tramite questo sistema delego tutto a github. Io mi **preoccupo soltato di mantenere aggiornato** il blog.

I passi da eseguire per creare il sito sono:
- [Installare](https://github.com/mojombo/jekyll/wiki/install) Jeykyll in locale tramite ruby gem (per generare le anteprime).
- [Configurare](https://github.com/mojombo/jekyll/wiki/Usage) i file del layout.
- Importare i post (c'è anche un [tool di migrazione](https://github.com/mojombo/jekyll/wiki/blog-migrations) ).
- Creare il repository su github [secondo le specifiche](https://help.github.com/articles/user-organization-and-project-pages).
- Aggiungere il file [CNAME](https://help.github.com/articles/setting-up-a-custom-domain-with-pages), serve per gire a github quale dominio punterà al repository.
- Configurare i DNS con il nuovo IP a cui puntare.
- Committare le modifiche e sincronizzare il repository.

Una soluzione sicuramente interessante per chi, come me, non scrive frequentemente ma vuole comunque avere un sito personale a costo zero, o quasi se si ha un dominio.
