[TWIG]
<div class="blog-item wow fadeInUp" data-wow-duration="2s" data-wow-delay=".1s">
    <div class="row">
        <div class="col-lg-2 col-sm-2">
            <div class="date-wrap">
                <a class="date" datetime="{{ news.dateStamp|date(" d M Y, H:i ") }}" data-toggle="tooltip"
                    data-animation="false" data-delay='{"show": 100, "hide": 1000}' title="опубликованно">
                    <span class="date">
                        {{ "j" | LangDate(news.dateStamp) }}
                    </span>
                    <span class="month">
                        {{ "Q" | LangDate(news.dateStamp) }}
                    </span>
                </a>
            </div>
            {% if (news.flags.isUpdated) %}
            <div class="date-wrap">
                <a class="date" datetime="{{ news.dateStamp|date(" d M Y, H:i ") }}" data-animation="false"
                    data-delay='{"show": 100, "hide": 1000}' data-toggle="tooltip" title="обновленно">
                    <span class="date">
                        {{ "j" | LangDate(news.updateStamp) }}
                    </span>
                    <span class="month">
                        {{ "Q" | LangDate(news.updateStamp) }}
                    </span>
                </a>
            </div>
            {% endif %}
        </div>
        <div class="col-lg-10 col-sm-10">
            <div class="blog-img">
                {% if (p.xfields.demo.value) %}<a data-fancybox data-type="iframe" data-src="{{ p.xfields.demo.value }}"
                    data-toggle="tooltip" href="javascript:;" title="Нажми чтобы посмотреть демо">{% endif %}
                    {% if (p.xfields.pocter.count < 1) %}
                    <img src="{{ tpl_url }}/img/no_image.jpg" class="img-thumbnail" />
                    {% else %}
                    <img src="{{ p.xfields.pocter.entries[0].url }}" class="img-thumbnail" />
                    {% endif %}
                    {% if (p.xfields.demo.value) %}</a>{% endif %}
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2 col-sm-2 text-right">
            <div class="author">
                <a {% if pluginIsActive( 'uprofile') %}href="{{ news.author.url }}" {% endif %} data-toggle="tooltip"
                    title="Опубликовал {{ news.author.name }}">
                    {{ news.author.name }} </a> <i class="fa fa-user-o" aria-hidden="true"></i>
            </div>
            <ul class="list-unstyled">
                <li>
                    <a href="{{ news.categories.list[0].url }}" data-toggle="tooltip" title="Категория">
                        <em>
                            {{ news.categories.list[0].name }}
                        </em>
                    </a> <i class="fa fa-bars" aria-hidden="true"></i>
                </li>
            </ul>
            <div class="st-view">
                <ul class="list-unstyled">
                    <li>
                        {{ news.views }} <i class="fa fa-eye" aria-hidden="true" data-toggle="tooltip"
                            title="{{ news.views }} просмотров"></i>
                    </li>
                    <li>
                        {% if pluginIsActive('comments') %}
                        <a href="{{ news.url.full }}#comments" data-toggle="tooltip"
                            title="{comments-num} комментариев">
                            {comments-num}
                        </a> <i class="fa fa-comments-o" aria-hidden="true"></i> {% endif %}
                    </li>
                </ul>
                {% if pluginIsActive('rating') %}{{ news.rating }}{% endif %}
            </div>
        </div>
        <div class="col-lg-10 col-sm-10">
            <h2>
                <a href="{{ news.url.full }}">{{ news.title }}</a>
            </h2>
            <p>
                {{ news.short|truncateHTML(200,'...')|striptags }}
            </p>
            <a href="{{ news.url.full }}" data-toggle="tooltip" title="Читаем далее" class="btn btn-primary"><b>Читать
                    далее</b></a>
        </div>
    </div>
</div>
[/TWIG]
