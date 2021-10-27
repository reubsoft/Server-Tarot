'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CardsSchema extends Schema {
  up () {
    this.create('cards', (table) => {
      table.increments()
      table.integer('deck_id').unsigned().references('decks.id').onDelete('CASCADE')
      table.string('prevision', 1000).notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('cards')
  }
}

module.exports = CardsSchema