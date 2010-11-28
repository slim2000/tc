// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var ie = (document.all) ? true : false;

function resetForm()
{
    $('music-genre-search').getInputs('checkbox').invoke('setValue', false);
    $('date_release_year').options[0].selected = true;
    $('date_release_year_from').options[0].selected = true;
    $('date_release_year_to').options[0].selected = true;
    $('st_decade').options[0].selected = true;
    $('album-release').hide();
    $('custom-release-year').hide();
    $('release-by-decade').hide();
    $('custom_range_release_button').innerHTML = "+ Custom range"
    $('genre_menu_button').innerHTML = "+ Genre"
    $('release_button').innerHTML = "+ Release"
    $('decade_release_button').innerHTML = "+ By decade"
    filterEntityAndAttribute();
    $('entity-options').hide();
    $('attribute-options').hide();
    $('music-genre').hide();
    $('itunes-search').reset();
    $('result').innerHTML = '';
    $('q').focus();
}

function putTermValueToHiddenField(kind)
{
    if(kind == "release")
    {
        $('media').value = $('m').value;
        $('country').value = $('c').value;
        $('query').value = $('q').value;
    }
    else
    {
        $('hfmedia').value = $('m').value;
        $('hfcountry').value = $('c').value;
        $('hfquery').value = $('q').value;
    }
}

function putDecadeValueToHiddenField(kind)
{
    if(kind == "term")
        $('hf_decade').value = $('st_decade').value;
    else
        $('decade').value = $('st_decade').value;
}

function putGenreValueToHiddenField(first_id_name)
{
    if($('cbgenre_alternative').checked == true)
        $(first_id_name+'_alternative').value = $('cbgenre_alternative').value
    
    if($('cbgenre_hipHopRap').checked == true)
        $(first_id_name+'_hipHopRap').value = $('cbgenre_hipHopRap').value

    if($('cbgenre_rock').checked == true)
        $(first_id_name+'_rock').value = $('cbgenre_rock').value

    if($('cbgenre_newAge').checked == true)
        $(first_id_name+'_newAge').value = $('cbgenre_newAge').value

    if($('cbgenre_pop').checked == true)
        $(first_id_name+'_pop').value = $('cbgenre_pop').value

    if($('cbgenre_country').checked == true)
        $(first_id_name+'_country').value = $('cbgenre_country').value

    if($('cbgenre_bluegrass').checked == true)
        $(first_id_name+'_bluegrass').value = $('cbgenre_bluegrass').value

    if($('cbgenre_rnbsoul').checked == true)
        $(first_id_name+'_rnbsoul').value = $('cbgenre_rnbsoul').value

    if($('cbgenre_reggae').checked == true)
        $(first_id_name+'_reggae').value = $('cbgenre_reggae').value

    if($('cbgenre_heavymetal').checked == true)
        $(first_id_name+'_heavymetal').value = $('cbgenre_heavymetal').value

    if($('cbgenre_inspirational').checked == true)
        $(first_id_name+'_inspirational').value = $('cbgenre_inspirational').value

    if($('cbgenre_dance').checked == true)
        $(first_id_name+'_dance').value = $('cbgenre_dance').value

    if($('cbgenre_vocal').checked == true)
        $(first_id_name+'_vocal').value = $('cbgenre_vocal').value

    if($('cbgenre_world').checked == true)
        $(first_id_name+'_world').value = $('cbgenre_world').value

    if($('cbgenre_disney').checked == true)
        $(first_id_name+'_disney').value = $('cbgenre_disney').value

    if($('cbgenre_singersongwriter').checked == true)
        $(first_id_name+'_singersongwriter').value = $('cbgenre_singersongwriter').value

    if($('cbgenre_classical').checked == true)
        $(first_id_name+'_classical').value = $('cbgenre_classical').value

    if($('cbgenre_electronic').checked == true)
        $(first_id_name+'_electronic').value = $('cbgenre_electronic').value

    if($('cbgenre_soundtrack').checked == true)
        $(first_id_name+'_soundtrack').value = $('cbgenre_soundtrack').value
    
    if($('cbgenre_comedy').checked == true)
        $(first_id_name+'_comedy').value = $('cbgenre_comedy').value
}

function putReleaseYearValueToHiddenField(kind)
{
    if($('date_release_year').value != "")
        if(kind == "genre")
            $('rls_year').value = $('date_release_year').value
        else
            $('hf_release_year').value = $('date_release_year').value

    if($('date_release_year_from').value != "")
        if(kind == "genre")
            $('rls_year_from').value = $('date_release_year_from').value
        else
            $('hf_release_year_from').value = $('date_release_year_from').value

    if($('date_release_year_to').value != "")
        if(kind == "genre")
            $('rls_year_to').value = $('date_release_year_to').value
        else
            $('hf_release_year_to').value = $('date_release_year_to').value
}

