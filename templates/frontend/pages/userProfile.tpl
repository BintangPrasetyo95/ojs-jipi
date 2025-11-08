<?php
{**
 * templates/frontend/pages/userProfile.tpl
 *}
{include file="frontend/components/header.tpl" pageTitle="user.profile"}

<div class="page page_user_profile">
    {% comment %} <div class="profile-header"> {% endcomment %}
        <h1>{translate key="Profil"}</h1>
    </div>

    <form class="profile-form" id="profile" method="post" action="{url op="saveProfile"}" enctype="multipart/form-data">
        {csrf}

        {include file="common/formErrors.tpl"}

        <div class="profile-section">
            <h2>{translate key="user.profile.identity"}</h2>
            
            {* First Name *}
            <div class="form-group">
                <label class="form-label" for="firstName">
                    {translate key="user.firstName"}
                    <span class="required">*</span>
                </label>
                <input type="text" name="firstName" id="firstName" value="{$firstName|escape}" maxlength="40" required>
            </div>

            {* Last Name *}
            <div class="form-group">
                <label class="form-label" for="lastName">
                    {translate key="user.lastName"}
                    <span class="required">*</span>
                </label>
                <input type="text" name="lastName" id="lastName" value="{$lastName|escape}" maxlength="40" required>
            </div>
        </div>

        <div class="profile-section">
            <h2>{translate key="user.profile.contact"}</h2>
            
            {* Email *}
            <div class="form-group">
                <label class="form-label" for="email">
                    {translate key="user.email"}
                    <span class="required">*</span>
                </label>
                <input type="email" name="email" id="email" value="{$email|escape}" maxlength="90" required>
            </div>
        </div>

        <div class="profile-section">
            <h2>{translate key="user.profile.public"}</h2>
            
            {* Bio *}
            <div class="form-group">
                <label class="form-label" for="biography">
                    {translate key="user.biography"}
                </label>
                <textarea name="biography" id="biography" rows="5">{$biography|escape}</textarea>
            </div>
        </div>

        <div class="buttons">
            <button class="submit" type="submit">
                {translate key="common.save"}
            </button>
        </div>
    </form>
</div>

{include file="common/frontend/footer.tpl"}