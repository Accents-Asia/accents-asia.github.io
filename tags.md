---
layout: default
title: Keywords Cloud
exclude_search: true
---
<script>
    $(document).ready(function () {    
        var tags = [];
        {%- for tag in site.tags -%}
            {% assign tag_slug = tag[0] | sluggify %}                    
            {% assign weight = site.tags[tag_slug] | size %}
            {% assign title = tag[0] | downcase %}
            tags.push({
                text: "{{ title }}",
                weight: '{{ weight }}',
                link: '{% include tag_url.html tag=title %}?w={{ weight }}'
            });
        {%- endfor %}

        $('.wordcloud').jQCloud(tags, {
            'shape': 'rectangular'
        });    
    });    
</script>

<div class="wordcloud col" style="height: 400px;"></div>