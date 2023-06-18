import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Episodios extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idEpisodio?: number;

  @property({
    type: 'string',
    required: true,
  })
  Titulo: string;

  @property({
    type: 'number',
    required: true,
  })
  Duracao: number;

  @property({
    type: 'number',
    required: true,
  })
  idSerie: number;


  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Episodios>) {
    super(data);
  }
}

export interface EpisodiosRelations {
  // describe navigational properties here
}

export type EpisodiosWithRelations = Episodios & EpisodiosRelations;
