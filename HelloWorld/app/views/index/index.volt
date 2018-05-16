<div class="page-header">
    <h1>Congratulations!</h1>
</div>

<p>You're now flying with Phalcon. Great things are about to happen!</p>

<p>This page is located at <code>views/index/index.volt</code></p>

<p>This message comes from Controller: <?php echo $message ?> </p>
<p>and this message is from Volt Template Engine from Controller {{ message }}</p>
<p>Example Math: {{ (2 + 2) * 2 }}</p>
<p>Example Loop: <br/>
    {% for i in 1..5 %}
        {% if loop.first %}
            First number: {{ i }}
        {% endif %}
        <br/>{{ i }}
        {% if loop.last %}
            <br/> Last Loop number: {{ i }}
        {% endif %}
    {% endfor %}
</p>
{%  block switch_example %}
<p>
{% switch random %}
    {% case 0 %}
    {% case 1 %}
    {% case 2 %}
    {% case 3 %}
    {% case 4 %}
    {% case 5 %}
        random number is less than 5
    {% break %}
    {% default %}
        random number is bigger than 5, it's value is: {{ random }}
{% endswitch %}
</p>
{% endblock %}

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
