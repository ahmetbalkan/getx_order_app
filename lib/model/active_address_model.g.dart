// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_address_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetActiveAddressModelCollection on Isar {
  IsarCollection<ActiveAddressModel> get activeAddressModels =>
      this.collection();
}

const ActiveAddressModelSchema = CollectionSchema(
  name: r'ActiveAddressModel',
  id: 848602457363252389,
  properties: {
    r'activeid': PropertySchema(
      id: 0,
      name: r'activeid',
      type: IsarType.string,
    ),
    r'addressid': PropertySchema(
      id: 1,
      name: r'addressid',
      type: IsarType.string,
    ),
    r'userid': PropertySchema(
      id: 2,
      name: r'userid',
      type: IsarType.string,
    )
  },
  estimateSize: _activeAddressModelEstimateSize,
  serialize: _activeAddressModelSerialize,
  deserialize: _activeAddressModelDeserialize,
  deserializeProp: _activeAddressModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _activeAddressModelGetId,
  getLinks: _activeAddressModelGetLinks,
  attach: _activeAddressModelAttach,
  version: '3.0.2',
);

int _activeAddressModelEstimateSize(
  ActiveAddressModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.activeid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.addressid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _activeAddressModelSerialize(
  ActiveAddressModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activeid);
  writer.writeString(offsets[1], object.addressid);
  writer.writeString(offsets[2], object.userid);
}

ActiveAddressModel _activeAddressModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ActiveAddressModel(
    activeid: reader.readStringOrNull(offsets[0]),
    addressid: reader.readStringOrNull(offsets[1]),
    userid: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _activeAddressModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _activeAddressModelGetId(ActiveAddressModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _activeAddressModelGetLinks(
    ActiveAddressModel object) {
  return [];
}

void _activeAddressModelAttach(
    IsarCollection<dynamic> col, Id id, ActiveAddressModel object) {
  object.id = id;
}

extension ActiveAddressModelQueryWhereSort
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QWhere> {
  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ActiveAddressModelQueryWhere
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QWhereClause> {
  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterWhereClause>
      idBetween(
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

extension ActiveAddressModelQueryFilter
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QFilterCondition> {
  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activeid',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activeid',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activeid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activeid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activeid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'activeid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'activeid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activeid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activeid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeid',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      activeidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activeid',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'addressid',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'addressid',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidEqualTo(
    String? value, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidGreaterThan(
    String? value, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidLessThan(
    String? value, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addressid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addressid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addressid',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      addressidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addressid',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userid',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userid',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridEqualTo(
    String? value, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridGreaterThan(
    String? value, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridLessThan(
    String? value, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
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

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userid',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterFilterCondition>
      useridIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userid',
        value: '',
      ));
    });
  }
}

extension ActiveAddressModelQueryObject
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QFilterCondition> {}

extension ActiveAddressModelQueryLinks
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QFilterCondition> {}

extension ActiveAddressModelQuerySortBy
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QSortBy> {
  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      sortByActiveid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeid', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      sortByActiveidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeid', Sort.desc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      sortByAddressid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      sortByAddressidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.desc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      sortByUserid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      sortByUseridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.desc);
    });
  }
}

extension ActiveAddressModelQuerySortThenBy
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QSortThenBy> {
  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByActiveid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeid', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByActiveidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeid', Sort.desc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByAddressid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByAddressidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressid', Sort.desc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByUserid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.asc);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QAfterSortBy>
      thenByUseridDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userid', Sort.desc);
    });
  }
}

extension ActiveAddressModelQueryWhereDistinct
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QDistinct> {
  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QDistinct>
      distinctByActiveid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activeid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QDistinct>
      distinctByAddressid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addressid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveAddressModel, ActiveAddressModel, QDistinct>
      distinctByUserid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userid', caseSensitive: caseSensitive);
    });
  }
}

extension ActiveAddressModelQueryProperty
    on QueryBuilder<ActiveAddressModel, ActiveAddressModel, QQueryProperty> {
  QueryBuilder<ActiveAddressModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ActiveAddressModel, String?, QQueryOperations>
      activeidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeid');
    });
  }

  QueryBuilder<ActiveAddressModel, String?, QQueryOperations>
      addressidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addressid');
    });
  }

  QueryBuilder<ActiveAddressModel, String?, QQueryOperations> useridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userid');
    });
  }
}
