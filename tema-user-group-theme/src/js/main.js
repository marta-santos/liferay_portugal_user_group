AUI().ready(
	'anim',
	'event-mouseenter',
	'event-outside',
	'liferay-navigation-interaction',
	'liferay-sign-in-modal',
	'transition',
	function(A) {
		
		// alert('main.js starting');
		
		var Lang = A.Lang;

		var BODY = A.getBody();

		var WIN = A.getWin();

		var navigation = A.one('#navigation');

		if (navigation) {
			navigation.plug(Liferay.NavigationInteraction);
		}

		var signIn = A.one('a#sign-in');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}

		var hamburguerNode = A.one('.hamburger-icon');

		if (hamburguerNode) {
			hamburguerNode.on(
				'click',
				function() {
					var icon = hamburguerNode.one('.icon-align-justify');
					icon.toggleClass('icon-chevron-left');
					BODY.toggleClass('opened');
					hamburguerNode.toggleClass('open');
				}
			);
		};

	}
);