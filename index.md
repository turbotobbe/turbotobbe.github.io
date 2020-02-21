---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---

## Pages
{% for p in site.pages %}
### [{{ p.title }}]({{ p.url | relative_url }})
{{ p.date | date_to_string }} {{ p.author }}
{{ p.excerpt }}
{% endfor %}

- - - 
{{ assign p = about }}
### [{{ p.title }}]({{ p.url | relative_url }})
{{ p.date | date_to_string }} {{ p.author }}
{{ p.excerpt }}

## Blog
{% for post in site.posts %}
### [{{ post.title }}]({{ post.url | relative_url }})
{{ post.date | date_to_string }} {{ post.author }}
{{ post.excerpt }}
{% endfor %}
