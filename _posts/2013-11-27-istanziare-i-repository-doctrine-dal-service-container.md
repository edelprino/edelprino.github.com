---
published: true
title: Istanziare i Repository Doctrine dal Service Container
layout: post
---

Nella documentazione ufficiale di Doctrine e Symfony2 si legge che per poter ottenere il Repository di un'Entità o un Documento è necessario chiamare il metodo _getRepository_ sull' _ObjectManager_.

L' _ObjectManager_ ( _EntityManager_ o _DocumentManager_ ) attraverso il _RepositoryFactory_ creerà e restituirà un oggetto di tipo _ObjectRepository_.

Che succede però se volessimo utilizzare un Repository dentro un nostro servizio? Iniettare l'_ObjectManager_ renderebbe il codice difficilmente testabile siccome dovremmo "mockare" l' _ObjectManager_ e il metodo _getRepository_ e poi, ovviamente, il nostro Repository.

Una soluzione più semplice e facilmente implementabile è quella di far instanziare i Repository direttamente dal service container in modo da renderli in tutto e per tutto dei servizi facilmente iniettabili in altre classi e qiundi disaccoppiando maggiormente il codice.

Basterà inserire nel `services.yml` il seguente codice:

```acme_bundle.models.repository:
        class: Doctrine\ORM\EntityRepository
        factory_service: doctrine.orm.entity_manager
        factory_method:  getRepository
        arguments:
            - "AcmeBundle:ModelloProva"
```

In questo caso verrà istanziato un _EntityRepository_ standard per l'entità _ModelloProva_ dell'_AcmeBundle_.

Se però avessimo necessità di ricerce particolari possiamo estendere la classe base EntityRepository come spiegato nella [guida ufficiale](http://symfony.com/doc/current/book/doctrine.html#custom-repository-classes), basterà poi utilizzare lo stesso codice cambiando però il parametro `class`.

```acme_bundle.models.repository:
        class: AcmeBundle\Repository\ModelloProvaRepository
        factory_service: doctrine.orm.entity_manager
        factory_method:  getRepository
        arguments:
            - "AcmeBundle:ModelloProva"
```

That's all! Enjoy! ;)
