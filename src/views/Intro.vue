<template>
	<div id="intro">
		<transition name="logo-fade">
			<div id="content" v-if="show">
				<img
					v-if="state === 'initial'"
					id="logo"
					src="../assets/images/os.png"
				/>
				<p v-else id="power-text" v-italic>
					<img
						id="power-icon"
						:src="require('../assets/images/' + state + '.svg')"
					/>
					{{ text }}
				</p>
			</div>
		</transition>
	</div>
</template>

<script>
import { trans } from '@/translations';
import { settings } from '@/settings';

export default {
	name: 'l-intro',

	mounted() {
		if (this.state === 'initial') {
			if (document.head.dataset.wintype === 'secondary') {
				if (settings.disableIntro) {
					this.$router.push('/base/splash');
				} else {
					setTimeout(() => {
						this.$router.push('/base/splash');
					}, 2000);
				}

				return;
			}

			if (settings.disableIntro) {
				this.$router.push(
					settings.disableSplash ? '/base/login' : '/base/splash',
				);
				return;
			}

			this.show = true;

			setTimeout(() => {
				this.show = false;
				this.$router.push(
					settings.first
						? '/setup'
						: settings.disableSplash
						? '/base/login'
						: '/base/splash',
				);
			}, 2000);
		}
	},

	data() {
		return {
			show: false,
			state: this.$route.params.state,
			text: trans(this.$route.params.state),
		};
	},
};
</script>

<style lang="scss" scoped>
@import '../theme';

#intro {
	background-color: $outer-background;

	display: flex;
	align-items: center;
	text-align: center;
}

#content {
	margin-left: auto;
	margin-right: auto;
}

#logo {
	height: 250px;
}

#power-text {
	font-family: 'Lato', 'Noto Sans', serif;
	font-weight: normal;
	color: $outer-foreground;
	font-size: 58px;
}

.logo-fade-enter-active,
.logo-fade-leave-active {
	transition: opacity 1s;
}

.logo-fade-enter,
.logo-fade-leave-to {
	opacity: 0;
}

#power-icon {
	width: 50px;

	margin-bottom: -5px;
	margin-right: 4px;
}
</style>
