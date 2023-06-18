import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Filme extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idFilme?: number;

  @property({
    type: 'string',
    required: true,
  })
  titulo: string;

  @property({
    type: 'number',
    required: true,
  })
  duracao: number;

  @property({
    type: 'number',
    required: true,
  })
  ano: number;

  @property({
    type: 'string',
    required: true,
  })
  publicoAlvo: string;

  @property({
    type: 'string',
    required: true,
  })
  sinopse: string;

  @property({
    type: 'number',
    required: true,
  })
  idGenero: number;

  @property({
    type: 'number',
    required: true,
  })
  idRealizador: number;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Filme>) {
    super(data);
  }
}

export interface FilmeRelations {
  // describe navigational properties here
}

export type FilmeWithRelations = Filme & FilmeRelations;
