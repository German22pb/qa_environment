$(document).ready(function(){
var key=$('#selectWayOfStudy').find('option:selected').attr('key');

var neccessaryFields=['Name','Surname','WorkingExperience','Phone','testersBooks','markupBooks','programmersBooks'];

var realyImportantFields=['Name','Surname','WorkingExperience','Phone','Mail','Course'];

var validationPassed;

function showquestions(){
$('#wayOfStudy').children().hide();

key=$('#selectWayOfStudy').find('option:selected').attr('key');

if(key==1)$('#testers').show();

if(key==2)$('#programmers').show();

if(key==3)$('#interface').show();

if(key==4)$('#markup').show();

}

function changesex(){
if($('#female').attr('checked'))$('#male').prop('checked',false);

}

function getsex(){
if($('#female').attr('checked'))return'Женский';

else return'Мужской';

}

function getTalantsAndBooks(){
var checks=document.getElementsByName("Skills");

var result="";

for(i=0;

i<checks.length;

i++){
if(checks[i].checked){
result+=checks[i].value+", ";

}

}

return result+". Прочтенные книги: "+$('#testersBooks').val()+$('#programmersBooks').val()+$('#interfaceBooks').val();

}

function collectinfo(){
localStorage.PersonalInfo=$('#Name').val()+" "+$('#Surname').val()+" "+$('#Patronymic').val()+" "+"Дата рождения: "+$('#Birth_day').find('option:selected').val()+" "+$('#Birth_month').find('option:selected').val()+" "+$('#Birth_year').val()+". Пол: "+getsex()+". Контакты: "+$('#Mail').val()+";

 "+$('#Phone').val();

localStorage.Education=$('#University').val()+", направление: "+$('#Stream').val()+", специализация: "+$('#Specialization').val();

localStorage.Characteristics=$('#WorkingExperience').val()+" "+$('#Skills').val();

localStorage.WayOfStudy=$('#selectWayOfStudy').find('option:selected').val();

localStorage.TalantsAndBooks=getTalantsAndBooks();

}

function submit(){
collectinfo();

location.replace('Result.htm');

}

function checkSubmit(){
validationPassed=true;

$('span.standartvalidation').hide();

for(var j in realyImportantFields){
if($("#"+realyImportantFields[j]).val()=="")validationPassed=false;

}

if(validationPassed){
alert($('#Surname').val()+" "+$('#Name').val()+" "+$('#Patronymic').val()+", ваша заявка принята!");

submit();

}

else{
for(var i in neccessaryFields){
if($("#"+neccessaryFields[i]).val()=="")$("#"+neccessaryFields[i]).parents().children('span.standartvalidation').show()}

}

}

function hideDays(){
$('#Birth_day').children().show();

var month=$('#Birth_month').find('option:selected').attr('key');

if((month==4)||(month==6)||(month==9)||(month==11)||(month==2)){
$('#Birth_day').children("option[key='31']").hide()}

if(month==2){
$('#Birth_day').children("option[key='30']").hide();

$('#Birth_day').children("option[key='29']").hide()}

}

$('#selectWayOfStudy').change(showquestions);

$('#sex').change(changesex);

$('#Birth_month').change(hideDays);

$('#submit').click(checkSubmit);

$("#Birth_year").keypress(function(e){
if(e.which!=8&&e.which!=0&&(e.which<48||e.which>57)){
$("#Birth_year").parents().children('span.inputvalidation').show().fadeOut("slow");

return false;

}

}

);

$("#Name").keypress(function(e){
if(e.which!=8&&e.which!=0&&e.which!=1025&&e.which!=1105&&e.which!=32&&(e.which<1040||e.which>1103)&&(e.which<224||e.which>239)){
$("#Name").parents().children('span.inputvalidation').show().fadeOut("slow");

return false;

}

}

);

$("#Surname").keypress(function(e){
if(e.which!=8&&e.which!=0&&e.which!=1025&&e.which!=1105&&e.which!=32&&(e.which<1040||e.which>1103)&&(e.which<224||e.which>239)){
$("#Name").parents().children('span.inputvalidation').show().fadeOut("slow");

return false;

}

}

);

$('span.standartvalidation').hide();

$('span.inputvalidation').hide();

}

);

