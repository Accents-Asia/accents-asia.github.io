---
layout: issue
permalink: /current-issue
navitem: true
dropdown: false
nav-order: 1
title: Current Issue
issue: Volume 18 Issue 1, September 2024
articles:
  - title: "Interactional Analysis Uniting Scientific and Everyday Concepts in Teacher Development"
    author: "Daniel Hooper, Tokyo Kasei University, Amy Braun, Seto Solan Primary School, Mayumi Kako, TeruTeru English, Noriko Kurashita, Nagoya, University of Foreign Studies, Roberto Soto Prado, UPBEAT International School, Yuria Tajima, Shubun Gakuin High School, Shiori Watashima, Nagoya University of Foreign Studies"
    url: "/issues/18-1/Hooper_et_al.pdf"
    abstract: "This research paper investigates the integration of everyday and scientific concepts within language teacher reflective practice (RP), framed by sociocultural theory (SCT). SCT posits that both everyday knowledge, derived from personal experience, and scientific knowledge, rooted in culturally developed systems, inform our understanding of teaching practices. The study involves six graduate TESOL trainee teachers who participated in a RP intervention, comprising microteaching sessions and conversational analysis using Walsh’s (2006) SETT model. The intervention aimed to bridge the gap between teachers’ intuitive understanding of effective teaching and systematic insights provided by scientific concepts. Analysis of teachers’ data and peer reflections explores how these knowledge forms were integrated and their impact on professional development. The findings highlight a shift towards collaborative and data-driven reflection in RP, moving away from isolated, top-down approaches. This approach emphasizes the importance of integrating diverse knowledge sources to enhance teaching practices and ensure ongoing professional growth. By examining the interplay between everyday and scientific knowledge within RP, this study contributes to current discussions in SLA and education, offering insights into effective teacher development strategies. It underscores the relevance of SCT in guiding reflective practices that are both grounded in personal experience and enriched by broader educational theories, promoting more effective and informed teaching methodologies."
  - title: "'We're not superhuman': Job Crafting Techniques of Foreign English Teachers with Chronic Illness in Japan"
    author: "James Taylor, International College of Technology, Kanazawa"
    url: "/issues/18-1/Taylor.pdf"
    abstract: "Although chronic illness is increasingly widespread among teachers, how chronic illness impacts teachers remains largely under-investigated (Brown & Leigh, 2018). This qualitative study of four English teachers with chronic illness in Japan investigates their methods for attempting to bypass barriers created at work by their illnesses and the steps they take to ameliorate their situation. The data suggested that teachers employed a range of job crafting techniques (Berg, et al., 2013), such as altering or choosing not to do certain tasks, changing their interactions with others at work, and adjusting their thinking about work, tasks, and colleagues. These techniques helped the teachers reduce the impact of their illnesses. The findings of this study can act as a guide for teachers with chronic illness, in addition to raising awareness of teachers with chronic illness among the field of English language teaching in Japan."
tags: [jalt, teacher development, reflective practice, sociocultural theory, job crafting, chronic illness]
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