function setDefaultValueOnReleaseCustomRangeAndDecade()
{
    $('date_release_year_from').options[0].selected = true;
    $('date_release_year_to').options[0].selected = true;
    $('st_decade').options[0].selected = true;
}

function setDefaultValueOnReleaseYearAndDecade()
{
    if($('date_release_year_from').options[0].selected == false && $('date_release_year_to').options[0].selected == false)
    {
        $('date_release_year').options[0].selected = true;
        $('st_decade').options[0].selected = true;
    }
}

function setDefaultValueOnReleaseCustomRangeAndReleaseYear()
{
    $('date_release_year_from').options[0].selected = true;
    $('date_release_year_to').options[0].selected = true;
    $('date_release_year').options[0].selected = true;
}

function changeLabelReleaseButton()
{
    if($('release_button').innerHTML == "+ Release")
        $('release_button').innerHTML = "- Release"
    else
        $('release_button').innerHTML = "+ Release"
}

function changeLabelCustomRangeReleaseButton()
{
    if($('custom_range_release_button').innerHTML == "+ Custom range")
        $('custom_range_release_button').innerHTML = "- Custom range"
    else
        $('custom_range_release_button').innerHTML = "+ Custom range"
}

function changeLabelGenreMenuButton()
{
    if($('genre_menu_button').innerHTML == "+ Genre")
        $('genre_menu_button').innerHTML = "- Genre"
    else
        $('genre_menu_button').innerHTML = "+ Genre"
}

function changeLabelDecadeReleaseButton()
{
    if($('decade_release_button').innerHTML == "+ By decade")
        $('decade_release_button').innerHTML = "- By decade"
    else
        $('decade_release_button').innerHTML = "+ By decade"
}

function validate()
{
    return $('q').value != '';
}

function hideClass(objClass){
    //  This function will hide Elements by object Class

    var elements = (ie) ? document.all : document.getElementsByTagName('*');
    for (i=0; i<elements.length; i++){
        if (elements[i].className==objClass){
            elements[i].style.display="none"
        }
    }
}

function showClass(objClass){
    //  This function will show Elements by object Class
    var elements = (ie) ? document.all : document.getElementsByTagName('*');
    for (i=0; i<elements.length; i++){
        if (elements[i].className==objClass){
            elements[i].style.display="block"
        }
    }
}

