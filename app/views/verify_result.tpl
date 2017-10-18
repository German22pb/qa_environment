%rebase('base.tpl', Page_Title='Bugtracker')
<h1>Verifying results</h1>

%for result in results :
%	try:
%		teamName = result[0].get('author')
		<h2 style="margin-top:30px;">Report of {{teamName}}</h2>
		<table cellspacing="0"> <!-- cellspacing='0' is important, must stay -->

		<!-- Table Header -->
		<thead>
			<tr>
				<th>Number</th>
				<th>Summary</th>
				<th>Issue type</th>
				<th>Project</th>
				<th>Priority</th>
				<th>Author</th>
				<th>Assigned</th>
				<th>Description</th>
			</tr>
		</thead>
	<!-- Table Header -->

	<!-- Table Body -->
		<tbody>
			<tr>
%		i = 0		
%		for issue in result :
%			i = i + 1
%			project = issue.get('project')
%			issue_type = issue.get('issue_type')
%			summary = issue.get('summary')
%			priority = issue.get('priority')
%			author = issue.get('author')
%			description = issue.get('description')
%			assigned = issue.get('assigned')
%			if i % 2 == 0 :
				<tr class="even">
%			else :
				<tr>
%			end
					<td>{{i}}</td>
					<td>{{summary}}</td>
					<td>{{issue_type}}</td>
					<td>{{project}}</td>
					<td>{{priority}}</td>
					<td>{{author}}</td>
					<td>{{assigned}}</td>
					<td>{{description}}</td>
				</tr><!-- Table Row -->
%		end
		</tbody>
		<!-- Table Body -->

	</table>
%	except:
%		continue
%end
%end

<form method='POST' action='/verifyresult/clear' style="display:inline;">
<button class="btn btn-success btn-lg btn-block" type="submit" style="width:auto !important; display: inline; margin-top:20px;">Clear results</button>
</form>
