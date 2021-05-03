-- wuzetianfate_Modifiers
-- Author: sb
-- DateCreated: 5/26/2020 1:06:51 AM
--------------------------------------------------------------
--陌刀抗骑兵
--INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES 
--("ABILITY_KANGQIBING", "MODIFIER_MODAO_KANGQIBING");

--INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
--("MODIFIER_MODAO_KANGQIBING", "MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH", 0, 0, 0, NULL, "ANTI_CAVALRY_OPPONENT_REQUIREMENTS");

--INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
--("MODIFIER_MODAO_KANGQIBING", "Amount", 5);

-- 1区域req
INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
("REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate", "REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS");

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
("REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate", "Amount", 1);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
("REQSET_DISTRICTS_1_wtzfate", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
("REQSET_DISTRICTS_1_wtzfate", "REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate");

-- 5人口req
INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
("REQUIRES_POPULATION_5_wtzfate", "REQUIREMENT_CITY_HAS_X_POPULATION"),
("REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate_5", "REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS");

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
("REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate_5", "Amount", 1), 
("REQUIRES_POPULATION_5_wtzfate", "Amount", 5);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
("REQSET_POPULATION_5_wtzfate", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
("REQSET_POPULATION_5_wtzfate", "REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate_5"), 
("REQSET_POPULATION_5_wtzfate", "REQUIRES_POPULATION_5_wtzfate");

-- 10人口req
INSERT INTO Requirements (RequirementId, RequirementType) VALUES
("REQUIRES_POPULATION_10_wtzfate", "REQUIREMENT_CITY_HAS_X_POPULATION"),
("REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate_10", "REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS"); 

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
("REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate_10", "Amount", 1), 
("REQUIRES_POPULATION_10_wtzfate", "Amount", 10);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
("REQSET_POPULATION_10_wtzfate", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
("REQSET_POPULATION_10_wtzfate", "REQUIRES_SPECIALTY_DISTRICTS_1_wtzfate_10"), 
("REQSET_POPULATION_10_wtzfate", "REQUIRES_POPULATION_10_wtzfate");


--加大科
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_SCI"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_SCI_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_SCI_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_SCI", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_SCI_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_SCI_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_SCI", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_SCI", "GreatPersonClassType", "GREAT_PERSON_CLASS_SCIENTIST");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_SCI_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_SCI_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_SCIENTIST");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_SCI_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_SCI_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_SCIENTIST");


--加大海
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ADM"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ADM_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ADM_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_ADM", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_ADM_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_ADM_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ADM", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_ADM", "GreatPersonClassType", "GREAT_PERSON_CLASS_ADMIRAL");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ADM_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_ADM_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_ADMIRAL");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ADM_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_ADM_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_ADMIRAL");


--加大军
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_GEN"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_GEN_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_GEN_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_GEN", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_GEN_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_GEN_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_GEN", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_GEN", "GreatPersonClassType", "GREAT_PERSON_CLASS_GENERAL");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_GEN_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_GEN_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_GENERAL");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_GEN_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_GEN_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_GENERAL");

--加大工
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ENG"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ENG_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ENG_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_ENG", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_ENG_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_ENG_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ENG", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_ENG", "GreatPersonClassType", "GREAT_PERSON_CLASS_ENGINEER");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ENG_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_ENG_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_ENGINEER");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ENG_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_ENG_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_ENGINEER");

--加大商
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_MER"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_MER_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_MER_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_MER", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_MER_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_MER_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_MER", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_MER", "GreatPersonClassType", "GREAT_PERSON_CLASS_MERCHANT");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_MER_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_MER_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_MERCHANT");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_MER_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_MER_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_MERCHANT");

--加大仙
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_PRO"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_PRO_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_PRO_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_PRO", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_PRO_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_PRO_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_PRO", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_PRO", "GreatPersonClassType", "GREAT_PERSON_CLASS_PROPHET");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_PRO_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_PRO_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_PROPHET");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_PRO_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_PRO_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_PROPHET");

--加大文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_WRI"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_WRI_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_WRI_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_WRI", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_WRI_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_WRI_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_WRI", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_WRI", "GreatPersonClassType", "GREAT_PERSON_CLASS_WRITER");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_WRI_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_WRI_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_WRITER");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_WRI_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_WRI_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_WRITER");

--加大画
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ARI"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ARI_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_ARI_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_ARI", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_ARI_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_ARI_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ARI", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_ARI", "GreatPersonClassType", "GREAT_PERSON_CLASS_ARTIST");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ARI_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_ARI_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_ARTIST");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_ARI_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_ARI_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_ARTIST");

--加大音
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_MUS"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_MUS_5"),
("TRAIT_LEADER_YONGRENZHIDAO", "TRAIT_YONGRENZHIDAO_MUS_10");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_YONGRENZHIDAO_MUS", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_DISTRICTS_1_wtzfate"),
("TRAIT_YONGRENZHIDAO_MUS_5", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_5_wtzfate"),
("TRAIT_YONGRENZHIDAO_MUS_10", "MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT", 0, 0, 0, NULL, "REQSET_POPULATION_10_wtzfate");
--1
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_MUS", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_MUS", "GreatPersonClassType", "GREAT_PERSON_CLASS_MUSICIAN");
--5
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_MUS_5", "Amount", 1), 
("TRAIT_YONGRENZHIDAO_MUS_5", "GreatPersonClassType", "GREAT_PERSON_CLASS_MUSICIAN");
--10
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_YONGRENZHIDAO_MUS_10", "Amount", 2), 
("TRAIT_YONGRENZHIDAO_MUS_10", "GreatPersonClassType", "GREAT_PERSON_CLASS_MUSICIAN");