function filterEntityAndAttribute() {
    switch ($('m').value)   {
        case 'all':
            hideClass("music-entity");
            hideClass("movie-entity");
            hideClass("software-entity");
            hideClass("tvshow-entity");
            hideClass("podcast-entity");
            hideClass("audiobook-entity");
            hideClass("music-video-entity");
            showClass("all-entity");

            hideClass("music-attribute");
            hideClass("movie-attribute");
            hideClass("apps-attribute");
            hideClass("tvshow-attribute");
            hideClass("podcast-attribute");
            hideClass("audiobook-attribute");
            hideClass("music-video-attribute");
            showClass("all-attribute");

            break;
        case 'music':
            showClass("music-entity");
            hideClass("movie-entity");
            hideClass("software-entity");
            hideClass("tvshow-entity");
            hideClass("podcast-entity");
            hideClass("audiobook-entity");
            hideClass("music-video-entity");
            hideClass("all-entity");

            showClass("music-attribute");
            hideClass("movie-attribute");
            hideClass("apps-attribute");
            hideClass("tvshow-attribute");
            hideClass("podcast-attribute");
            hideClass("audiobook-attribute");
            hideClass("music-video-attribute");
            hideClass("all-attribute");

            break;
        case 'software':
            hideClass("music-entity");
            hideClass("movie-entity");
            showClass("software-entity");
            hideClass("tvshow-entity");
            hideClass("podcast-entity");
            hideClass("audiobook-entity");
            hideClass("music-video-entity");
            hideClass("all-entity");

            hideClass("music-attribute");
            hideClass("movie-attribute");
            showClass("apps-attribute");
            hideClass("tvshow-attribute");
            hideClass("podcast-attribute");
            hideClass("audiobook-attribute");
            hideClass("music-video-attribute");
            hideClass("all-attribute");

            break;
        case 'movie':
            hideClass("music-entity");
            showClass("movie-entity");
            hideClass("software-entity");
            hideClass("tvshow-entity");
            hideClass("podcast-entity");
            hideClass("audiobook-entity");
            hideClass("music-video-entity");
            hideClass("all-entity");

            hideClass("music-attribute");
            showClass("movie-attribute");
            hideClass("apps-attribute");
            hideClass("tvshow-attribute");
            hideClass("podcast-attribute");
            hideClass("audiobook-attribute");
            hideClass("music-video-attribute");
            hideClass("all-attribute");

            break;
        case 'tvShow':
            hideClass("music-entity");
            hideClass("movie-entity");
            hideClass("software-entity");
            showClass("tvshow-entity");
            hideClass("podcast-entity");
            hideClass("audiobook-entity");
            hideClass("music-video-entity");
            hideClass("all-entity");

            hideClass("music-attribute");
            hideClass("movie-attribute");
            hideClass("apps-attribute");
            showClass("tvshow-attribute");
            hideClass("podcast-attribute");
            hideClass("audiobook-attribute");
            hideClass("music-video-attribute");
            hideClass("all-attribute");

            break;
        case 'podcast':
            hideClass("music-entity");
            hideClass("movie-entity");
            hideClass("software-entity");
            hideClass("tvshow-entity");
            showClass("podcast-entity");
            hideClass("audiobook-entity");
            hideClass("music-video-entity");
            hideClass("all-entity");

            hideClass("music-attribute");
            hideClass("movie-attribute");
            hideClass("apps-attribute");
            hideClass("tvshow-attribute");
            showClass("podcast-attribute");
            hideClass("audiobook-attribute");
            hideClass("music-video-attribute");
            hideClass("all-attribute");

            break;
        case 'audiobook':
            hideClass("music-entity");
            hideClass("movie-entity");
            hideClass("software-entity");
            hideClass("tvshow-entity");
            hideClass("podcast-entity");
            showClass("audiobook-entity");
            hideClass("music-video-entity");
            hideClass("all-entity");

            hideClass("music-attribute");
            hideClass("movie-attribute");
            hideClass("apps-attribute");
            hideClass("tvshow-attribute");
            hideClass("podcast-attribute");
            showClass("audiobook-attribute");
            hideClass("music-video-attribute");
            hideClass("all-attribute");

            break;
        case 'musicVideo':
            hideClass("music-entity");
            hideClass("movie-entity");
            hideClass("software-entity");
            hideClass("tvshow-entity");
            hideClass("podcast-entity");
            hideClass("audiobook-entity");
            showClass("music-video-entity");
            hideClass("all-entity");

            hideClass("music-attribute");
            hideClass("movie-attribute");
            hideClass("apps-attribute");
            hideClass("tvshow-attribute");
            hideClass("podcast-attribute");
            hideClass("audiobook-attribute");
            showClass("music-video-attribute");
            hideClass("all-attribute");

            break;
    }
}

function clicked(element)
{
    $('music-genre-search').getInputs('checkbox').invoke('setValue', false);
    $('date_release_year').options[0].selected = true;
    $('date_release_year_from').options[0].selected = true;
    $('date_release_year_to').options[0].selected = true;
    $('st_decade').options[0].selected = true;
    $('album-release').hide();
    $('custom-release-year').hide();
    $('release-by-decade').hide();
    $('custom_range_release_button').innerHTML = "+ Custom range"
    $('genre_menu_button').innerHTML = "+ Genre"
    $('release_button').innerHTML = "+ Release"
    $('decade_release_button').innerHTML = "+ By decade"
    $('music-genre').hide();

    prev_element = $('entity-options').getElementsByClassName('clicked-option');
    if(prev_element.length == 0)
        prev_element = $('attribute-options').getElementsByClassName('clicked-option');

    if(prev_element.length > 0)
        for(i = 0; i < prev_element.length; i++)
            prev_element[i].removeClassName("clicked-option")

    element.addClassName("clicked-option")
}

function removeClassOnOptions(kind)
{
    // if year custom range select tag both of them selected then remove class
    if(kind == "range")
    {
        range_selected = false;
        if($('date_release_year_from').value != "" && $('date_release_year_to').value != "")
            range_selected = true;
    }

    if(kind != "range" || range_selected)
    {
        elements_has_class = $('entity-options').getElementsByClassName('clicked-option');
        if(elements_has_class.length == 0)
            elements_has_class = $('attribute-options').getElementsByClassName('clicked-option');

        if(elements_has_class.length > 0)
            for(i = 0; i < elements_has_class.length; i++)
                elements_has_class[i].removeClassName("clicked-option")
    }
}