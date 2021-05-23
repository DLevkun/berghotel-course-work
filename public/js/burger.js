const burger = document.querySelector('.burger');

burger.addEventListener('click', function(){
  document.querySelector('.burger .first').classList.toggle('active');
  document.querySelector('.burger .second').classList.toggle('active');
  document.querySelector('.burger .third').classList.toggle('active');
  document.querySelector('.burger .fourth').classList.toggle('active');
  document.querySelector('.menu').classList.toggle('animate');
})