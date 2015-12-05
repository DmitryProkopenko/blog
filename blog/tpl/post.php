<h1><?=$this->post['title']?></h1>
<div>
<?=$this->post['post']?>
</div>
<?if ($this->user){?>
<span class="btn-group">

<a href="/?edit/<?=$this->post['id']?>" class="btn btn-mini">
<i class="icon-pencil"></i>Edit</a>

<a href="/?del/<?=$this->post['id']?>" class="btn btn-mini btn-danger" onclick="return confirm('Точно удалить?');">
<i class="icon-trash"></i>Delete</a>

</span>
<?}?>
<br />

<div class="comments">
<? foreach ($this->comments as $c){?>
<div class="comment"><b><?=$c['name']?></b> : <?=$c['post']?>
<? if ($this->user){?> <a href="/?delComment/<?=$c['id']?>/<?=$this->post['id']?>" class="btn-mini btn-danger" onclick="return confirm('Точно удалить?');"><i class="icon-trash"></i>Delete</a><?}?>
</div>    
<?}?>
<br />
<h4>Add comment:</h4>
<form action="/?addComment/<?=$this->post['id']?>" class="form-inline well" method="POST" style="width: 636px;">
<label>Your name:</label> <input type="text" name="name" value="<?=@$_COOKIE['name'];?>"/> <label>Comment:</label>
<input type="text" name="post"/> <button type="submit" class="btn btn-primary">Enter</button>
</form>
</div>