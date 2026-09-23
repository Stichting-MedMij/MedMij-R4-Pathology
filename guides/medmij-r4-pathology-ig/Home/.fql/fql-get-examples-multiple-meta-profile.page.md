---
topic: fql-get-examples-multiple-meta-profile
---

<fql>
  from
    Resource
  where 
    meta.profile = (%canonical | %corecanonical)
  select
    Name: id.split('-').skip(2).join(' '),
    Link: link(%context)
</fql>