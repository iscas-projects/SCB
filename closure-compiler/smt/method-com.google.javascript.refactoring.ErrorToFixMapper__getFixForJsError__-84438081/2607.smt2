(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2258 0)
(declare-sort var3846 0)
(declare-sort var2246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1455668659 (var3846) var2246)
(declare-fun key/221390942 (var2246) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2258 var2258)
(declare-const null-var3846 var3846)
(declare-const var2741 var2258) ; Statement: r3 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var2741 null-var2258)))
(declare-const var1068 var3846) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1068 null-var3846)))
(assert true)
(define-const var1092 var2246 (getType/1455668659 var1068)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>() 
(define-const var652 String (key/221390942 var1092)) ; Statement: r2 = $r1.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(define-const var1909 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3989 Int (hashCode/-467973558 var652)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2092232487: goto $z19 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_USELESS_EMPTY_STATEMENT");     case -1826522276: goto $z18 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE_TYPE_IN_PROVIDES_FILE");     case -1494558136: goto $z17 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_STRICT_INEXISTENT_PROPERTY_WITH_SUGGESTION");     case -537466078: goto $z16 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REFERENCE_TO_FULLY_QUALIFIED_IMPORT_NAME");     case -314303639: goto $z15 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REDECLARED_VARIABLE");     case -282761772: goto $z14 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_INEXISTENT_PROPERTY_WITH_SUGGESTION");     case -187775531: goto $z13 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REFERENCE_TO_SHORT_IMPORT_BY_LONG_NAME_INCLUDING_SHORT_NAME");     case -34492006: goto $z12 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REDUNDANT_NULLABILITY_MODIFIER_JSDOC");     case 18400082: goto $z11 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE_TYPE");     case 73826125: goto $z10 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_INVALID_SUPER_CALL_WITH_SUGGESTION");     case 305320789: goto $z9 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REQUIRES_NOT_SORTED");     case 689013690: goto $z8 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_CALL_TO_SUPER");     case 941057106: goto $z7 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_DEBUGGER_STATEMENT_PRESENT");     case 1021599182: goto $z6 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_EXTRA_REQUIRE_WARNING");     case 1034984743: goto $z5 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE");     case 1071219699: goto $z4 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_SEMICOLON");     case 1115301027: goto $z3 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REFERENCE_BEFORE_DECLARE");     case 1482925713: goto $z2 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_PROVIDES_NOT_SORTED");     case 1817627109: goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_CONST_ON_CONSTANT_CASE");     case 1836574247: goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE_IN_PROVIDES_FILE");     default: goto tableswitch(b1) {     case 0: goto $r28 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedeclaration(com.google.javascript.jscomp.JSError)>(r0);     case 1: goto $r27 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForEarlyReference(com.google.javascript.jscomp.JSError)>(r0);     case 2: goto $r26 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSemicolon(com.google.javascript.jscomp.JSError)>(r0);     case 3: goto $r25 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedRequires(com.google.javascript.jscomp.JSError)>(r0);     case 4: goto $r24 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedProvides(com.google.javascript.jscomp.JSError)>(r0);     case 5: goto $r16 = new com.google.javascript.refactoring.SuggestedFix$Builder;     case 6: goto $r15 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix removeEmptyStatement(com.google.javascript.jscomp.JSError)>(r0);     case 7: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 8: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 9: goto $r13 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSuper(com.google.javascript.jscomp.JSError)>(r0);     case 10: goto $r12 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInvalidSuper(com.google.javascript.jscomp.JSError)>(r0);     case 11: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 12: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 13: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 14: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 15: goto $r7 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForExtraRequire(com.google.javascript.jscomp.JSError)>(r0);     case 16: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 17: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 18: goto $r5 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedundantNullabilityModifierJsDoc(com.google.javascript.jscomp.JSError)>(r0);     case 19: goto $r4 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForConstantCaseErrors(com.google.javascript.jscomp.JSError)>(r0);     default: goto return null; }; } 
(assert (and (not (= var3989 1836574247)) (and (not (= var3989 1817627109)) (and (not (= var3989 1482925713)) (and (not (= var3989 1115301027)) (and (not (= var3989 1071219699)) (and (not (= var3989 1034984743)) (and (not (= var3989 1021599182)) (and (not (= var3989 941057106)) (and (not (= var3989 689013690)) (and (not (= var3989 305320789)) (and (not (= var3989 73826125)) (and (not (= var3989 18400082)) (and (not (= var3989 (- 34492006))) (and (not (= var3989 (- 187775531))) (and (not (= var3989 (- 282761772))) (and (not (= var3989 (- 314303639))) (and (not (= var3989 (- 537466078))) (and (not (= var3989 (- 1494558136))) (and (not (= var3989 (- 1826522276))) (and (not (= var3989 (- 2092232487))) true))))))))))))))))))))) ; Intersect: Negate: Cond: $i0 == 1836574247   and Intersect: Negate: Cond: $i0 == 1817627109   and Intersect: Negate: Cond: $i0 == 1482925713   and Intersect: Negate: Cond: $i0 == 1115301027   and Intersect: Negate: Cond: $i0 == 1071219699   and Intersect: Negate: Cond: $i0 == 1034984743   and Intersect: Negate: Cond: $i0 == 1021599182   and Intersect: Negate: Cond: $i0 == 941057106   and Intersect: Negate: Cond: $i0 == 689013690   and Intersect: Negate: Cond: $i0 == 305320789   and Intersect: Negate: Cond: $i0 == 73826125   and Intersect: Negate: Cond: $i0 == 18400082   and Intersect: Negate: Cond: $i0 == -34492006   and Intersect: Negate: Cond: $i0 == -187775531   and Intersect: Negate: Cond: $i0 == -282761772   and Intersect: Negate: Cond: $i0 == -314303639   and Intersect: Negate: Cond: $i0 == -537466078   and Intersect: Negate: Cond: $i0 == -1494558136   and Intersect: Negate: Cond: $i0 == -1826522276   and Intersect: Negate: Cond: $i0 == -2092232487   and Non Conditional                    
 ; Statement: tableswitch(b1) {     case 0: goto $r28 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedeclaration(com.google.javascript.jscomp.JSError)>(r0);     case 1: goto $r27 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForEarlyReference(com.google.javascript.jscomp.JSError)>(r0);     case 2: goto $r26 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSemicolon(com.google.javascript.jscomp.JSError)>(r0);     case 3: goto $r25 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedRequires(com.google.javascript.jscomp.JSError)>(r0);     case 4: goto $r24 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedProvides(com.google.javascript.jscomp.JSError)>(r0);     case 5: goto $r16 = new com.google.javascript.refactoring.SuggestedFix$Builder;     case 6: goto $r15 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix removeEmptyStatement(com.google.javascript.jscomp.JSError)>(r0);     case 7: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 8: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 9: goto $r13 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSuper(com.google.javascript.jscomp.JSError)>(r0);     case 10: goto $r12 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInvalidSuper(com.google.javascript.jscomp.JSError)>(r0);     case 11: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 12: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 13: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 14: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 15: goto $r7 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForExtraRequire(com.google.javascript.jscomp.JSError)>(r0);     case 16: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 17: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 18: goto $r5 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedundantNullabilityModifierJsDoc(com.google.javascript.jscomp.JSError)>(r0);     case 19: goto $r4 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForConstantCaseErrors(com.google.javascript.jscomp.JSError)>(r0);     default: goto return null; } 
