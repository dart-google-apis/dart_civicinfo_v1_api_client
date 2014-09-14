part of civicinfo_v1_api;

/** Describes information about a regional election administrative area. */
class AdministrationRegion {

  /** The election administration body for this area. */
  AdministrativeBody electionAdministrationBody;

  /** An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. */
  core.String id;

  /** The city or county that provides election information for this voter. This object can have the same elements as state. */
  AdministrationRegion local_jurisdiction;

  /** The name of the jurisdiction. */
  core.String name;

  /** A list of sources for this area. If multiple sources are listed the data has been aggregated from those sources. */
  core.List<Source> sources;

  /** Create new AdministrationRegion from JSON data */
  AdministrationRegion.fromJson(core.Map json) {
    if (json.containsKey("electionAdministrationBody")) {
      electionAdministrationBody = new AdministrativeBody.fromJson(json["electionAdministrationBody"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("local_jurisdiction")) {
      local_jurisdiction = new AdministrationRegion.fromJson(json["local_jurisdiction"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sources")) {
      sources = json["sources"].map((sourcesItem) => new Source.fromJson(sourcesItem)).toList();
    }
  }

  /** Create JSON Object for AdministrationRegion */
  core.Map toJson() {
    var output = new core.Map();

    if (electionAdministrationBody != null) {
      output["electionAdministrationBody"] = electionAdministrationBody.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (local_jurisdiction != null) {
      output["local_jurisdiction"] = local_jurisdiction.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sources != null) {
      output["sources"] = sources.map((sourcesItem) => sourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AdministrationRegion */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about an election administrative body (e.g. County Board of Elections). */
class AdministrativeBody {

  /** A URL provided by this administrative body for information on absentee voting. */
  core.String absenteeVotingInfoUrl;

  /** A URL provided by this administrative body to give contest information to the voter. */
  core.String ballotInfoUrl;

  /** The mailing address of this administrative body. */
  SimpleAddressType correspondenceAddress;

  /** A URL provided by this administrative body for looking up general election information. */
  core.String electionInfoUrl;

  /** The election officials for this election administrative body. */
  core.List<ElectionOfficial> electionOfficials;

  /** A URL provided by this administrative body for confirming that the voter is registered to vote. */
  core.String electionRegistrationConfirmationUrl;

  /** A URL provided by this administrative body for looking up how to register to vote. */
  core.String electionRegistrationUrl;

  /** A URL provided by this administrative body describing election rules to the voter. */
  core.String electionRulesUrl;

  /** A description of the hours of operation for this administrative body. */
  core.String hoursOfOperation;

  /** The name of this election administrative body. */
  core.String name;

  /** The physical address of this administrative body. */
  SimpleAddressType physicalAddress;

  /** A description of the services this administrative body may provide. */
  core.List<core.String> voter_services;

  /** A URL provided by this administrative body for looking up where to vote. */
  core.String votingLocationFinderUrl;

  /** Create new AdministrativeBody from JSON data */
  AdministrativeBody.fromJson(core.Map json) {
    if (json.containsKey("absenteeVotingInfoUrl")) {
      absenteeVotingInfoUrl = json["absenteeVotingInfoUrl"];
    }
    if (json.containsKey("ballotInfoUrl")) {
      ballotInfoUrl = json["ballotInfoUrl"];
    }
    if (json.containsKey("correspondenceAddress")) {
      correspondenceAddress = new SimpleAddressType.fromJson(json["correspondenceAddress"]);
    }
    if (json.containsKey("electionInfoUrl")) {
      electionInfoUrl = json["electionInfoUrl"];
    }
    if (json.containsKey("electionOfficials")) {
      electionOfficials = json["electionOfficials"].map((electionOfficialsItem) => new ElectionOfficial.fromJson(electionOfficialsItem)).toList();
    }
    if (json.containsKey("electionRegistrationConfirmationUrl")) {
      electionRegistrationConfirmationUrl = json["electionRegistrationConfirmationUrl"];
    }
    if (json.containsKey("electionRegistrationUrl")) {
      electionRegistrationUrl = json["electionRegistrationUrl"];
    }
    if (json.containsKey("electionRulesUrl")) {
      electionRulesUrl = json["electionRulesUrl"];
    }
    if (json.containsKey("hoursOfOperation")) {
      hoursOfOperation = json["hoursOfOperation"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("physicalAddress")) {
      physicalAddress = new SimpleAddressType.fromJson(json["physicalAddress"]);
    }
    if (json.containsKey("voter_services")) {
      voter_services = json["voter_services"].toList();
    }
    if (json.containsKey("votingLocationFinderUrl")) {
      votingLocationFinderUrl = json["votingLocationFinderUrl"];
    }
  }

  /** Create JSON Object for AdministrativeBody */
  core.Map toJson() {
    var output = new core.Map();

    if (absenteeVotingInfoUrl != null) {
      output["absenteeVotingInfoUrl"] = absenteeVotingInfoUrl;
    }
    if (ballotInfoUrl != null) {
      output["ballotInfoUrl"] = ballotInfoUrl;
    }
    if (correspondenceAddress != null) {
      output["correspondenceAddress"] = correspondenceAddress.toJson();
    }
    if (electionInfoUrl != null) {
      output["electionInfoUrl"] = electionInfoUrl;
    }
    if (electionOfficials != null) {
      output["electionOfficials"] = electionOfficials.map((electionOfficialsItem) => electionOfficialsItem.toJson()).toList();
    }
    if (electionRegistrationConfirmationUrl != null) {
      output["electionRegistrationConfirmationUrl"] = electionRegistrationConfirmationUrl;
    }
    if (electionRegistrationUrl != null) {
      output["electionRegistrationUrl"] = electionRegistrationUrl;
    }
    if (electionRulesUrl != null) {
      output["electionRulesUrl"] = electionRulesUrl;
    }
    if (hoursOfOperation != null) {
      output["hoursOfOperation"] = hoursOfOperation;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (physicalAddress != null) {
      output["physicalAddress"] = physicalAddress.toJson();
    }
    if (voter_services != null) {
      output["voter_services"] = voter_services.toList();
    }
    if (votingLocationFinderUrl != null) {
      output["votingLocationFinderUrl"] = votingLocationFinderUrl;
    }

    return output;
  }

  /** Return String representation of AdministrativeBody */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about a candidate running for elected office. */
class Candidate {

  /** The URL for the candidate's campaign web site. */
  core.String candidateUrl;

  /** A list of known (social) media channels for this candidate. */
  core.List<Channel> channels;

  /** The email address for the candidate's campaign. */
  core.String email;

  /** The candidate's name. */
  core.String name;

  /** The order the candidate appears on the ballot for this contest. */
  core.int orderOnBallot;

  /** The full name of the party the candidate is a member of. */
  core.String party;

  /** The voice phone number for the candidate's campaign office. */
  core.String phone;

  /** A URL for a photo of the candidate. */
  core.String photoUrl;

  /** Create new Candidate from JSON data */
  Candidate.fromJson(core.Map json) {
    if (json.containsKey("candidateUrl")) {
      candidateUrl = json["candidateUrl"];
    }
    if (json.containsKey("channels")) {
      channels = json["channels"].map((channelsItem) => new Channel.fromJson(channelsItem)).toList();
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("orderOnBallot")) {
      orderOnBallot = (json["orderOnBallot"] is core.String) ? core.int.parse(json["orderOnBallot"]) : json["orderOnBallot"];
    }
    if (json.containsKey("party")) {
      party = json["party"];
    }
    if (json.containsKey("phone")) {
      phone = json["phone"];
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
  }

  /** Create JSON Object for Candidate */
  core.Map toJson() {
    var output = new core.Map();

    if (candidateUrl != null) {
      output["candidateUrl"] = candidateUrl;
    }
    if (channels != null) {
      output["channels"] = channels.map((channelsItem) => channelsItem.toJson()).toList();
    }
    if (email != null) {
      output["email"] = email;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (orderOnBallot != null) {
      output["orderOnBallot"] = orderOnBallot;
    }
    if (party != null) {
      output["party"] = party;
    }
    if (phone != null) {
      output["phone"] = phone;
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }

    return output;
  }

  /** Return String representation of Candidate */
  core.String toString() => JSON.encode(this.toJson());

}

/** A social media or web channel for a candidate. */
class Channel {

  /** The unique public identifier for the candidate's channel. */
  core.String id;

  /** The type of channel. The following is a list of types of channels, but is not exhaustive. More channel types may be added at a later time. One of: GooglePlus, YouTube, Facebook, Twitter */
  core.String type;

  /** Create new Channel from JSON data */
  Channel.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Channel */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Channel */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about a contest that appears on a voter's ballot. */
class Contest {

  /** A number specifying the position of this contest on the voter's ballot. */
  core.int ballotPlacement;

  /** The candidate choices for this contest. */
  core.List<Candidate> candidates;

  /** Information about the electoral district that this contest is in. */
  ElectoralDistrict district;

  /** A description of any additional eligibility requirements for voting in this contest. */
  core.String electorateSpecifications;

  /** An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. */
  core.String id;

  /** The level of office for this contest. One of: federal, state, county, city, other */
  core.String level;

  /** The number of candidates that will be elected to office in this contest. */
  core.int numberElected;

  /** The number of candidates that a voter may vote for in this contest. */
  core.int numberVotingFor;

  /** The name of the office for this contest. */
  core.String office;

  /** If this is a partisan election, the name of the party it is for. */
  core.String primaryParty;

  /** A brief description of the referendum. This field is only populated for contests of type 'Referendum'. */
  core.String referendumSubtitle;

  /** The title of the referendum (e.g. 'Proposition 42'). This field is only populated for contests of type 'Referendum'. */
  core.String referendumTitle;

  /** A link to the referendum. This field is only populated for contests of type 'Referendum'. */
  core.String referendumUrl;

  /** A list of sources for this contest. If multiple sources are listed, the data has been aggregated from those sources. */
  core.List<Source> sources;

  /** "Yes" or "No" depending on whether this a contest being held outside the normal election cycle. */
  core.String special;

  /** The type of contest. Usually this will be 'General', 'Primary', or 'Run-off' for contests with candidates. For referenda this will be 'Referendum'. */
  core.String type;

  /** Create new Contest from JSON data */
  Contest.fromJson(core.Map json) {
    if (json.containsKey("ballotPlacement")) {
      ballotPlacement = (json["ballotPlacement"] is core.String) ? core.int.parse(json["ballotPlacement"]) : json["ballotPlacement"];
    }
    if (json.containsKey("candidates")) {
      candidates = json["candidates"].map((candidatesItem) => new Candidate.fromJson(candidatesItem)).toList();
    }
    if (json.containsKey("district")) {
      district = new ElectoralDistrict.fromJson(json["district"]);
    }
    if (json.containsKey("electorateSpecifications")) {
      electorateSpecifications = json["electorateSpecifications"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("level")) {
      level = json["level"];
    }
    if (json.containsKey("numberElected")) {
      numberElected = (json["numberElected"] is core.String) ? core.int.parse(json["numberElected"]) : json["numberElected"];
    }
    if (json.containsKey("numberVotingFor")) {
      numberVotingFor = (json["numberVotingFor"] is core.String) ? core.int.parse(json["numberVotingFor"]) : json["numberVotingFor"];
    }
    if (json.containsKey("office")) {
      office = json["office"];
    }
    if (json.containsKey("primaryParty")) {
      primaryParty = json["primaryParty"];
    }
    if (json.containsKey("referendumSubtitle")) {
      referendumSubtitle = json["referendumSubtitle"];
    }
    if (json.containsKey("referendumTitle")) {
      referendumTitle = json["referendumTitle"];
    }
    if (json.containsKey("referendumUrl")) {
      referendumUrl = json["referendumUrl"];
    }
    if (json.containsKey("sources")) {
      sources = json["sources"].map((sourcesItem) => new Source.fromJson(sourcesItem)).toList();
    }
    if (json.containsKey("special")) {
      special = json["special"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Contest */
  core.Map toJson() {
    var output = new core.Map();

    if (ballotPlacement != null) {
      output["ballotPlacement"] = ballotPlacement;
    }
    if (candidates != null) {
      output["candidates"] = candidates.map((candidatesItem) => candidatesItem.toJson()).toList();
    }
    if (district != null) {
      output["district"] = district.toJson();
    }
    if (electorateSpecifications != null) {
      output["electorateSpecifications"] = electorateSpecifications;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (level != null) {
      output["level"] = level;
    }
    if (numberElected != null) {
      output["numberElected"] = numberElected;
    }
    if (numberVotingFor != null) {
      output["numberVotingFor"] = numberVotingFor;
    }
    if (office != null) {
      output["office"] = office;
    }
    if (primaryParty != null) {
      output["primaryParty"] = primaryParty;
    }
    if (referendumSubtitle != null) {
      output["referendumSubtitle"] = referendumSubtitle;
    }
    if (referendumTitle != null) {
      output["referendumTitle"] = referendumTitle;
    }
    if (referendumUrl != null) {
      output["referendumUrl"] = referendumUrl;
    }
    if (sources != null) {
      output["sources"] = sources.map((sourcesItem) => sourcesItem.toJson()).toList();
    }
    if (special != null) {
      output["special"] = special;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Contest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The result of a division search query. */
class DivisionSearchResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "civicinfo#divisionSearchResponse". */
  core.String kind;

  core.List<DivisionSearchResult> results;

  /** The result of the request. One of: success, addressUnparseable, noAddressParameter, internalLookupFailure */
  core.String status;

  /** Create new DivisionSearchResponse from JSON data */
  DivisionSearchResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("results")) {
      results = json["results"].map((resultsItem) => new DivisionSearchResult.fromJson(resultsItem)).toList();
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for DivisionSearchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (results != null) {
      output["results"] = results.map((resultsItem) => resultsItem.toJson()).toList();
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of DivisionSearchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents a political geographic division that matches the requested query. */
class DivisionSearchResult {

  /** Other Open Civic Data identifiers that refer to the same division -- for example, those that refer to other political divisions whose boundaries are defined to be coterminous with this one. For example, ocd-division/country:us/state:wy will include an alias of ocd-division/country:us/state:wy/cd:1, since Wyoming has only one Congressional district. */
  core.List<core.String> aliases;

  /** The name of the division. */
  core.String name;

  /** The unique Open Civic Data identifier for this division. */
  core.String ocdId;

  /** Create new DivisionSearchResult from JSON data */
  DivisionSearchResult.fromJson(core.Map json) {
    if (json.containsKey("aliases")) {
      aliases = json["aliases"].toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("ocdId")) {
      ocdId = json["ocdId"];
    }
  }

  /** Create JSON Object for DivisionSearchResult */
  core.Map toJson() {
    var output = new core.Map();

    if (aliases != null) {
      output["aliases"] = aliases.toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (ocdId != null) {
      output["ocdId"] = ocdId;
    }

    return output;
  }

  /** Return String representation of DivisionSearchResult */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about the election that was queried. */
class Election {

  /** Day of the election in YYYY-MM-DD format. */
  core.String electionDay;

  /** The unique ID of this election. */
  core.int id;

  /** A displayable name for the election. */
  core.String name;

  /** Create new Election from JSON data */
  Election.fromJson(core.Map json) {
    if (json.containsKey("electionDay")) {
      electionDay = json["electionDay"];
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Election */
  core.Map toJson() {
    var output = new core.Map();

    if (electionDay != null) {
      output["electionDay"] = electionDay;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Election */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about individual election officials. */
class ElectionOfficial {

  /** The email address of the election official. */
  core.String emailAddress;

  /** The fax number of the election official. */
  core.String faxNumber;

  /** The full name of the election official. */
  core.String name;

  /** The office phone number of the election official. */
  core.String officePhoneNumber;

  /** The title of the election official. */
  core.String title;

  /** Create new ElectionOfficial from JSON data */
  ElectionOfficial.fromJson(core.Map json) {
    if (json.containsKey("emailAddress")) {
      emailAddress = json["emailAddress"];
    }
    if (json.containsKey("faxNumber")) {
      faxNumber = json["faxNumber"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("officePhoneNumber")) {
      officePhoneNumber = json["officePhoneNumber"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for ElectionOfficial */
  core.Map toJson() {
    var output = new core.Map();

    if (emailAddress != null) {
      output["emailAddress"] = emailAddress;
    }
    if (faxNumber != null) {
      output["faxNumber"] = faxNumber;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (officePhoneNumber != null) {
      output["officePhoneNumber"] = officePhoneNumber;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of ElectionOfficial */
  core.String toString() => JSON.encode(this.toJson());

}

/** The list of elections available for this version of the API. */
class ElectionsQueryResponse {

  /** A list of available elections */
  core.List<Election> elections;

  /** Identifies what kind of resource this is. Value: the fixed string "civicinfo#electionsQueryResponse". */
  core.String kind;

  /** Create new ElectionsQueryResponse from JSON data */
  ElectionsQueryResponse.fromJson(core.Map json) {
    if (json.containsKey("elections")) {
      elections = json["elections"].map((electionsItem) => new Election.fromJson(electionsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ElectionsQueryResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (elections != null) {
      output["elections"] = elections.map((electionsItem) => electionsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ElectionsQueryResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Describes the geographic scope of a contest. */
class ElectoralDistrict {

  /** An identifier for this district, relative to its scope. For example, the 34th State Senate district would have id "34" and a scope of stateUpper. */
  core.String id;

  /** The name of the district. */
  core.String name;

  /** The geographic scope of this district. If unspecified the district's geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special */
  core.String scope;

  /** Create new ElectoralDistrict from JSON data */
  ElectoralDistrict.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("scope")) {
      scope = json["scope"];
    }
  }

  /** Create JSON Object for ElectoralDistrict */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (scope != null) {
      output["scope"] = scope;
    }

    return output;
  }

  /** Return String representation of ElectoralDistrict */
  core.String toString() => JSON.encode(this.toJson());

}

/** Describes a political geography. */
class GeographicDivision {

  /** Any other valid OCD IDs that refer to the same division. For example, if this division's OCD ID is ocd-division/country:us/district:dc, this will contain ocd-division/country:us/state:dc. */
  core.List<core.String> alsoKnownAs;

  /** The name of the division. */
  core.String name;

  /** List of keys in the offices object, one for each office elected from this division. Will only be present if includeOffices was true (or absent) in the request. */
  core.List<core.String> officeIds;

  /** The geographic scope of the division. If unspecified, the division's geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special */
  core.String scope;

  /** Create new GeographicDivision from JSON data */
  GeographicDivision.fromJson(core.Map json) {
    if (json.containsKey("alsoKnownAs")) {
      alsoKnownAs = json["alsoKnownAs"].toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("officeIds")) {
      officeIds = json["officeIds"].toList();
    }
    if (json.containsKey("scope")) {
      scope = json["scope"];
    }
  }

  /** Create JSON Object for GeographicDivision */
  core.Map toJson() {
    var output = new core.Map();

    if (alsoKnownAs != null) {
      output["alsoKnownAs"] = alsoKnownAs.toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (officeIds != null) {
      output["officeIds"] = officeIds.toList();
    }
    if (scope != null) {
      output["scope"] = scope;
    }

    return output;
  }

  /** Return String representation of GeographicDivision */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about an Office held by one or more Officials. */
class Office {

  /** The OCD ID of the division with which this office is associated. */
  core.String divisionId;

  /** The level of this elected office. One of: federal, state, county, city, other */
  core.String level;

  /** The human-readable name of the office. */
  core.String name;

  /** List of keys in the officials object of people who presently hold this office. */
  core.List<core.String> officialIds;

  /** A list of sources for this office. If multiple sources are listed, the data has been aggregated from those sources. */
  core.List<Source> sources;

  /** Create new Office from JSON data */
  Office.fromJson(core.Map json) {
    if (json.containsKey("divisionId")) {
      divisionId = json["divisionId"];
    }
    if (json.containsKey("level")) {
      level = json["level"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("officialIds")) {
      officialIds = json["officialIds"].toList();
    }
    if (json.containsKey("sources")) {
      sources = json["sources"].map((sourcesItem) => new Source.fromJson(sourcesItem)).toList();
    }
  }

  /** Create JSON Object for Office */
  core.Map toJson() {
    var output = new core.Map();

    if (divisionId != null) {
      output["divisionId"] = divisionId;
    }
    if (level != null) {
      output["level"] = level;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (officialIds != null) {
      output["officialIds"] = officialIds.toList();
    }
    if (sources != null) {
      output["sources"] = sources.map((sourcesItem) => sourcesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Office */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about a official holding an elected office. */
class Official {

  /** Addresses at which to contact the official. */
  core.List<SimpleAddressType> address;

  /** A list of known (social) media channels for this official. */
  core.List<Channel> channels;

  /** The direct email addresses for the official. */
  core.List<core.String> emails;

  /** The official's name. */
  core.String name;

  /** The full name of the party the official belongs to. */
  core.String party;

  /** The official's public contact phone numbers. */
  core.List<core.String> phones;

  /** A URL for a photo of the official. */
  core.String photoUrl;

  /** The official's public website URLs. */
  core.List<core.String> urls;

  /** Create new Official from JSON data */
  Official.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"].map((addressItem) => new SimpleAddressType.fromJson(addressItem)).toList();
    }
    if (json.containsKey("channels")) {
      channels = json["channels"].map((channelsItem) => new Channel.fromJson(channelsItem)).toList();
    }
    if (json.containsKey("emails")) {
      emails = json["emails"].toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("party")) {
      party = json["party"];
    }
    if (json.containsKey("phones")) {
      phones = json["phones"].toList();
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
    if (json.containsKey("urls")) {
      urls = json["urls"].toList();
    }
  }

  /** Create JSON Object for Official */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address.map((addressItem) => addressItem.toJson()).toList();
    }
    if (channels != null) {
      output["channels"] = channels.map((channelsItem) => channelsItem.toJson()).toList();
    }
    if (emails != null) {
      output["emails"] = emails.toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (party != null) {
      output["party"] = party;
    }
    if (phones != null) {
      output["phones"] = phones.toList();
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }
    if (urls != null) {
      output["urls"] = urls.toList();
    }

    return output;
  }

  /** Return String representation of Official */
  core.String toString() => JSON.encode(this.toJson());

}

/** A location where a voter can vote. This may be an early vote site or an election day voting location. */
class PollingLocation {

  /** The address of the location */
  SimpleAddressType address;

  /** The last date that this early vote site may be used. This field is not populated for polling locations. */
  core.String endDate;

  /** An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. */
  core.String id;

  /** The name of the early vote site. This field is not populated for polling locations. */
  core.String name;

  /** Notes about this location (e.g. accessibility ramp or entrance to use) */
  core.String notes;

  /** A description of when this location is open. */
  core.String pollingHours;

  /** A list of sources for this location. If multiple sources are listed the data has been aggregated from those sources. */
  core.List<Source> sources;

  /** The first date that this early vote site may be used. This field is not populated for polling locations. */
  core.String startDate;

  /** The services provided by this early vote site. This field is not populated for polling locations. */
  core.String voterServices;

  /** Create new PollingLocation from JSON data */
  PollingLocation.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = new SimpleAddressType.fromJson(json["address"]);
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("notes")) {
      notes = json["notes"];
    }
    if (json.containsKey("pollingHours")) {
      pollingHours = json["pollingHours"];
    }
    if (json.containsKey("sources")) {
      sources = json["sources"].map((sourcesItem) => new Source.fromJson(sourcesItem)).toList();
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
    if (json.containsKey("voterServices")) {
      voterServices = json["voterServices"];
    }
  }

  /** Create JSON Object for PollingLocation */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address.toJson();
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (notes != null) {
      output["notes"] = notes;
    }
    if (pollingHours != null) {
      output["pollingHours"] = pollingHours;
    }
    if (sources != null) {
      output["sources"] = sources.map((sourcesItem) => sourcesItem.toJson()).toList();
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }
    if (voterServices != null) {
      output["voterServices"] = voterServices;
    }

    return output;
  }

  /** Return String representation of PollingLocation */
  core.String toString() => JSON.encode(this.toJson());

}

/** A request for political geography and representative information for an address. */
class RepresentativeInfoRequest {

  /** The address to look up. May only be specified if the field ocdId is not given in the URL. */
  core.String address;

  /** Create new RepresentativeInfoRequest from JSON data */
  RepresentativeInfoRequest.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
  }

  /** Create JSON Object for RepresentativeInfoRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }

    return output;
  }

  /** Return String representation of RepresentativeInfoRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The result of a representative info lookup query. */
class RepresentativeInfoResponse {

  /** Political geographic divisions that contain the requested address. */
  core.Map<core.String, GeographicDivision> divisions;

  /** Identifies what kind of resource this is. Value: the fixed string "civicinfo#representativeInfoResponse". */
  core.String kind;

  /** The normalized version of the requested address */
  SimpleAddressType normalizedInput;

  /** Elected offices referenced by the divisions listed above. Will only be present if includeOffices was true in the request. */
  core.Map<core.String, Office> offices;

  /** Officials holding the offices listed above. Will only be present if includeOffices was true in the request. */
  core.Map<core.String, Official> officials;

  /** The result of the request. One of: success, noStreetSegmentFound, addressUnparseable, noAddressParameter, multipleStreetSegmentsFound, electionOver, electionUnknown, internalLookupFailure, RequestedBothAddressAndOcdId */
  core.String status;

  /** Create new RepresentativeInfoResponse from JSON data */
  RepresentativeInfoResponse.fromJson(core.Map json) {
    if (json.containsKey("divisions")) {
      divisions = _mapMap(json["divisions"], (divisionsItem) => new GeographicDivision.fromJson(divisionsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("normalizedInput")) {
      normalizedInput = new SimpleAddressType.fromJson(json["normalizedInput"]);
    }
    if (json.containsKey("offices")) {
      offices = _mapMap(json["offices"], (officesItem) => new Office.fromJson(officesItem));
    }
    if (json.containsKey("officials")) {
      officials = _mapMap(json["officials"], (officialsItem) => new Official.fromJson(officialsItem));
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for RepresentativeInfoResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (divisions != null) {
      output["divisions"] = _mapMap(divisions, (divisionsItem) => divisionsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (normalizedInput != null) {
      output["normalizedInput"] = normalizedInput.toJson();
    }
    if (offices != null) {
      output["offices"] = _mapMap(offices, (officesItem) => officesItem.toJson());
    }
    if (officials != null) {
      output["officials"] = _mapMap(officials, (officialsItem) => officialsItem.toJson());
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of RepresentativeInfoResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A simple representation of an address. */
class SimpleAddressType {

  /** The city or town for the address. */
  core.String city;

  /** The street name and number of this address. */
  core.String line1;

  /** The second line the address, if needed. */
  core.String line2;

  /** The third line of the address, if needed. */
  core.String line3;

  /** The name of the location. */
  core.String locationName;

  /** The US two letter state abbreviation of the address. */
  core.String state;

  /** The US Postal Zip Code of the address. */
  core.String zip;

  /** Create new SimpleAddressType from JSON data */
  SimpleAddressType.fromJson(core.Map json) {
    if (json.containsKey("city")) {
      city = json["city"];
    }
    if (json.containsKey("line1")) {
      line1 = json["line1"];
    }
    if (json.containsKey("line2")) {
      line2 = json["line2"];
    }
    if (json.containsKey("line3")) {
      line3 = json["line3"];
    }
    if (json.containsKey("locationName")) {
      locationName = json["locationName"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("zip")) {
      zip = json["zip"];
    }
  }

  /** Create JSON Object for SimpleAddressType */
  core.Map toJson() {
    var output = new core.Map();

    if (city != null) {
      output["city"] = city;
    }
    if (line1 != null) {
      output["line1"] = line1;
    }
    if (line2 != null) {
      output["line2"] = line2;
    }
    if (line3 != null) {
      output["line3"] = line3;
    }
    if (locationName != null) {
      output["locationName"] = locationName;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (zip != null) {
      output["zip"] = zip;
    }

    return output;
  }

  /** Return String representation of SimpleAddressType */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains information about the data source for the element containing it. */
class Source {

  /** The name of the data source. */
  core.String name;

  /** Whether this data comes from an official government source. */
  core.bool official;

  /** Create new Source from JSON data */
  Source.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("official")) {
      official = json["official"];
    }
  }

  /** Create JSON Object for Source */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (official != null) {
      output["official"] = official;
    }

    return output;
  }

  /** Return String representation of Source */
  core.String toString() => JSON.encode(this.toJson());

}

/** A request for information about a voter. */
class VoterInfoRequest {

  /** The registered address of the voter to look up. */
  core.String address;

  /** Create new VoterInfoRequest from JSON data */
  VoterInfoRequest.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
  }

  /** Create JSON Object for VoterInfoRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }

    return output;
  }

  /** Return String representation of VoterInfoRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The result of a voter info lookup query. */
class VoterInfoResponse {

  /** Contests that will appear on the voter's ballot */
  core.List<Contest> contests;

  /** Locations where the voter is eligible to vote early, prior to election day */
  core.List<PollingLocation> earlyVoteSites;

  /** The election that was queried. */
  Election election;

  /** Identifies what kind of resource this is. Value: the fixed string "civicinfo#voterInfoResponse". */
  core.String kind;

  /** The normalized version of the requested address */
  SimpleAddressType normalizedInput;

  /** Locations where the voter is eligible to vote on election day. For states with mail-in voting only, these locations will be nearby drop box locations. Drop box locations are free to the voter and may be used instead of placing the ballot in the mail. */
  core.List<PollingLocation> pollingLocations;

  /** Local Election Information for the state that the voter votes in. For the US, there will only be one element in this array. */
  core.List<AdministrationRegion> state;

  /** The result of the request. One of: success, noStreetSegmentFound, addressUnparseable, noAddressParameter, multipleStreetSegmentsFound, electionOver, electionUnknown, internalLookupFailure */
  core.String status;

  /** Create new VoterInfoResponse from JSON data */
  VoterInfoResponse.fromJson(core.Map json) {
    if (json.containsKey("contests")) {
      contests = json["contests"].map((contestsItem) => new Contest.fromJson(contestsItem)).toList();
    }
    if (json.containsKey("earlyVoteSites")) {
      earlyVoteSites = json["earlyVoteSites"].map((earlyVoteSitesItem) => new PollingLocation.fromJson(earlyVoteSitesItem)).toList();
    }
    if (json.containsKey("election")) {
      election = new Election.fromJson(json["election"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("normalizedInput")) {
      normalizedInput = new SimpleAddressType.fromJson(json["normalizedInput"]);
    }
    if (json.containsKey("pollingLocations")) {
      pollingLocations = json["pollingLocations"].map((pollingLocationsItem) => new PollingLocation.fromJson(pollingLocationsItem)).toList();
    }
    if (json.containsKey("state")) {
      state = json["state"].map((stateItem) => new AdministrationRegion.fromJson(stateItem)).toList();
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for VoterInfoResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (contests != null) {
      output["contests"] = contests.map((contestsItem) => contestsItem.toJson()).toList();
    }
    if (earlyVoteSites != null) {
      output["earlyVoteSites"] = earlyVoteSites.map((earlyVoteSitesItem) => earlyVoteSitesItem.toJson()).toList();
    }
    if (election != null) {
      output["election"] = election.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (normalizedInput != null) {
      output["normalizedInput"] = normalizedInput.toJson();
    }
    if (pollingLocations != null) {
      output["pollingLocations"] = pollingLocations.map((pollingLocationsItem) => pollingLocationsItem.toJson()).toList();
    }
    if (state != null) {
      output["state"] = state.map((stateItem) => stateItem.toJson()).toList();
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of VoterInfoResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
