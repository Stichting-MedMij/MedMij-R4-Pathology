---
topic: fql-get-lm-mappings
---

<fql>
  from
    StructureDefinition
  where
    url = %canonical
  for
    differential.element
  select
    id, join mapping {identity, map, comment}
  order by identity
  select
    'Mapping name': identity,
    'Concept id': map,
    'Logical element': id.replace('path-lm-', ''),
    Comments: comment
</fql>