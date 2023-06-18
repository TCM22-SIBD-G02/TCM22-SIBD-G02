import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class AtoresSeries extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idSerie?: number;

  @property({
    type: 'number',
    required: true,
  })
  idAtores: number;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<AtoresSeries>) {
    super(data);
  }
}

export interface AtoresSeriesRelations {
  // describe navigational properties here
}

export type AtoresSeriesWithRelations = AtoresSeries & AtoresSeriesRelations;