(assert (and (not (= var1909 19)) (and (not (= var1909 18)) (and (not (= var1909 17)) (and (not (= var1909 16)) (and (not (= var1909 15)) (and (not (= var1909 14)) (and (not (= var1909 13)) (and (not (= var1909 12)) (and (not (= var1909 11)) (and (not (= var1909 10)) (and (not (= var1909 9)) (and (not (= var1909 8)) (and (not (= var1909 7)) (and (not (= var1909 6)) (and (not (= var1909 5)) (and (not (= var1909 4)) (and (not (= var1909 3)) (and (not (= var1909 2)) (and (not (= var1909 1)) (and (not (= var1909 0)) true))))))))))))))))))))) ; Intersect: Negate: Cond: b1 == 19   and Intersect: Negate: Cond: b1 == 18   and Intersect: Negate: Cond: b1 == 17   and Intersect: Negate: Cond: b1 == 16   and Intersect: Negate: Cond: b1 == 15   and Intersect: Negate: Cond: b1 == 14   and Intersect: Negate: Cond: b1 == 13   and Intersect: Negate: Cond: b1 == 12   and Intersect: Negate: Cond: b1 == 11   and Intersect: Negate: Cond: b1 == 10   and Intersect: Negate: Cond: b1 == 9   and Intersect: Negate: Cond: b1 == 8   and Intersect: Negate: Cond: b1 == 7   and Intersect: Negate: Cond: b1 == 6   and Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional                    
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1455668659=([com.google.javascript.jscomp.JSError], com.google.javascript.jscomp.DiagnosticType), key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2258=com.google.javascript.refactoring.ErrorToFixMapper, var2741=r3, var3846=com.google.javascript.jscomp.JSError, var1068=r0, var2246=com.google.javascript.jscomp.DiagnosticType, var1092=$r1, var652=r2, var1909=b1, var3989=$i0}
; {com.google.javascript.refactoring.ErrorToFixMapper=var2258, r3=var2741, com.google.javascript.jscomp.JSError=var3846, r0=var1068, com.google.javascript.jscomp.DiagnosticType=var2246, $r1=var1092, r2=var652, b1=var1909, $i0=var3989}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.DiagnosticType getType()>();	r2 = $r1.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	b1 = -1;	$i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2092232487: goto $z19 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_USELESS_EMPTY_STATEMENT");     case -1826522276: goto $z18 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE_TYPE_IN_PROVIDES_FILE");     case -1494558136: goto $z17 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_STRICT_INEXISTENT_PROPERTY_WITH_SUGGESTION");     case -537466078: goto $z16 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REFERENCE_TO_FULLY_QUALIFIED_IMPORT_NAME");     case -314303639: goto $z15 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REDECLARED_VARIABLE");     case -282761772: goto $z14 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_INEXISTENT_PROPERTY_WITH_SUGGESTION");     case -187775531: goto $z13 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REFERENCE_TO_SHORT_IMPORT_BY_LONG_NAME_INCLUDING_SHORT_NAME");     case -34492006: goto $z12 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REDUNDANT_NULLABILITY_MODIFIER_JSDOC");     case 18400082: goto $z11 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE_TYPE");     case 73826125: goto $z10 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_INVALID_SUPER_CALL_WITH_SUGGESTION");     case 305320789: goto $z9 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REQUIRES_NOT_SORTED");     case 689013690: goto $z8 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_CALL_TO_SUPER");     case 941057106: goto $z7 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_DEBUGGER_STATEMENT_PRESENT");     case 1021599182: goto $z6 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_EXTRA_REQUIRE_WARNING");     case 1034984743: goto $z5 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE");     case 1071219699: goto $z4 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_SEMICOLON");     case 1115301027: goto $z3 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_REFERENCE_BEFORE_DECLARE");     case 1482925713: goto $z2 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_PROVIDES_NOT_SORTED");     case 1817627109: goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_CONST_ON_CONSTANT_CASE");     case 1836574247: goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("JSC_MISSING_REQUIRE_IN_PROVIDES_FILE");     default: goto tableswitch(b1) {     case 0: goto $r28 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedeclaration(com.google.javascript.jscomp.JSError)>(r0);     case 1: goto $r27 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForEarlyReference(com.google.javascript.jscomp.JSError)>(r0);     case 2: goto $r26 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSemicolon(com.google.javascript.jscomp.JSError)>(r0);     case 3: goto $r25 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedRequires(com.google.javascript.jscomp.JSError)>(r0);     case 4: goto $r24 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedProvides(com.google.javascript.jscomp.JSError)>(r0);     case 5: goto $r16 = new com.google.javascript.refactoring.SuggestedFix$Builder;     case 6: goto $r15 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix removeEmptyStatement(com.google.javascript.jscomp.JSError)>(r0);     case 7: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 8: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 9: goto $r13 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSuper(com.google.javascript.jscomp.JSError)>(r0);     case 10: goto $r12 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInvalidSuper(com.google.javascript.jscomp.JSError)>(r0);     case 11: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 12: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 13: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 14: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 15: goto $r7 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForExtraRequire(com.google.javascript.jscomp.JSError)>(r0);     case 16: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 17: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 18: goto $r5 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedundantNullabilityModifierJsDoc(com.google.javascript.jscomp.JSError)>(r0);     case 19: goto $r4 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForConstantCaseErrors(com.google.javascript.jscomp.JSError)>(r0);     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r28 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedeclaration(com.google.javascript.jscomp.JSError)>(r0);     case 1: goto $r27 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForEarlyReference(com.google.javascript.jscomp.JSError)>(r0);     case 2: goto $r26 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSemicolon(com.google.javascript.jscomp.JSError)>(r0);     case 3: goto $r25 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedRequires(com.google.javascript.jscomp.JSError)>(r0);     case 4: goto $r24 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForUnsortedProvides(com.google.javascript.jscomp.JSError)>(r0);     case 5: goto $r16 = new com.google.javascript.refactoring.SuggestedFix$Builder;     case 6: goto $r15 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix removeEmptyStatement(com.google.javascript.jscomp.JSError)>(r0);     case 7: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 8: goto $r14 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInexistentProperty(com.google.javascript.jscomp.JSError)>(r0);     case 9: goto $r13 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForMissingSuper(com.google.javascript.jscomp.JSError)>(r0);     case 10: goto $r12 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForInvalidSuper(com.google.javascript.jscomp.JSError)>(r0);     case 11: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 12: goto $r10 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE>;     case 13: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 14: goto $r8 = <com.google.javascript.refactoring.SuggestedFix$ImportType: com.google.javascript.refactoring.SuggestedFix$ImportType REQUIRE_TYPE>;     case 15: goto $r7 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForExtraRequire(com.google.javascript.jscomp.JSError)>(r0);     case 16: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 17: goto $r6 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForReferenceToShortImportByLongName(com.google.javascript.jscomp.JSError)>(r0);     case 18: goto $r5 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForRedundantNullabilityModifierJsDoc(com.google.javascript.jscomp.JSError)>(r0);     case 19: goto $r4 = virtualinvoke r3.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.SuggestedFix getFixForConstantCaseErrors(com.google.javascript.jscomp.JSError)>(r0);     default: goto return null; };	return null
;block_num 3