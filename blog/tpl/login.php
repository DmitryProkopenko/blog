<form class="well form-inline" method="post" style="width: 263px; height: 30px;" >

  <input type="text" name="mail" class="input-small" placeholder="Email"/>
  
  <input type="password" name="pass" class="input-small" placeholder="Password"/>
  
  <button type="submit" class="btn">Enter</button>
  
  <span class="help-inline"><?=@$this->error?></span>
</form>