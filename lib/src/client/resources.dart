part of civicinfo_v1_api;

class DivisionsResource_ {

  final Client _client;

  DivisionsResource_(Client client) :
      _client = client;

  /**
   * Searches for political divisions by their natural name or OCD ID.
   *
   * [query] - The search query. Queries can cover any parts of a OCD ID or a human readable division name. All words given in the query are treated as required patterns. In addition to that, most query operators of the Apache Lucene library are supported. See http://lucene.apache.org/core/2_9_4/queryparsersyntax.html
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DivisionSearchResponse> search({core.String query, core.Map optParams}) {
    var url = "representatives/division_search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (query != null) queryParams["query"] = query;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DivisionSearchResponse.fromJson(data));
  }
}

class ElectionsResource_ {

  final Client _client;

  ElectionsResource_(Client client) :
      _client = client;

  /**
   * List of available elections to query.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ElectionsQueryResponse> electionQuery({core.Map optParams}) {
    var url = "elections";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ElectionsQueryResponse.fromJson(data));
  }

  /**
   * Looks up information relevant to a voter based on the voter's registered address.
   *
   * [request] - VoterInfoRequest to send in this request
   *
   * [electionId] - The unique ID of the election to look up. A list of election IDs can be obtained at https://www.googleapis.com/civicinfo/{version}/elections
   *
   * [officialOnly] - If set to true, only data from official state sources will be returned.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VoterInfoResponse> voterInfoQuery(VoterInfoRequest request, core.int electionId, {core.bool officialOnly, core.Map optParams}) {
    var url = "voterinfo/{electionId}/lookup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (electionId == null) paramErrors.add("electionId is required");
    if (electionId != null) urlParams["electionId"] = electionId;
    if (officialOnly != null) queryParams["officialOnly"] = officialOnly;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VoterInfoResponse.fromJson(data));
  }
}

class RepresentativesResource_ {

  final Client _client;

  RepresentativesResource_(Client client) :
      _client = client;

  /**
   * Looks up political geography and representative information based on an address or Open Civic Data division identifier.
   *
   * [request] - RepresentativeInfoRequest to send in this request
   *
   * [includeOffices] - Whether to return information about offices and officials. If false, only the top-level district information will be returned.
   *   Default: true
   *
   * [ocdId] - The division to look up. May only be specified if the address field is not given in the request body.
   *
   * [recursive] - When ocd_id is supplied, return all divisions which are hierarchically nested within the queried division. For example, if querying ocd-division/country:us/district:dc, this would also return all DC's wards and ANCs.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RepresentativeInfoResponse> representativeInfoQuery(RepresentativeInfoRequest request, {core.bool includeOffices, core.String ocdId, core.bool recursive, core.Map optParams}) {
    var url = "representatives/lookup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeOffices != null) queryParams["includeOffices"] = includeOffices;
    if (ocdId != null) queryParams["ocdId"] = ocdId;
    if (recursive != null) queryParams["recursive"] = recursive;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RepresentativeInfoResponse.fromJson(data));
  }
}

