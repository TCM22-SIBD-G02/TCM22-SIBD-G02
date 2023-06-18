import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Series extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idSeries?: number;

  @property({
    type: 'number',
    required: true,
  })
  Temporada: number;

  @property({
    type: 'number',
    required: true,
  })
  idConteudo: number;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Series>) {
    super(data);
  }
}

export interface SeriesRelations {
  // describe navigational properties here
}

export type SeriesWithRelations = Series & SeriesRelations;
