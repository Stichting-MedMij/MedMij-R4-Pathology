---
topic: fql-get-examples-multiple-meta-profile
---

<fql>
  from
    Resource
  where 
    meta.profile = (%canonical | %corecanonical)
  select
    Id: id,
    Link: link(%context)
</fql>