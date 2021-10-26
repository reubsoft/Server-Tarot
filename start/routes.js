'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URLs and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/', () => {
  return { API: 'Pocket Magic Tarot.' }
})
Route.post('/deck', 'PrevisionController.storeDeck');
Route.post('/card', 'PrevisionController.storeCard');
Route.post('/create', 'PrevisionController.store');
Route.get('/show/:id', 'PrevisionController.show');
Route.get('/all', 'PrevisionController.index');