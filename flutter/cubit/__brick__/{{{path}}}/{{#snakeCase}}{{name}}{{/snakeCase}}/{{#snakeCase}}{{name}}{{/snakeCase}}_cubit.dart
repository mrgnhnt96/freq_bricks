import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
{{#isHydrated}}
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
{{/isHydrated}}

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.freezed.dart';
{{#isHydrated}}
part '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.g.dart';
{{/isHydrated}}

{{#isHydrated}}
@injectable
{{/isHydrated}}
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {{#isHydrated}} with HydratedMixin {{/isHydrated}}{
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit() : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.ready());

  {{#isHydrated}}
  @override
  {{#pascalCase}}{{name}}{{/pascalCase}}State? fromJson(Map<String, dynamic> json) =>
      {{#pascalCase}}{{name}}{{/pascalCase}}State.fromJson(json);

  @override
  Map<String, dynamic>? toJson({{#pascalCase}}{{name}}{{/pascalCase}}State state) => state.toJson();
  {{/isHydrated}}
}
