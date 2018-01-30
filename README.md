# browser_security

## [HTTP Strict Transport Security](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security)

The HTTP Strict-Transport-Security response header (often abbreviated as HSTS)  lets a web site tell browsers that it should only be accessed using HTTPS, instead of using HTTP.

### Syntax
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security
```
Strict-Transport-Security: max-age=<expire-time>
Strict-Transport-Security: max-age=<expire-time>; includeSubDomains
Strict-Transport-Security: max-age=<expire-time>; preload
```

[difference between HSTS and 301 redirect](https://security.stackexchange.com/questions/129273/whats-the-difference-between-using-hsts-and-doing-a-301-redirection)

## [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)

Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement or distribution of malware.

### Syntax
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy
```
Content-Security-Policy: <policy-directive>; <policy-directive>
```

### Alternative Meta Syntax
```
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; img-src https://*; child-src 'none';">
```

### Testing your policy
```
Content-Security-Policy-Report-Only: <policy-directive>; <policy-directive>
```
To ease deployment, CSP can be deployed in report-only mode. The policy is not enforced, but any violations are reported to a provided URI. Additionally, a report-only header can be used to test a future revision to a policy without actually deploying it.

## [X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)

The X-Frame-Options HTTP response header can be used to indicate whether or not a browser should be allowed to render a page in a <frame>, <iframe> or <object> . Sites can use this to avoid clickjacking attacks, by ensuring that their content is not embedded into other sites.

### Syntax
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
```
X-Frame-Options: DENY
X-Frame-Options: SAMEORIGIN
X-Frame-Options: ALLOW-FROM https://example.com/
```

## [Same Origin Policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)
The same-origin policy restricts how a document or script loaded from one origin can interact with a resource from another origin. It is a critical security mechanism for isolating potentially malicious documents.

## [CORS](https://developer.mozilla.org/en-US/docs/HTTP/Access_control_CORS)
A resource makes a cross-origin HTTP request when it requests a resource from a different domain, 
or port than the one which the first resource itself serves. For example, an HTML page served from 
http://domain-a.com makes an `<img>` src request for http://domain-b.com/image.jpg.

For security reasons, browsers restrict cross-origin HTTP requests initiated from within scripts. 
For example, XMLHttpRequest and Fetch follow the same-origin policy. So, a web application 
using XMLHttpRequest or Fetch could only make HTTP requests to its own domain.

## [Cross-site Request Forgery CSRF](https://www.owasp.org/index.php/Cross-Site_Request_Forgery_%28CSRF%29)
Cross-Site Request Forgery (CSRF) is an attack that forces an end user to execute unwanted actions 
on a web application in which they're currently authenticated. CSRF attacks specifically target state-changing requests,
not theft of data, since the attacker has no way to see the response to the forged request.

## [Subresource Integrity](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity)
Subresource Integrity (SRI) is a security feature that enables browsers to verify that files they fetch 
(for example, from a CDN) are delivered without unexpected manipulation. It works by allowing you to provide 
a cryptographic hash that a fetched file must match.

## [HTTP Public Key Pinning (HPKP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Public_Key_Pinning)
The Public Key Pinning Extension for HTML5 (HPKP) is a security feature that tells a web client to
associate a specific cryptographic public key with a certain web server to decrease the risk of MITM attacks 
with forged certificates.

https://wiki.mozilla.org/Security/Guidelines/Web_Security
