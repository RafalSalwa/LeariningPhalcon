<div class="page-header">
    <h1>Congratulations!</h1>
</div>

<p>You're now flying with Phalcon. Great things are about to happen!</p>

<p>This page is located at <code>views/index/index.volt</code></p>

<p>This message comes from Controller: <?php echo $message ?> </p>
<p>and this message is from Volt Template Engine from Controller <?= $message ?></p>
<p>Example Math: <?= (2 + 2) * 2 ?></p>
<p>Example Loop: <br/>
    <?php $v172927821364664259301iterator = range(1, 5); $v172927821364664259301incr = 0; $v172927821364664259301loop = new stdClass(); $v172927821364664259301loop->self = &$v172927821364664259301loop; $v172927821364664259301loop->length = count($v172927821364664259301iterator); $v172927821364664259301loop->index = 1; $v172927821364664259301loop->index0 = 1; $v172927821364664259301loop->revindex = $v172927821364664259301loop->length; $v172927821364664259301loop->revindex0 = $v172927821364664259301loop->length - 1; ?><?php foreach ($v172927821364664259301iterator as $i) { ?><?php $v172927821364664259301loop->first = ($v172927821364664259301incr == 0); $v172927821364664259301loop->index = $v172927821364664259301incr + 1; $v172927821364664259301loop->index0 = $v172927821364664259301incr; $v172927821364664259301loop->revindex = $v172927821364664259301loop->length - $v172927821364664259301incr; $v172927821364664259301loop->revindex0 = $v172927821364664259301loop->length - ($v172927821364664259301incr + 1); $v172927821364664259301loop->last = ($v172927821364664259301incr == ($v172927821364664259301loop->length - 1)); ?>
        <?php if ($v172927821364664259301loop->first) { ?>
            First number: <?= $i ?>
        <?php } ?>
        <br/><?= $i ?>
        <?php if ($v172927821364664259301loop->last) { ?>
            <br/> Last Loop number: <?= $i ?>
        <?php } ?>
    <?php $v172927821364664259301incr++; } ?>
</p>

<p>
<?php switch ($random): ?>
<?php case 0: ?>
<?php case 1: ?>
<?php case 2: ?>
<?php case 3: ?>
<?php case 4: ?>
<?php case 5: ?>
random number is less than 5
<?php break; ?>
<?php default: ?>
random number is bigger than 5, it's value is: <?= $random ?>
<?php endswitch ?>
</p>


<h2>Sign up using this form(mocked only)</h2>

<?php echo $this->tag->form("/signup"); ?>

<p>
    <label for="name">Name</label>
    <?php echo $this->tag->textField("name"); ?>
</p>

<p>
    <label for="email">E-Mail</label>
    <?php echo $this->tag->textField("email"); ?>
</p>

<p>
    <?php echo $this->tag->submitButton("Register"); ?>
</p>

</form>
