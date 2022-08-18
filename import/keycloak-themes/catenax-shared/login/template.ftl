<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false displayWide=false showAnotherWayIfPresent=true bodyDivClass="login-container">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/images/favicon.ico" />
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="${properties.kcBodyClass!}">
    <div class="signup-container">
      <div class="signup-container__header">
        <a href="#">
          <img src="${url.resourcesPath}/images/cx-text.svg" width="200" />
        </a>
        <div>
          <ul>
            <li>
              <a id="lnkHelp" href="${properties.helpUrl}">Help</a>
            </li>
            <li>|</li>
            <li>
              <a id="lnkDE" href="#" class="active">DE</a>
            </li>
            <li>
              <a id="lnkEN" href="#">EN</a>
            </li>
          </ul>
        </div>
      </div>
      <#nested "form">
      <div class="signup-container__footer">
        <nav>
          <div>
            <a id="lnkHelp" href="${properties.helpUrl}">Help</a>
          </div>
          <div>
            <a id="lnkContact" href="${properties.contactUrl}">Contact</a>
          </div>
          <div>
            <a id="lnkImprint" href="${properties.imprintUrl}">Imprint</a>
          </div>
          <div>
            <a id="lnkPrivacy" href="${properties.privacyPolicyUrl}">Privacy</a>
          </div>
          <div>
            <a id="lnkTerms" href="${properties.termsUrl}">Terms of Service</a>
          </div>
          <div>
            <a id="lnkCookies" href="${properties.cookiePolicyUrl}">Cookie Policy</a>
          </div>
          <div>
            <a id="lnkLicenseNote" href="${properties.thirdPartyLicensesUrl}"
              >Third Party Licenses</a
            >
          </div>
        </nav>
        <span class="copyright">Copyright © Catena-X Automotive Network</span>
      </div>
    </div>
</body>
</html>
</#macro>
