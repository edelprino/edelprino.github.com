---
published: true
title: Istanziare i Repository Doctrine dal Service Container
layout: post
---

Nella documentazione ufficiale di Doctrine e Symfony2 si legge che per poter ottenere il Repository di un'Entità o un Documento è necessario chiamare il metodo getRepository sull' ObjectManager.

L'ObjectManager (EntityManager o DocumentManager) attraverso il RepositoryFactory creerà e restituirà un oggetto di tipo ObjectRepository.

Che succede però se volessimo utilizzare un Repository dentro un nostro servizio? Iniettare l'ObjectManager renderebbe il codice difficilmente testabile siccome dovremmo "mockare" l'ObjectManager e e poi, ovviamente, il nostro Repository.

Una soluzione più semplice e facilmente implementabile è quella di far instanziare i Repository direttamente dal service container in modo da renderli in tutto e per tutto dei servizi facilmente iniettabili in altre classi e qiundi disaccoppiando maggiormente il codice.

Basterà inserire nel `services.yml` il seguente codice:

```
acme_bundle.models.repository:
    class: Doctrine\ORM\EntityRepository
    factory_service: doctrine.orm.entity_manager
    factory_method:  getRepository
    arguments:
        - "AcmeBundle:ModelloProva"
```

In questo caso verrà istanziato un EntityRepository per l'entità ModelloProva dell'AcmeBundle.

Se però avessimo necessità di ricerce particolari possiamo estendere la classe base EntityRepository come spiegato nella [guida ufficiale](http://symfony.com/doc/current/book/doctrine.html#custom-repository-classes), basterà poi utilizzare lo stesso codice cambiando però il parametro `class`.

```
acme_bundle.models.repository:
    class: AcmeBundle\Repository\ModelloProvaRepository
    factory_service: doctrine.orm.entity_manager
    factory_method:  getRepository
    arguments:
        - "AcmeBundle:ModelloProva"
```

That's all! Enjoy! ;)
