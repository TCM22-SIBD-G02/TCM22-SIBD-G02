import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Temporada extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idTemporada?: number;

  @property({
    type: 'number',
    required: true,
  })
  idSerie: number;

  @property({
    type: 'number',
    required: true,
  })
  anoProducao: number;

  @property({
    type: 'string',
    required: true,
  })
  Classificacao: string;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Temporada>) {
    super(data);
  }
}

export interface TemporadaRelations {
  // describe navigational properties here
}

export type TemporadaWithRelations = Temporada & TemporadaRelations;
