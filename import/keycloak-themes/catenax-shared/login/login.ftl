<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
        <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
            <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
                <#if realm.password>
                <div class="signup-container__body-parent">
                    <div class="signup-container__body">
                        <div>
                        <img class="user-icon" src="${url.resourcesPath}/images/user.svg" alt="" />
                        <h4>Catena-X Account</h4>
                        <#--  <h4>Create Your Catena-X Account</h4>  -->
                        <#--  <p>
                            To create your account and join the catena-X automotive network,
                            please enter the password you received via text-message.
                        </p>  -->
                        </div>
                        <div>
                        <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                            <#--  <div class="form-control">
                            <label>Company</label>
                            <input
                                autocomplete="off"
                                placeholder="Enter company name"
                                id="companyName"
                                name="name"
                                type="text"
                                autofocus
                                required
                            />
                            </div>  -->
                            <div class="form-control">
                            <label>Email</label>
                            <input
                                autocomplete="off"
                                placeholder="Enter email"
                                id="username"
                                name="username"
                                type="text"
                                autofocus
                                required
                            />
                            </div>
                            <div class="form-control">
                            <label>Password</label>
                            <div class="relative-position">
                                <input
                                autocomplete="off"
                                placeholder="Enter password"
                                id="password"
                                name="password"
                                type="password"
                                autofocus
                                required
                                />
                                <!-- <img src="${url.resourcesPath}/images/eyeShow.svg" alt="" /> -->
                                <#--  <a onclick="myFunction()">  -->
                                <#--  <img id="img" src="${url.resourcesPath}/images/eyeShow.svg" alt=""  -->
                                /></a>

                                <#--  <p class="note">
                                Your password was sent to you via text message.
                                </p>  -->
                            </div>
                            </div>
                            <div class="form-control-button">
                            <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                            <button name="login" type="submit" id="kc-login">Login</button>
                            
                            </div>
                        </form>
                        </div>
                        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
                            <div class="gray-bg">
                            <#--  <p>
                                Already have an active membership?<a href="#">Log in</a>. More
                                information in our <a href="#">help section</a>.
                            </p>  -->
                            <p>
                                Need an account? <a href="${url.registrationUrl}">Sign Up</a>
                            </p>
                            </div>
                        </#if>
                    </div>
                <div>
                </#if>   
                </div>
                </div> 
    </#if>

</@layout.registrationLayout>
