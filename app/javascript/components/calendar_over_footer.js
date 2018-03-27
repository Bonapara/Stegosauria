var articleCalendar = document.querySelector('.articles-calendar');
var footer = document.querySelector('#footer');

function checkOffset() {
  function getRectTop(el){
    var rect = el.getBoundingClientRect();
    return rect.top;
  }

  if((getRectTop(articleCalendar) + document.body.scrollTop) + articleCalendar.offsetHeight >= (getRectTop(footer) + document.body.scrollTop) - 10)
    articleCalendar.style.position = 'absolute';
  if(document.body.scrollTop + window.innerHeight < (getRectTop(footer) + document.body.scrollTop))
    articleCalendar.style.position = 'fixed'; // restore when you scroll up

}

document.addEventListener("scroll", function(){
  checkOffset();
});
