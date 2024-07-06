import RouteTemplate from 'ember-route-template';
import type { TOC } from '@ember/component/template-only';

interface ShoutSignature {
  Element: HTMLDivElement;
  Args: { message: string };
}

const louderPlease = (message: string) => message.toUpperCase();

const Test: TOC<ShoutSignature> = <template>
  <div ...attributes>Test from {{louderPlease @message}}</div>
</template>;

interface IndexRouteSignature {
  Args: { model: string[] };
}

// This adapter converts the `<template>` into a route template
export default RouteTemplate<IndexRouteSignature>(
  <template>
    {{#each @model as |item|}}
      <Test @message={{item}} />
    {{/each}}
  </template>,
);
