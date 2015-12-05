Posts:
<? foreach ($this->posts as $key => $value) {?>

<h1><a href="/?post/<?=$value['id']?>"><?=$value['title']?></a></h1>

<div><?=nl2br($value['post'])?></div>
<?if ($this->user){?>
<span class="btn-group">

<a href="/?edit/<?=$value['id']?>" class="btn btn-mini">
<i class="icon-pencil"></i>Edit</a>

<a href="/?del/<?=$value['id']?>" class="btn btn-mini btn-danger" onclick="return confirm('Точно удалить?');">
<i class="icon-trash"></i>Delete</a>

</span>
	 
<?}?>
<?}?>