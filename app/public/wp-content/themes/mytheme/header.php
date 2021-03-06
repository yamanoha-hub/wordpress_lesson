<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
  <header class="myhead mycontainer">
    <div class="alignwide">
      <a href="<?php echo esc_url( home_url('/')); ?>">
        <?php bloginfo('name'); ?>
      </a>
      <p><?php bloginfo('description'); ?></p>
    </div>
  </header>
  <?php if( has_nav_menu('primary')): ?>
    <nav class="mynav">
      <div class="mycontainer">
        <div class="alignwide">
          <?php wp_nav_menu(array(
            'theme_location' => 'primary',
          )); ?>
        </div>
      </div>
    </nav>
  <?php endif; ?>

