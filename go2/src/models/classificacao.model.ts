import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Classificacao extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  idClassificacao?: number;

  @property({
    type: 'number',
    required: true,
  })
  idConteudo: number;

  @property({
    type: 'number',
    required: true,
  })
  Duracao: number;

  @property({
    type: 'number',
    required: true,
  })
  gosto: number;

  @property({
    type: 'number',
    required: true,
  })
  Dislike: number;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Classificacao>) {
    super(data);
  }
}

export interface ClassificacaoRelations {
  // describe navigational properties here
}

export type ClassificacaoWithRelations = Classificacao & ClassificacaoRelations;
