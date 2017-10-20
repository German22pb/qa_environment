%rebase('base.tpl', Page_Title='API Test')
        <h1>API Test</h1>
        <p class="lead">Данная API принимает список обязательных параметров, таких как clientId, method, и paymentCountry и возвращает список в формате JSON ограничений сумм пополнений для клиента с указанным набором параметров. Данный метод является Stateful, то есть для него требуется сессия.</p>
<form action="/api_test/send" style='text-align: left' method="post">
  
 <div>
    <label class="desc" id="type" for="type">
		Method request
	</label>
    <div>
      <select id="type" name="type" class="field select medium" tabindex="11"> 
		  <option value="Post">Post</option>
		  <option value="Get">Get</option>
		  <option value="Link">Link</option>
		  <option value="Put">Put</option>
		  <option value="Purge">Purge</option>
		</select>
    </div>
  </div> 
  
 <div>
    <label class="desc" id="apiurl" for="apiurl">
		URL
	</label>
    <div>
      <input id="apiurl" required name="apiurl" type="text" class="field text fn" value="http://qa-env.com/api/test/getPaymentRestrictions" size="8" tabindex="1">
    </div>
  </div>
  <h3 style="text-align:center;">HEADER</h3>
  <div>
    <label class="desc" id="auth" for="auth">
		Authorization
	</label>
    <div>
      <input id="auth" required name="auth" type="text" class="field text fn" value="Basic d2LK55sds454dV4OnBhc3M=" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="session" for="session">
		X-Fx-Session-Id
	</label>
    <div>
      <input id="session" required name="session" type="text" class="field text fn" value="38e1715f3cacadfb4c23657abf2bd9543a2d3ab21b7581fa042681dc30cd5ae4c64357e168bff11856ba3c4438e12f1f3edcf96ca4da106429d8c093b188d855" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="content" for="content">
		Content-Type
	</label>
    <div>
      <input id="content" required name="content" type="text" class="field text fn" value="application/x-www-form-urlencoded" size="8" tabindex="1">
    </div>
  </div>
  <h3 style="text-align:center;">BODY</h3>
  
  <div>
    <label class="desc" id="btype" for="btype">
		Type 
	</label>
    <div>
      <select id="btype" name="btype" class="field select medium" tabindex="11"> 
		  <option value="text">Text</option>
		  <option value="json" selected>Json</option>
		  <option value="xml">Xml</option>
		  <option value="html">Html</option>
		</select>
    </div>
  </div> 
  
  
  <div>
    <label class="desc" id="body" for="body">
      Body
    </label>
  
    <div>
      <textarea id="body" name="body" spellcheck="true" rows="7" cols="30" tabindex="4">
      {"clientId":"15607004",
      "method":"credit_card",
      "paymentCountry":"RUS"
      }
      </textarea>
    </div>
  </div>
  
  <div>
		<div>
  		<input id="send" name="send" type="submit" value="Send request">
  		<input name="reset" type="reset" value="Reset">
    </div>
</div>

  
</form>		
