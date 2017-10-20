%rebase('base.tpl', Page_Title='Registration Form Test')
<h1>Registration Form Test</h1> 
<p>Отыщите баги в представленной форме. По найденным багам в разделе <a href="/bugtrecker" target="_blank">BugTracker</a> заведите репорт</p>      
<form action="/register_submit" style='text-align: left' method="post">
  
  <div>
    <label class="desc" id="title1" for="Field1">
		ФИО
	</label>
    <div>
      <input id="Field1" required placeholder=" Бажный Петр Петрович" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="birth">
		Дата рождения
	</label>
    <div>
		<select id="BirthDay" name="BirthDay" class="field select medium" tabindex="11"> 
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
		  <option value="5">5</option>
		  <option value="6">6</option>
		  <option value="7">7</option>
		  <option value="8">8</option>
		  <option value="9">9</option>
		  <option value="10">10</option>
		  <option value="11">11</option>
		  <option value="12">12</option>
		  <option value="13">13</option>
		  <option value="14">14</option>
		  <option value="15">15</option>
		  <option value="16">16</option>
		  <option value="17">17</option>
		  <option value="18">18</option>
		  <option value="19">19</option>
		  <option value="20">20</option>
		  <option value="22">22</option>
		  <option value="22">22</option>
		  <option value="23">23</option>
		  <option value="24">24</option>
		  <option value="25">25</option>
		  <option value="26">26</option>
		  <option value="27">27</option>
		  <option value="28">28</option>
		  <option value="29">29</option>
		  <option value="30">30</option>
		  <option value="31">31</option>
    </select>
	<select id="Birth_month">
		<option key="1">Января</option>
		<option key="2">Февраля</option>
		<option key="3">Марта</option>
		<option key="4">Апреля</option>
		<option key="5">Мая</option>
		<option key="7">Июля</option>
		<option key="8">Августа</option>
		<option key="9">Сентября</option>
		<option key="10">Октября</option>
		<option key="12">Декабря</option>
		<option key="11">Ноября</option>
	</select>				
	<input required id="Birth_year" size="4" maxlenght="8"> года
    </div>
  </div>
    
	<div>
    <label class="desc" id="title1" for="FieldPhone">
		Телефон
	</label>
    <div>
      <input required id="Field1" placeholder=" +7(123)456-78-90" name="FieldPhone" type="tel" class="field text fn" value="" size="21" tabindex="1" maxlength="10">
    </div>
  </div>
	
  <div>
    <label class="desc" id="title3" for="Field3">
      Email
    </label>
    <div>
      <input required id="Field3" placeholder=" mail@domen.com" name="Field3" type="email" spellcheck="false" value="" maxlength="255" tabindex="3"> 
	</div>
  </div>
    
  <div>
    <label class="desc" id="title4" for="Field4">
      Немного о себе
    </label>
  
    <div>
      <textarea id="Field4" name="Field4" spellcheck="true" rows="7" cols="30" tabindex="4" pattern="[А-ЯЁа-яё]+"></textarea>
    </div>
  </div>
    
  <div>
    
      <label class="desc" id="title5">
        Ваш пол
      </label>
      
      <div>
      	<input required id="radioDefault_5" name="Field5" type="hidden" value="">
      	<div>
      		<input id="Field5_0" name="sexM" type="radio" value="male" tabindex="5" checked="checked">
      		<label class="choice" for="Field5_0">Мужской</label>
      	</div>
        <div>
        	<input required id="sex_f" name="Field5" type="radio" value="female" tabindex="6">
        	<label class="choice" for="Field5_1">Женский</label>
        </div>
      </div>
  </div>
  
  <div>
      <label id="title6" class="desc">
        Интересующие специальности
      </label>
      <div>
      	<input required id="Field6" name="Field6" type="checkbox" value="tester" tabindex="8">
      	<label class="choice" for="Field6">Инженер тестирования ПО</label>
      </div>
      <div>
      	<input required id="Field7" name="Field7" type="checkbox" value="coder" tabindex="9">
      	<label class="choice" for="Field7">Разработчик ПО</label>
      </div>
      <div>
      	<input required id="Field8" name="Field8" type="checkbox" value="auto" tabindex="10" disabled>
      	<label class="choice" for="Field8">Инженер автоматизации тестирования</label>
      </span>
      </div>
      <div>
      	<input required id="Field8" name="Field8" type="checkbox" value="sisadmin" tabindex="10">
      	<label class="choice" for="Field8">Системный администратор</label>
      </span>
      </div>
  </div>
  
  <div>
		<label class="desc" id="title106" for="Field106">
			Страна постоянного проживания
		</label>
    <div>
    <select required id="Field106" name="Field106" class="field select medium" tabindex="11"> 
      <option value="1">Россия</option>
      <option value="2">Казахстан</option>
      <option value="3">Англия</option>
	  <option value="4">Голландия</option>
	  <option value="5">Китай</option>
	  <option value="6">Япония</option>
	  <option value="7">Нидерланды</option>
    </select>
    </div>
  </div>
  
  <div>
    <label class="desc" id="title1" for="password">
		Введите пароль
	</label>
    <div>
      <input id="password" required name="password" type="password" class="field text fn" value="" size="10" tabindex="1">
    </div>
  </div>

  <div>
    <label class="desc" id="title1" for="retryPass">
		Повторите пароль
	</label>
    <div>
      <input id="retryPass" required name="retryPass" type="text" class="field text fn" value="" size="10" tabindex="1">
    </div>
  </div>
  <div>
	<p style="color:red; text-align: center; font-style: italic">Звездочкой отмечены поля, обязательные для заполения</p>
</div>
  
  <div>
		<div>
  		<input id="saveForm" name="saveForm" type="submit" value="Сохранить">
    </div>
</div>

  
</form>		
