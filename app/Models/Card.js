'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Card extends Model {

    deck () {
        return this.belongsTo('App/Models/Deck')
    }
}

module.exports = Card
