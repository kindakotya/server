<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Y? |e1t4Z_T5oy`kzX<z7z%;wH 67`4}g,](j?BP||ye1(N9^OF[GsF?Y?Q_!gkG');
define('SECURE_AUTH_KEY',  '?i`L%*)ks(.vI+u-+@a_9Lf,DD4SBu2_jXADp@-Ti$s4s3<DPO|3jA:)[jsMKuAC');
define('LOGGED_IN_KEY',    'aTL|I0K7*.wybya$op}-~<HK[bynXBhk-_A+opr+5J^:MM&*mz1wLKGSwY)SQ[Tw');
define('NONCE_KEY',        '5>y>,-.%:{bjD$u4;?qIkST+:Y|HrofziR-H`<z5:?Xw1Mz@,=<_WJF/=Ufq8!*:');
define('AUTH_SALT',        '9e!9-UCvMsH?UyMYZIoSR^$k%;>tX4GXr?|-NlKa]3tsohfteq|kz>D7jmD{#m{%');
define('SECURE_AUTH_SALT', 'P-$[(I^S*i|Yf>WH552+DaSY@-L^dwF(.,LNS(PgB}GtFvu{1~S(r[w*zTY8l._b');
define('LOGGED_IN_SALT',   'd8`yfEbDMhuC0+8MOQ]0U9V(*5UrKC(2Ww&q>3PaO3SO)h|{nI :.lK7o}m`-P}d');
define('NONCE_SALT',       'w-_P*R>@S>&zbqL`-IL*Fb&26M0KUZ9f+i/KPbM=>]%&[Oi52z*TvmML36}k$avk');


/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
