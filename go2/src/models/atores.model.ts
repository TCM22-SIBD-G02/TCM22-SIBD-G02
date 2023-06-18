import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Atores extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idAtores?: number;

  @property({
    type: 'string',
    required: true,
  })
  nomeAtor: string;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Atores>) {
    super(data);
  }
}

export interface AtoresRelations {
  // describe navigational properties here
}

export type AtoresWithRelations = Atores & AtoresRelations;
