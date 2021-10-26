'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class DeckSchema extends Schema {
  up () {
    this.create('decks', (table) => {
      table.increments()
      table.string('name', 150).notNullable().unique()
      table.timestamps()
    })
  }

  down () {
    this.drop('decks')
  }
}

module.exports = DeckSchema
