# frozen_string_literal: true
module Valkyrie::Persistence::Solr
  module Queries
    MEMBER_IDS = 'member_ids_ssim'
    MODEL = 'internal_resource_ssim'
    require 'valkyrie/persistence/solr/queries/default_paginator'
    require 'valkyrie/persistence/solr/queries/find_all_query'
    require 'valkyrie/persistence/solr/queries/find_by_id_query'
    require 'valkyrie/persistence/solr/queries/find_inverse_references_query'
    require 'valkyrie/persistence/solr/queries/find_members_query'
    require 'valkyrie/persistence/solr/queries/find_references_query'
  end
end
