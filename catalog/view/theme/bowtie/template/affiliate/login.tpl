<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="breadcrumb">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h2><?php echo $heading_title; ?></h2>
      </div>
      <div class="col-md-4">
        <ul>
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>
  </div>
</div><!--/.breadcrumb-->
<div class="container">
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-md-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-md-9'; ?>
    <?php } else { ?>
      <?php $class = 'col-md-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <?php echo $text_description; ?>
      <div class="login-content">
        <div class="left">
          <h2><?php echo $text_new_affiliate; ?></h2>
          <div class="content"><?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
        </div>
        <div class="right">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <h2><?php echo $text_returning_affiliate; ?></h2>
            <div class="content">
              <p><?php echo $text_i_am_returning_affiliate; ?></p>
              <b><?php echo $entry_email; ?></b><br />
              <input type="text" name="email" value="<?php echo $email; ?>" />
              <br />
              <br />
              <b><?php echo $entry_password; ?></b><br />
              <input type="password" name="password" value="<?php echo $password; ?>" />
              <br />
              <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
              <br />
              <input type="submit" value="<?php echo $button_login; ?>" class="button" />
              <?php if ($redirect) { ?>
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </div>
          </form>
        </div>
      </div>
      <?php echo $content_bottom; ?>
      <?php echo $column_right; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>