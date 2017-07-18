<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="catalog/view/theme/default/stylesheet/main.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

<header id="header">
		<div class="container1">
			<h1 class="logo">
				<?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
			</h1>
            <a id="menu-btn" href="javascript:;"></a>
            <nav class="top_menu">
            	<ul class="clearfix">
                 <?php 
                 $i=0;
                 foreach ($categories as $category) { 
                 $i=$i+1;
                         ?>
        <?php if ($category['children']) { 
               ?>
        <li id="xtt<?php echo $i; ?>" class=""><a href="<?php echo $category['href']; ?>" onMouseOver=clk("xtt<?php echo $i; ?>");clk1("xtt<?php echo $i-1; ?>") onMouseOut=clk1("xtt<?php echo $i+1; ?>");><?php echo $category['name']; ?><b class="caret2"></b></a>
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="sub_menu_ul xtt<?php echo $i; ?>"  onMouseOver=clk("xtt<?php echo $i; ?>") onmouseout=clk1("xtt<?php echo $i; ?>")>
                <?php foreach ($children as $child) { ?>
                <li onmouseout=clk1("xtt<?php echo $i; ?>")><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
                </ul>
            </nav>
            
            
<div class="topSearch">
	<div class="loginbar tr">
		<?php if ($logged) { ?>
            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
            <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
            <?php } else { ?>
            <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
            <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
            <?php } ?>
	</div>

<?php echo $search; ?>

            </div>
            

<div class="cartItem" id="cartIt">
	<a class="fl carted" href="<?php echo $shopping_cart; ?>">
      	<i class="icn-cart" id="end"></i>
          <span><?php echo $cart; ?> </span>
      
     </a>
</div>


		</div> <!--  container end  -->
    </header>
<div style="height:115px">

    </div>
