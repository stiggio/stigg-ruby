# frozen_string_literal: true

module Stigg
  [Stigg::Internal::Type::BaseModel, *Stigg::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Stigg::Internal::AnyHash) } }
  end

  Stigg::Internal::Util.walk_namespaces(Stigg::Models).each do |mod|
    case mod
    in Stigg::Internal::Type::Enum | Stigg::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Stigg::Internal::Util.walk_namespaces(Stigg::Models)
                       .lazy
                       .grep(Stigg::Internal::Type::Union)
                       .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  V1 = Stigg::Models::V1

  V1CreateEventParams = Stigg::Models::V1CreateEventParams

  V1CreateUsageParams = Stigg::Models::V1CreateUsageParams
end
