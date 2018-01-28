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
