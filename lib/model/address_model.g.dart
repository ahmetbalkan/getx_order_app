// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetAddressModelCollection on Isar {
  IsarCollection<AddressModel> get addressModels => this.collection();
}

const AddressModelSchema = CollectionSchema(
  name: r'AddressModel',
  id: 7170850215293375062,
  properties: {
    r'addressid': PropertySchema(
      id: 0,
      name: r'addressid',
      type: IsarType.string,
    ),
    r'addresstitle': PropertySchema(
      id: 1,
      name: r'addresstitle',
      type: IsarType.string,
    ),
    r'county': PropertySchema(
      id: 2,
      name: r'county',
      type: IsarType.string,
    ),
    r'doornumber': PropertySchema(
      id: 3,
      name: r'doornumber',
      type: IsarType.string,
    ),
    r'floor': PropertySchema(
      id: 4,
      name: r'floor',
      type: IsarType.string,
    ),
    r'fulladdress': PropertySchema(
      id: 5,
      name: r'fulladdress',
      type: IsarType.string,
    ),
    r'isDefault': PropertySchema(
      id: 6,
      name: r'isDefault',
      type: IsarType.string,
    ),
    r'lat': PropertySchema(
      id: 7,
      name: r'lat',
      type: IsarType.string,
    ),
    r'longi': PropertySchema(
      id: 8,
      name: r'longi',
      type: IsarType.string,
    ),
    r'namesurname': PropertySchema(
      id: 9,
      name: r'namesurname',
      type: IsarType.string,
    ),
    r'no': PropertySchema(
      id: 10,
      name: r'no',
      type: IsarType.string,
    ),
    r'quarter': PropertySchema(
      id: 11,
      name: r'quarter',
      type: IsarType.string,
    ),
    r'street': PropertySchema(
      id: 12,
      name: r'street',
      type: IsarType.string,
    ),
    r'town': PropertySchema(
      id: 13,
      name: r'town',
      type: IsarType.string,
    ),
    r'userid': PropertySchema(
      id: 14,
      name: r'userid',
      type: IsarType.string,
    )
  },
  estimateSize: _addressModelEstimateSize,
  serialize: _addressModelSerialize,
  deserialize: _addressModelDeserialize,
  deserializeProp: _addressModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _addressModelGetId,
  getLinks: _addressModelGetLinks,
  attach: _addressModelAttach,
  version: '3.0.2',
);

int _addressModelEstimateSize(
  AddressModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addressid.length * 3;
  bytesCount += 3 + object.addresstitle.length * 3;
  bytesCount += 3 + object.county.length * 3;
  bytesCount += 3 + object.doornumber.length * 3;
  bytesCount += 3 + object.floor.length * 3;
  bytesCount += 3 + object.fulladdress.length * 3;
  bytesCount += 3 + object.isDefault.length * 3;
  bytesCount += 3 + object.lat.length * 3;
  bytesCount += 3 + object.longi.length * 3;
  bytesCount += 3 + object.namesurname.length * 3;
  bytesCount += 3 + object.no.length * 3;
  bytesCount += 3 + object.quarter.length * 3;
  bytesCount += 3 + object.street.length * 3;
  bytesCount += 3 + object.town.length * 3;
  bytesCount += 3 + object.userid.length * 3;
  return bytesCount;
}

void _addressModelSerialize(
  AddressModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addressid);
  writer.writeString(offsets[1], object.addresstitle);
  writer.writeString(offsets[2], object.county);
  writer.writeString(offsets[3], object.doornumber);
  writer.writeString(offsets[4], object.floor);
  writer.writeString(offsets[5], object.fulladdress);
  writer.writeString(offsets[6], object.isDefault);
  writer.writeString(offsets[7], object.lat);
  writer.writeString(offsets[8], object.longi);
  writer.writeString(offsets[9], object.namesurname);
  writer.writeString(offsets[10], object.no);
  writer.writeString(offsets[11], object.quarter);
  writer.writeString(offsets[12], object.street);
  writer.writeString(offsets[13], object.town);
  writer.writeString(offsets[14], object.userid);
}

AddressModel _addressModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AddressModel(
    addressid: reader.readString(offsets[0]),
    addresstitle: reader.readString(offsets[1]),
    county: reader.readString(offsets[2]),
    doornumber: reader.readString(offsets[3]),
    floor: reader.readString(offsets[4]),
    fulladdress: reader.readString(offsets[5]),
    isDefault: reader.readString(offsets[6]),
    lat: reader.readString(offsets[7]),
    longi: reader.readString(offsets[8]),
    namesurname: reader.readString(offsets[9]),
    no: reader.readString(offsets[10]),
    quarter: reader.readString(offsets[11]),
    street: reader.readString(offsets[12]),
    town: reader.readString(offsets[13]),
    userid: reader.readString(offsets[14]),
  );
  object.id = id;
  return object;
}

