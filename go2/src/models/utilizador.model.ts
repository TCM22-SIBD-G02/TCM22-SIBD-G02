import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Utilizador extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idUtilizador?: number;

  @property({
    type: 'string',
    required: true,
  })
  nomeUtilizador: string;

  @property({
    type: 'string',
    required: true,
  })
  password: string;

  @property({
    type: 'string',
    required: true,
  })
  email: string;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Utilizador>) {
    super(data);
  }
}

export interface UtilizadorRelations {
  // describe navigational properties here
}

export type UtilizadorWithRelations = Utilizador & UtilizadorRelations;
