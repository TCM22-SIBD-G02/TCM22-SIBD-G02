import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Realizador extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idRealizador?: number;

  @property({
    type: 'string',
    required: true,
  })
  nomeRealizador: string;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Realizador>) {
    super(data);
  }
}

export interface RealizadorRelations {
  // describe navigational properties here
}

export type RealizadorWithRelations = Realizador & RealizadorRelations;
