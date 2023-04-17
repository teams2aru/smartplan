<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
$routes->get('/index.php', 'Home::index');
$routes->get('/apply', 'Home::signup');
$routes->get('/signin', 'LoginController::index');
$routes->get('/logout', 'LoginController::logout');
$routes->match(['get', 'post'], 'LoginController/save', 'LoginController::save');
$routes->match(['get', 'post'], 'LoginController/login', 'LoginController::login');

$routes->get('/dashboard', 'DashController::index');

$routes->get('/products', 'ProductController::index');
$routes->get('/addproduct', 'ProductController::add');
$routes->match(['get', 'post'], 'ProductController/save', 'ProductController::save');
$routes->get('/product/delete/(:num)', 'ProductController::delete/$1');
$routes->get('/product/viewproduct/(:num)', 'ProductController::viewProduct/$1');
$routes->get('/product/reviewidea/(:num)', 'ProductController::reviewidea/$1');
$routes->post('/product/approveidea', 'ProductController::approveidea');
$routes->get('/product/tag/(:num)', 'ProductController::tag/$1');
$routes->post('/product/tagusers', 'ProductController::taguser');
$routes->get('/product/invest/(:num)', 'ProductController::invest/$1');
$routes->match(['get', 'post'], 'InvestmentController/index', 'InvestmentController::index');

$routes->get('/users', 'LoginController::users');
$routes->get('/adduser', 'LoginController::createuser');
$routes->match(['get', 'post'], 'LoginController/store', 'LoginController::store');

$routes->get('/investors', 'LoginController::investors');
$routes->get('/approvedideas', 'ProductController::approvedideas');

$routes->get('/messages', 'MessagesController::index');
$routes->get('/messages/compose', 'MessagesController::compose');
$routes->get('/message/read/(:num)', 'MessagesController::read/$1');
$routes->match(['get', 'post'], 'messages/send', 'MessagesController::send');

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
