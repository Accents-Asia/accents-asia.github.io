---
layout: issue
permalink: /current-issue
navitem: true
dropdown: false
nav-order: 1
title: Current Issue
issue: Volume 17 Issue 2, October 2023
articles:
  - title: "Yokohama JALT My Share June 2023 [Special Issue]"
  - title: "Foreword"
    author: "Alexander L. Selman, Rikkyo University"
  - title: "Cliffhanger Script Performances"
    author: "Theodore A. Bratton, Ferris University, Yokohama, Japan"
  - title: "Using Automatic Speech Recognition to Improve Pronunciation and Promote Self-Directed Learning in English Language Learners"
    author: "Morgen Livingston, Salesio Junior and Senior High School, Kanagawa, Japan"
  - title: "Stimulating Students' Extrinsic and Intrinsic Motivation and Sustaining their Attention Through an Online Quiz Tool"
    author: "Tomoe Sato, Yokohama City University, Yokohama, Japan"
    url: "http://www.issues.accentsasia.org/issues/17-2/Selman_YoJALT_MyShare_June_2023.pdf"
    abstract: "In previous years, the Yokohama JALT MyShare sessions had a tech focus in June and a general focus in December. This year we removed that distinction, and decided that we would aim at publishing twice a year, while the ideas are still hot and fresh in the authors’ minds. This semester’s Special Issue consists of three papers in which presenters from our June event share their ideas with those of you who could not attend our hybrid event (and provide more detail to  those of you who did!). As ever, they are pertinent and practical, and especially relevant to language teachers in Japanese high schools and universities."
date: 2023-09-01
categories: [Research Article, Special Issue]
tags: [jalt, pronunciation, self-directed learning, motivation, attention, online quiz tool]
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
{{ article.abstract }}
{% endif %}
{% endfor %}
