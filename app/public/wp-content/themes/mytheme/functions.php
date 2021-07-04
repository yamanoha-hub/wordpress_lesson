<?php 

	function mytheme_setup() {
		// (C) のCSSを有効化
		add_theme_support( 'wp-block-styles' );

    // 縦横比を維持したレスポンスを有効化
    add_theme_support('responsive-embeds');

    // (E)のCSSを有効化&エディタに読み込み
    add_theme_support('editor-style');
    add_editor_style('editor-style.css');


	}
	add_action( 'after_setup_theme', 'mytheme_setup' );
  
  function mytheme_enqueue() {
    // (D) テーマのcssを読み込み
    wp_enqueue_style(
      'mytheme-style',
      get_stylesheet_uri(),
      array(),
      filemtime(get_theme_file_path('style.css'))
    );
  }
  add_action('wp_enqueue_scripts', 'mytheme_enqueue');







