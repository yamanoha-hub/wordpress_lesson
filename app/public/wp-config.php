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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '0GpMfyC6kBR60+p5dggfnYqvMmUkHhLgbZUbt24KskSa9gaKVIHljZCjniBvwsQMO5+/G8JOAF6aiTePuY+KHg==');
define('SECURE_AUTH_KEY',  'exCSi5zxZMjXjuJwH53/BXYfHHYYpmLehFSiRgKpf1D1d05hO+MmKEOMQYiUIuS35pNKDJzM6TitvPVsdJWwQA==');
define('LOGGED_IN_KEY',    'MJ6xzD2Jow4Z7tBTRmSGbaGJUgqmPwLN+c46nBMx3Xxjksk7nEIUSPvvUS04qr+WwiODioEq87R+aqrYIM3BQQ==');
define('NONCE_KEY',        'Nq55mRbYy0K6dgCJyRF1G4UfkgLDrrQ0aSxeAYntEy0vcZinOohkR/Yml9wRlNOGrfia/2V7clHXUfgjc4cQjA==');
define('AUTH_SALT',        'DYR9CTcvACTZyElpkTM+9VUpCFc+GCgJoJYOTCD9K3weQOUeOPmZjbX8ZgWlCCZHgx/LBtm0/PaFaiiqg7BtCQ==');
define('SECURE_AUTH_SALT', 'al3Oblc+Ud/tZUK0WjIDt7VAdN/VS5ZFfZEkLWXRQ+DM+3G48SDB21B4odfL/U6NqW/ssGfHBMUPq8sQCHKYHw==');
define('LOGGED_IN_SALT',   'NDhVcm6RePR345+sQ9VlSR8bgffzb1tJlzhf/G7+8O53RjdZxzLkr+cmjsK9TGD+EYNqL2aI/FGEHwwAObNUDA==');
define('NONCE_SALT',       'o5wt+sYWPLO38dDLEtNYrNqRuiRM0uCIqRa8PJgbJ5H9vXre/1L7PBUBnogpvxx06WjYFetAsfOoUskSHutzgw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
