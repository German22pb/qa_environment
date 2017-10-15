%rebase('base.tpl', Page_Title='Bugtracker')
<h1>bugtracker</h1>
<div style="margin-bottom:10px;">
<input class="btn btn-success btn-lg btn-block" style="width:auto !important; display: inline; margin:0;" type="submit" value="Send report" />
<a href="#win1" class="btn btn-success btn-lg btn-block" style="width:auto !important; display: inline; margin:0;">Create bug</a>
</div>
<!-- Модальное окно №1 -->
   <a href="#x" class="overlay" id="win1"></a>
   <div class="popup">
     <form action="/bugtracker/create" style='text-align: left' method="post">
  
 <div>
    <label class="desc" id="project" for="project">
		Project
	</label>
    <div>
      <select id="project" name="project" class="field select medium" tabindex="11"> 
		  <option value="API">API test</option>
		  <option value="Payment">Payment Form</option>
		  <option value="Registration">Registration Form</option>
		  <option value="Contact">Contact Form</option>
		  </select>
    </div>
  </div>
  
  <div>
    <label class="desc" id="issue_type" for="issue_type">
		Issue Type
	</label>
    <div>
      <select id="issue_type" name="issue_type" class="field select medium" tabindex="11"> 
		  <option value="Bug">Bug</option>
		  <option value="Task">Task</option>
		  <option value="Story">Story</option>
		  <option value="INC">INC</option>
		  </select>
    </div>
  </div>
  
  <div>
    <label class="desc" id="summary" for="summary">
		Summary
	</label>
    <div>
      <input id="summary" required name="summary" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="priority" for="triority">
		Priority
	</label>
    <div>
      <select id="priority" name="priority" class="field select medium" tabindex="11"> 
		  <option value="Blocker">Blocker</option>
		  <option value="Critical">Critical</option>
		  <option value="Major">Major</option>
		  <option value="Minor">Minor</option>
		  <option value="Trivial">Trivial</option>
		</select>
    </div>
  </div>
  
  <div>
    <label class="desc" id="author" for="author">
		Author
	</label>
    <div>
      <input id="author" required name="author" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="description" for="description">
      Description
    </label>
  
    <div>
      <textarea id="description" name="description" spellcheck="true" rows="7" cols="30" tabindex="4"></textarea>
    </div>
  </div>
  
  <div>
		<div>
  		<input id="create" name="create" type="submit" value="Create">
    </div>
</div>

  
</form>		
    <a class="close"title="Закрыть" href="#close"></a>
    </div>
<table cellspacing="0"> <!-- cellspacing='0' is important, must stay -->

	<!-- Table Header -->
	<thead>
		<tr>
			<th>Number</th>
			<th>project</th>
			<th>issue_type</th>
			<th>summary</th>
			<th>priority</th>
			<th>author</th>
			<th>description</th>
		</tr>
	</thead>
	<!-- Table Header -->

	<!-- Table Body -->
	<tbody>
		<tr>
% i = 0
% for issue in data :
%	i = i + 1
%	project = issue.get('project')
%	issue_type = issue.get('issue_type')
%	summary = issue.get('summary')
%	priority = issue.get('priority')
%	author = issue.get('author')
%	description = issue.get('description')
%	if i % 2 == 0 :
		<tr class="even">
%	else :
		<tr>
%	end
			<td>{{i}}</td>
			<td>{{project}}</td>
			<td>{{issue_type}}</td>
			<td>{{summary}}</td>
			<td>{{priority}}</td>
			<td>{{author}}</td>
			<td>{{description}}</td>
		</tr><!-- Table Row -->
%end
	
		

	</tbody>
	<!-- Table Body -->

</table>