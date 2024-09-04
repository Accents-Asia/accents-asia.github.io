---
layout: default
title: Alumni Spotlight
permalink: /alumni-spotlight
navitem: false
dropdown: true
nav-order: 1
---
<div class="row row-cols-1 row-cols-md-4 g-4">
  {% for alumn in site.data.alumni %}    
    <div class="col">
      {% include alumn_card.html image=alumn.image name=alumn.name url=alumn.pdf txt=alumn.issue year=alumn.year dest="Author Information" %}
    </div>  
  {% endfor %}
</div>