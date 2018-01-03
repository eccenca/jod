# JOD - Jekyll Ontology Documentation

The JOD project generates documentation web pages from Ontology turtle documents.

JOD is based on [jekyll](jekyllrb.com) as well as the wonderful [jekyll-rdf plugin](https://github.com/white-gecko/jekyll-rdf) and creates web pages which use [Bootstrap 4](https://getbootstrap.com/) as a front-end component library.

## Status

In development as a proof of concept project at [eccenca](https://www.eccenca.com).

## Usage

Currently, you need to clone and tune this repo in order to produce something useful.
This creates files und `_site` based on the turtle document `graph.ttl` in the `rdf-data` directory:

```
> git clone https://github.com/eccenca/jod.git; cd jod
...
> bundle install
...
> JEKYLL_ENV=production bundle exec jekyll serve --watch
Configuration file: /home/jod/_config.yml
            Source: /home/jod
       Destination: /home/jod/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
Configuration file: /home/jod/_config.yml
classMapped: http://www.w3.org/2002/07/owl#Ontology : http://schema.mobivoc.org/ : ontology.html
                    done in 1.898 seconds.
 Auto-regeneration: enabled for '/home/jod'
    Server address: http://127.0.0.1:4000//
  Server running... press ctrl-c to stop.
```

## Screenshot

![Screenshot](./Screenshot.png "Screenshot")

## Related Projects

- [Widoco](https://github.com/dgarijo/Widoco), a Wizard for documenting ontologies
- [LODE](https://github.com/essepuntato/LODE), Live OWL Documentation Environment to convert OWL ontologies into HTML human-readable pages
- [specgen](https://github.com/zazi/specgen) and other tools from the [Generating HTML documentation of OWL](https://www.w3.org/2011/prov/wiki/Generating_HTML_documentation_of_OWL) page
- [OntoWiki's](http://ontowiki.net/) [site extension](https://github.com/AKSW/site.ontowiki), a HTML Content Publishing system on top of Linked Data

