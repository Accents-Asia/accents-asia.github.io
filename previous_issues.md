---
title: Previous Issues
layout: blog
permalink: /previous-issues
navitem: true
exclude_search: false
nav-order: 2
---
  {%- if site.posts.size > 0 -%}
    {%- if page.list_title -%}
      <h2 class="post-list-heading">{{ page.list_title }}</h2>
    {%- endif -%}
    <ul class="post-list">
      {%- assign date_format = site.date_format | default: "%b %-d, %Y" -%}
      {%- for post in site.posts -%}
      <li style="list-style-type: none;">
        <!-- span class="post-meta">{{ post.date | date: date_format }}</span -->
        <h3 class="mt-3">
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.issue | escape }}
          </a>
        </h3>
        <ul>        
        {% for article in post.articles %}
          <li>
            {{ article.title }}
          </li>
        {% endfor %}        
        </ul>
        <!-- COMMENTED OUT TO REMOVE EXCERPTS
        <%- if site.show_excerpts -%>
          {{ post.excerpt }}
        <%- endif -%>
        -->
      </li>
      {%- endfor -%}
    </ul>
{%- endif -%}