P _addressModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _addressModelGetId(AddressModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _addressModelGetLinks(AddressModel object) {
  return [];
}

void _addressModelAttach(
    IsarCollection<dynamic> col, Id id, AddressModel object) {
  object.id = id;
}

extension AddressModelQueryWhereSort
    on QueryBuilder<AddressModel, AddressModel, QWhere> {
  QueryBuilder<AddressModel, AddressModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AddressModelQueryWhere
    on QueryBuilder<AddressModel, AddressModel, QWhereClause> {
  QueryBuilder<AddressModel, AddressModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AddressModelQueryFilter
    on QueryBuilder<AddressModel, AddressModel, QFilterCondition> {
  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addressid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addressid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addressid',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addressidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addressid',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addresstitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addresstitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addresstitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addresstitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addresstitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addresstitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addresstitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addresstitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addresstitle',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      addresstitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addresstitle',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> countyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'county',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'county',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'county',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> countyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'county',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'county',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'county',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'county',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> countyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'county',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'county',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      countyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'county',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doornumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doornumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doornumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doornumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doornumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doornumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doornumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doornumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doornumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      doornumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doornumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> floorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      floorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> floorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> floorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'floor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      floorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> floorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> floorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> floorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'floor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      floorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floor',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      floorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'floor',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fulladdress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fulladdress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fulladdress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fulladdress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fulladdress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fulladdress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fulladdress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fulladdress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fulladdress',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      fulladdressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fulladdress',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isDefault',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'isDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'isDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'isDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'isDefault',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      isDefaultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'isDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      latGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> latIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lat',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      latIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lat',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> longiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      longiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> longiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> longiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      longiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'longi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> longiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'longi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> longiContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'longi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> longiMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'longi',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      longiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longi',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      longiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'longi',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namesurname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'namesurname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'namesurname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'namesurname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'namesurname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'namesurname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'namesurname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'namesurname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namesurname',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      namesurnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'namesurname',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'no',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'no',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'no',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'no',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'no',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'no',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'no',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'no',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> noIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'no',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      noIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'no',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quarter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quarter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quarter',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quarter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quarter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quarter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quarter',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarter',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      quarterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quarter',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> streetEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> streetBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'street',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> streetMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'street',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'street',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      streetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'street',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> townEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'town',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      townGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'town',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> townLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'town',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> townBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'town',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      townStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'town',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> townEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'town',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> townContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'town',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> townMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'town',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      townIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'town',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      townIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'town',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> useridEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> useridBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition> useridMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userid',
        value: '',
      ));
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterFilterCondition>
      useridIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userid',
        value: '',
      ));
    });
  }
}

extension AddressModelQueryObject
    on QueryBuilder<AddressModel, AddressModel, QFilterCondition> {}

extension AddressModelQueryLinks
    on QueryBuilder<AddressModel, AddressModel, QFilterCondition> {}

extension AddressModelQuerySortBy
    on QueryBuilder<AddressModel, AddressModel, QSortBy> {
  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByAddressid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByAddressidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByAddresstitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addresstitle', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      sortByAddresstitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addresstitle', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByCounty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'county', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByCountyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'county', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByDoornumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doornumber', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      sortByDoornumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doornumber', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByFloor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByFloorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByFulladdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fulladdress', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      sortByFulladdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fulladdress', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByLongi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longi', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByLongiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longi', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByNamesurname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namesurname', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      sortByNamesurnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namesurname', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'no', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'no', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByStreet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByStreetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByTown() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'town', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByTownDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'town', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByUserid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> sortByUseridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.desc);
    });
  }
}

extension AddressModelQuerySortThenBy
    on QueryBuilder<AddressModel, AddressModel, QSortThenBy> {
  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByAddressid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByAddressidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByAddresstitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addresstitle', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      thenByAddresstitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addresstitle', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByCounty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'county', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByCountyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'county', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByDoornumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doornumber', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      thenByDoornumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doornumber', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByFloor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByFloorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByFulladdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fulladdress', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      thenByFulladdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fulladdress', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByLongi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longi', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByLongiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longi', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByNamesurname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namesurname', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy>
      thenByNamesurnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namesurname', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'no', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'no', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByQuarter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByQuarterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarter', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByStreet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByStreetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByTown() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'town', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByTownDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'town', Sort.desc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByUserid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.asc);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QAfterSortBy> thenByUseridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.desc);
    });
  }
}

extension AddressModelQueryWhereDistinct
    on QueryBuilder<AddressModel, AddressModel, QDistinct> {
  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByAddressid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addressid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByAddresstitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addresstitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByCounty(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'county', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByDoornumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doornumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByFloor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'floor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByFulladdress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fulladdress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByIsDefault(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDefault', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByLat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByLongi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longi', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByNamesurname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'namesurname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'no', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByQuarter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quarter', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByStreet(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'street', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByTown(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'town', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddressModel, AddressModel, QDistinct> distinctByUserid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userid', caseSensitive: caseSensitive);
    });
  }
}

extension AddressModelQueryProperty
    on QueryBuilder<AddressModel, AddressModel, QQueryProperty> {
  QueryBuilder<AddressModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> addressidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addressid');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> addresstitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addresstitle');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> countyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'county');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> doornumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doornumber');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> floorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'floor');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> fulladdressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fulladdress');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDefault');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> latProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lat');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> longiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longi');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> namesurnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'namesurname');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> noProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'no');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> quarterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quarter');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> streetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'street');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> townProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'town');
    });
  }

  QueryBuilder<AddressModel, String, QQueryOperations> useridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userid');
    });
  }
}
