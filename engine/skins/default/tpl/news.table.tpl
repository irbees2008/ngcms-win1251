{% if (handler == 'by.category') %}
{% if category.icon.purl %}<img src="{{ category.icon.purl }}"/><br/>{% endif %}
<div class="newsShort">
	<div class="newsShortText">
{% for entry in getCategoryTree(category.id) %}
     {% if (entry.level == (category.level+1)) %}
	 <a href="{{ entry.link }}" title="{{ entry.cat }}" ><img src="{{ entry.icon }}" width="50"/> </a>
	 {% endif %}
{% endfor %}
</div></div>
{{ category.info }}
{% endif %}
{% for entry in data %}
{{ entry }}
{% endfor %}
{{ pagination }}