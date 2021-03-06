%rebase('base.tpl', Page_Title='Payment Form')
<h1>Payment Form</h1>
<p>Отыщите баги в представленной форме. По найденным багам в разделе <a href="/bugtracker" target="_blank">BugTracker</a> заведите репорт</p>
<div class="col-xs-12 credit-card">


<!-- CREDIT CARD FORM STARTS HERE -->
<div class="panel panel-default credit-card-box">
<div class="panel-heading display-table">
<div class="row display-tr">
<h3 class="panel-title display-td">Account Limit: 300 $</h3>
<div class="display-td">                            
<img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
</div>
</div>                    
</div>
<div class="panel-body">
<form role="form" id="payment-form" action="/payment-form/deposit" style="text-align:left;" method="post">
<div class="row">
<div class="col-xs-12">
<div class="form-group">
<label for="cardNumber">CARD NUMBER</label>
<div class="input-group">
<input pattern="^[ 0-9]+$" class="form-control" name="cardNumber" placeholder="Valid Card Number" autocomplete="cc-number" required="" autofocus="">
<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
</div>
</div>                            
</div>
</div>
<div class="row">
<div class="col-xs-12">
<div class="form-group">
<label for="cardHolder">CARD HOLDER</label>
<input type="text" class="form-control" name="cardHolder" style="width:100%">
</div>
</div>                        
</div>
<div class="row">
<div class="col-xs-7 col-md-7">
<div class="form-group">
<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
<input type="tel" class="form-control" name="cardExpiry" placeholder="MM / YY" autocomplete="cc-exp" required="">
</div>
</div>
<div class="col-xs-5 col-md-5 pull-right">
<div class="form-group">
<label for="cardCVC">CV CODE</label>
<input pattern="^[ 0-9]+$" class="form-control" name="cardCVC" placeholder="CVC" autocomplete="cc-csc" required="">
</div>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<div class="form-group">
<label for="amount">AMOUNT</label>
<input pattern="^[ 0-9]+$" class="form-control" name="amount">
</div>
</div>                        
</div>
<div class="row">
<div class="col-xs-12">
<button class="btn btn-success btn-lg btn-block" type="submit">Betala nu</button>
</div>
</div>
<div class="row" style="display:none;">
<div class="col-xs-12">
<p class="payment-errors"></p>
</div>
</div>
</form>
</div>
</div>            
<!-- CREDIT CARD FORM ENDS HERE -->


</div>
