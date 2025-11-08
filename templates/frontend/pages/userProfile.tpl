<?php
{**
 * templates/user/editProfile.tpl
 *}
<div class="page page_user_profile">
    <h1>{translate key="user.profile.editProfile"}</h1>

    <form class="profile-form" id="profile" method="post" action="{url op="saveProfile"}" enctype="multipart/form-data">
        {csrf}

        <div class="profile-section">
            <h3>{translate key="user.profile.identity"}</h3>
            
            <div class="form-group">
                <label for="firstName">{translate key="user.firstName"}</label>
                <input type="text" name="firstName" id="firstName" value="{$firstName|escape}" maxlength="40" required>
            </div>

            <div class="form-group">
                <label for="lastName">{translate key="user.lastName"}</label>
                <input type="text" name="lastName" id="lastName" value="{$lastName|escape}" maxlength="40" required>
            </div>
        </div>

        <div class="profile-section">
            <h3>{translate key="user.profile.contact"}</h3>
            
            <div class="form-group">
                <label for="email">{translate key="user.email"}</label>
                <input type="email" name="email" id="email" value="{$email|escape}" maxlength="90" required>
            </div>
        </div>

        <div class="profile-section">
            <h3>{translate key="user.profile.public"}</h3>
            
            <div class="form-group">
                <label for="affiliation">{translate key="user.affiliation"}</label>
                <input type="text" name="affiliation" id="affiliation" value="{$affiliation|escape}" maxlength="255">
            </div>

            <div class="form-group">
                <label for="biography">{translate key="user.biography"}</label>
                <textarea name="biography" id="biography" rows="5">{$biography|escape}</textarea>
            </div>
        </div>

        <button type="submit" class="submit">
            {translate key="common.save"}
        </button>
    </form>
</div>