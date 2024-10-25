---
layout: issue
permalink: /current-issue
navitem: true
dropdown: false
nav-order: 1
title: Current Issue
issue: Volume 18 Issue 2, October 2024
articles:
  - title: "Yokohama JALT My Share 2024 [Special Issue]"
  - title: "Foreword"
    author: Alexander L. Selman, Rikkyo University
    url: "/issues/18-2/Selman_YoJALT_MyShare.pdf"
  - title: "Choosing Board Games for the ESL Classroom"
    author: Nicole Ballard, Meiji Gakuin University, Kanagawa, Japan
  - title: "A Debate-Centered Approach to Developing Students' Persuasive Communication and Critical Thinking Skills"
    author: Margalit Faden, Tokai University, Tokyo, Japan
  - title: "Creating SDG-Themed Proposals Using James Clear’s Atomic Habits"
    author: Ken Ikeda, Otsuma Women’s University, Tokyo, Japan. 
  - title: Teaching Academic Writing Across Proficiency Levels:A Genre-Driven Approach
    author: Tomoko Kojima, Keio University, Jikei University, Keio Futsubu Junior High School, Japan
    abstract: The Yokohama JALT MyShare sessions are held every year in June and December. This Special Issue consists of one paper from December 2023 and three from June 2024. Here, the presenters share their ideas with those of you who could not attend our hybrid events (and provide more detail to  those of you who did!). They contain practical ideas for language teachers to try out in their classrooms, and explanations to give more theoretical basis than is possible in the short My Share presentations. In this issue we learn about bringing games into the classroom, developing critical thinking skills through debate, connecting classes to Sustainable Development Goals, and supporting writing class with a genre-driven approach. 
tags: [jalt, teacher development, games]
---
{%- for article in page.articles %}
#### {{ article.title }}
{% if article.author %}
{{ article.author }}
{% endif %}
{% if article.url %}
[View Article]({{ article.url }})
{% endif %}
{% if article.abstract %}
#### Abstract
{{ article.abstract }}
{% endif %}
{% endfor %}
