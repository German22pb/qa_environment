%rebase('base.tpl', Page_Title='Page not found')
%if statusCode == '404' :
%	message = 'Page Not Found'
%elif statusCode == '403' :
%	message = 'Forbidden'
%end
<h1>{{statusCode}}</h1>
<p>{{message}}</p>
