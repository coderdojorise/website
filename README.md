# CoderDojo London Website

This is the official repository for the new CoderDojo London's website: https://coderdojo.london

This `README` file should have a good short description on how to get you started, however, it is **incomplete** so let us know if you need any assistance by opening an issue.

## The project
The current project has a bespoke PHP framework which is currently being tested for public release, the project is helping build it. (More information at a later date).

### Folder Structure
The project has a predefined structure in order to make everything work as expected. A special `config` folder needs to be present at the same root level has this website repository, this config folder is used to store sensitive information such as API keys:
```
_ coderdojo.london (Root)
\__ website (This Repository)
\__ config (Configuration Store)
\__ vagrant-box (Place to store your vagrant box)
```
Inside this `config` folder you must create some files. For now only an `api_keys.php` file is needed. This file is used to store the **GitHub** and **MailChimp** API key values:
```php
<?php

// GitHub API
define('GITHUB_CLIENT_ID', '');
define('GITHUB_CLIENT_SECRET', '');

// MailChimp API
define('MAILCHIMP_API_KEY', '');
```
*It is fine if you leave these empty, however, stuff like the resources table and newsletter boxes will not work. As they use the API classes.*

### Technologies Used
The project uses various technologies, these include **Sass** for styling (`.scss`) and **Composer** for PHP dependencies.

#### Composer Dependencies
The project heavily relies on the following packages (found in the `composer.json` file):
- **Smarty 3** (http://www.smarty.net/)
- **GuzzleHttp** (http://guzzlephp.org)
- **AltoRouter** (http://altorouter.com/)
- **TempCache** (https://github.com/cajogos/php-temp-cache)
- **MailChimpAPI** (https://github.com/drewm/mailchimp-api)

## Collaborate
The project can be worked on by as many people as possible and we encourage you to help develop it by creating an issue or a pull request.

See the list of [main contributors here](CONTRIBUTORS.md).