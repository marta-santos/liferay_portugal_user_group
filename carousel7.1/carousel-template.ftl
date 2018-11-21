<#if Image.getSiblings()?has_content>

    <div id="myCarousel-<@portlet.namespace />" class="carousel slide" data-ride="carousel"> 
    <ol class="carousel-indicators"> <#list Image.getSiblings() as cur_img> 
    <li data-target="#myCarousel-<@portlet.namespace />" data-slide-to="${(cur_img?counter == 1)?then(0, (cur_img?counter - 1))}" class="${(cur_img?counter == 1)?then('active', '')}"></li> 
    </#list> 
    </ol> 
    <div class="carousel-inner"> 
    <#list Image.getSiblings() as cur_innerImage> 
    <div class="carousel-item ${(cur_innerImage?counter == 1)?then('active', '')}"> 
    <img class="img-rounded" alt="${cur_innerImage.alt.getData()}" src="${cur_innerImage.getData()}"> 
    </div> 
    </#list> 
    </div> 
    <a class="carousel-control-prev" href="#myCarousel-<@portlet.namespace />" role="button" data-slide="prev"> 
    <span class="carousel-control-prev-icon" aria-hidden="true"></span> 
    <span class="sr-only">Previous</span> 
    </a> 
    <a class="carousel-control-next" href="#myCarousel-<@portlet.namespace />" role="button" data-slide="next"> 
    <span class="carousel-control-next-icon" aria-hidden="true"></span> 
    <span class="sr-only">Next</span> 
    </a> 
    </div> 
</#if>