# redirectBack

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors)

## Installation

`box install redirectBack`

## Usage

```cfc
// handlers/Main.cfc
component {
	function plainRedirect( event, rc, prc ) {
		redirectBack();
	}

	function redirectWithAdditionalParameters( event, rc, prc ) {
		redirectBack( /* takes anything setNextEvent takes */ );
	}
}
```

Uses the ColdBox's flash storage to store the last request.  If there is no last request, redirects to "" (empty string).
## Contributors

Thanks goes to these wonderful people ([emoji key](https://github.com/kentcdodds/all-contributors#emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
| [<img src="https://avatars1.githubusercontent.com/u/2583646?v=4" width="100px;"/><br /><sub>Eric Peterson</sub>](https://github.com/elpete)<br />[💻](https://github.com/elpete/redirectBack/commits?author=elpete "Code") [📖](https://github.com/elpete/redirectBack/commits?author=elpete "Documentation") |
| :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Contributions of any kind welcome!
