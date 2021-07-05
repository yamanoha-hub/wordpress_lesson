<div class="myposthead">
  <h1><?php the_archive_title(); ?></h1>
  <?php if(is_category()): ?>
    <p>CATEGORY ARCHIVE</p>
  <?php elseif(is_month()): ?>
    <p>MONTHLY ARCHIVE</p>
  <?php endif; ?>
</div>


