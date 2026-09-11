---
topic: fql-get-mappings
---

<fql>
  from
    StructureDefinition
  where
    url = %canonical
  for
    differential.element
  select
    id, join mapping {name, map, comment}
  order by name
  select
    'Mapping name': name,
    'Concept id': map,
    'FHIR element': id,
    Comments: comment
</fql>