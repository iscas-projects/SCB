(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3050 0)
(declare-sort var1356 0)
(declare-sort var868 0)
(declare-sort var628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameString/979334281 (var3050) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun nameType/979334281 (var3050) var868)
(declare-fun hashCode/385986394 (var628) Int)
(declare-fun cast-from-var868-to-var628 (var868) var628)
(declare-const null-var3050 var3050)
(declare-const null-String String)
(declare-const null-var868 var868)
(declare-const var3873 var3050) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis 
(assert (not (= var3873 null-var3050)))
(define-const var2446 String (nameString/979334281 var3873)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString> 
(assert (not (= var2446 null-String))) ; Cond: $r1 != null 
(define-const var2441 String (nameString/979334281 var3873)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString> 
(assert true)
(define-const var909 Int (hashCode/-467973558 var2441)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3194 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var909)))) ; Statement: $i1 = 1000003 ^ $i3 
(define-const var3123 Int (* var3194 1000003)) ; Statement: $i2 = $i1 * 1000003 
(define-const var2666 var868 (nameType/979334281 var3873)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType> 
(assert (not (= var2666 null-var868))) ; Cond: $r3 != null 
(define-const var1530 var868 (nameType/979334281 var3873)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType> 
(assert true)
(define-const var1348 Int (hashCode/385986394 (cast-from-var868-to-var628 var1530))) ; Statement: $i4 = virtualinvoke $r4.<com.google.javascript.jscomp.GlobalNamespace$NameProp: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2017 Int (bv2nat (bvxor ((_ int2bv 64) var3123) ((_ int2bv 64) var1348)))) ; Statement: $i0 = $i2 ^ $i4 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {nameString/979334281=([com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis], java.lang.String), hashCode/-467973558=([java.lang.String], int), nameType/979334281=([com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis], com.google.javascript.jscomp.GlobalNamespace$NameProp), hashCode/385986394=([java.lang.Enum], int), cast-from-var868-to-var628=([com.google.javascript.jscomp.GlobalNamespace$NameProp], java.lang.Enum)}
; {var3050=com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis, var3873=r0, var2446=$r1, var1356=null_type, var2441=$r2, var909=$i3, var3194=$i1, var3123=$i2, var868=com.google.javascript.jscomp.GlobalNamespace$NameProp, var2666=$r3, var1530=$r4, var628=java.lang.Enum, var1348=$i4, var2017=$i0}
; {com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis=var3050, r0=var3873, $r1=var2446, null_type=var1356, $r2=var2441, $i3=var909, $i1=var3194, $i2=var3123, com.google.javascript.jscomp.GlobalNamespace$NameProp=var868, $r3=var2666, $r4=var1530, java.lang.Enum=var628, $i4=var1348, $i0=var2017}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i1 = 1000003 ^ $i3;	$i2 = $i1 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType>;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType>;	$i4 = virtualinvoke $r4.<com.google.javascript.jscomp.GlobalNamespace$NameProp: int hashCode()>();	$i0 = $i2 ^ $i4;	return $i0
;block_num 5