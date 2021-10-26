'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CardSchema extends Schema {
  up () {
    this.create('cards', (table) => {
      table.increments()
      table.integer('deck_id').unsigned().references('id').inTable('decks').onUpdate('CASCADE').onDelete('CASCADE')
      table.string('prevision', 1000).notNullable()
      table.timestamp('created_at', { useTz: true })
      table.timestamp('updated_at', { useTz: true })
    })
  }

  down () {
    this.drop('cards')
  }
}

module.exports = CardSchema
