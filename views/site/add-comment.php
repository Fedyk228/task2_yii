<?php

use yii\bootstrap5\Html;

?>

<h1>Add comment</h1>

<div class="row">
    <div class="col-sm-6 offset-3">
        <?= Html::beginForm([''], 'post'); ?>
            <div class="py-1">
                <label for="" class="form-label fw-bold">Author:</label>
                <input type="text" class="form-control" name="author">
            </div>
            <div class="py-1">
                <label for="" class="form-label fw-bold">Text:</label>
                <textarea name="text" rows="3" class="form-control"></textarea>
                <input type="hidden" name="post_id" value="<?= $_GET['id'] ?>">
            </div>
            <div class="py-1">
                <button class="btn btn-success">Add comment</button>
            </div>
        <?= Html::endForm(); ?>

    </div>
</div>