---
layout: issue
permalink: /current-issue
navitem: true
dropdown: false
nav-order: 1
title: Current Issue
---
{%- for lastpost in site.posts %}
  {%- if forloop.first -%}
<h2>{{ lastpost.issue }}</h2>
    {%- for articles in lastpost.articles -%}
      {%- if articles.title %}
<h3>{{ articles.title }}</h3>
      {%- endif -%}

      {%- if articles.author -%}
<p>{{ articles.author }}</p>
      {%- endif -%}

      {%- if articles.abstract -%}
<h4>Abstract</h4>
<p>{{ articles.abstract }}</p>
      {%- endif -%}

      {%- if articles.url -%}
<p><a href="{{ articles.url | relative_url }}">View Article</a></p>
      {%- endif -%}
    {%- endfor -%}
  {%- endif -%}
{%- endfor -%}
