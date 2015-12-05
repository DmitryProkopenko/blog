<?php

include "lib/db.php";
include "lib/base.php";

//$this->mysqli = new mysqli("localhost", "admin", "mysite123ddss", "blog");


new app(substr($_SERVER['REQUEST_URI'],2));

?>