'use strict'


/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

const Deck = use('App/Models/Deck') 
const Card = use('App/Models/Card') 

/**
 * Resourceful controller for interacting with previsions
 */
class PrevisionController {
  /**
   * Show a list of all previsions.
   * GET previsions
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async index ({ request, response, view }) {
    try{
      const cards = await Card.query().with('deck').fetch();
      
      return response.json ({
        status: 'sucess',
        deck: cards
      });

    }catch(error){
      return response.status(500).json ({
        status: 'error',
        message: 'Ocorreu um erro inesperado!',
        technical: error,
      })
    } 

  }

  /**
   * Create/save a new prevision.
   * POST previsions
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */

   async store ({ request, response }) {
    
    const dataDeck = request.only (['name']);
    const dataCard = request.only (['prevision']);

    try{
      // teste nome
      const deckExists = await Deck.findBy('name', dataDeck.name)

      if (deckExists == null){
        const deckCard = await Deck.create(dataDeck);
        dataCard.deck_id = deckCard.id
      }
      else
        dataCard.deck_id = deckExists.id

      const newDeck = await Card.create(dataCard);

      return response.json ({
        status: 'sucess',
        deck: newDeck
      });

    }catch(error){
      return response.status(500).json ({
        status: 'error',
        message: 'Ocorreu um erro inesperado!',
        technical: error,
      })
    } 
  }
  

  /**
   * Create/save a new prevision.
   * POST previsions
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */

   async storeCard ({ request, response }) {
    
    const dataDeck = request.only (['name']);
    const dataCard = request.only (['prevision']);

    try{
      // teste nome
      const deckExists = await Deck.findBy('name', dataDeck.name)

      if (deckExists == null){
        return response.status(400).json ({
          status: 'error',
          message: 'Card não existe no deck!'
        });
      }

      dataCard.deck_id = deckExists.id
      const newDeck = await Card.create(dataCard);

      return response.json ({
        status: 'sucess',
        deck: newDeck
      });

    }catch(error){
      return response.status(500).json ({
        status: 'error',
        message: 'Ocorreu um erro inesperado!',
        technical: error,
      })
    } 
  }

  /**
   * Create/save a new prevision.
   * POST previsions
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */

  async storeDeck ({ request, response }) {
    
    const dataDeck = request.only (['name']);

    try{
      // teste nome
      const deckExists = await Deck.findBy('name', dataDeck.name)

      if (deckExists){
        return response.status(400).json ({
          status: 'error',
          message: 'Card já existe!'
        });
      }

      const newDeck = await Deck.create(dataDeck);
      return response.json ({
        status: 'sucess',
        deck: newDeck
      });

    }catch(error){
      return response.status(500).json ({
        status: 'error',
        message: 'Ocorreu um erro inesperado!',
        technical: error,
      })
    } 
  }

  /**
   * Display a single prevision.
   * GET previsions/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async show ({params, request, response, view}) {

    try{
      // Faz o relacionamento das tabelas 
      const cards = await Card.query().with('deck').where('deck_id','=' ,params.id).fetch()
      // Gera um número aleatório com base na quantidade de rows
      const randomCard = Math.floor((Math.random() * cards.size()));

      // retorna a posição escolhida aleatoriamente
      return response.json ({
        status: 'sucess',
        card: cards.rows[randomCard]
      });

    }catch(error){
      return response.status(500).json ({
        status: 'error',
        message: 'Ocorreu um erro inesperado!',
        technical: error,
      })
    } 

  }
  /**
   * Update prevision details.
   * PUT or PATCH previsions/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async update ({ params, request, response }) {
  }

  /**
   * Delete a prevision with id.
   * DELETE previsionsCard/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async destroyCard ({ params, request, response }) {
    try{

      const cardExists = await Card.find(params.id)

      if(cardExists){
        const deleted = await cardExists.delete()

        return response.json ({
          status: 'sucess',
          card: deleted
        });
      }

      return response.status(400).json ({
        status: 'error',
        message: 'Card não existe!'
      });

    }catch(error){
      return response.status(500).json ({
        status: 'error',
        message: 'Ocorreu um erro inesperado!',
        technical: error,
      })
    } 

  }
}

module.exports = PrevisionController
