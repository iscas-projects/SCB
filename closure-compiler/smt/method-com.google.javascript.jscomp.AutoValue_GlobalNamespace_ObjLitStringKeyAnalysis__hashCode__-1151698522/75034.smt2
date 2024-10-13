(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3348 0)
(declare-sort var3762 0)
(declare-sort var2160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameString/979334281 (var3348) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun nameType/979334281 (var3348) var2160)
(declare-const null-var3348 var3348)
(declare-const null-String String)
(declare-const null-var2160 var2160)
(declare-const var1468 var3348) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis 
(assert (not (= var1468 null-var3348)))
(define-const var1565 String (nameString/979334281 var1468)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString> 
(assert (not (= var1565 null-String))) ; Cond: $r1 != null 
(define-const var410 String (nameString/979334281 var1468)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString> 
(assert true)
(define-const var2333 Int (hashCode/-467973558 var410)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2368 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2333)))) ; Statement: $i1 = 1000003 ^ $i3 
(define-const var3327 Int (* var2368 1000003)) ; Statement: $i2 = $i1 * 1000003 
(define-const var1178 var2160 (nameType/979334281 var1468)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType> 
(assert (not (not (= var1178 null-var2160)))) ; Negate: Cond: $r3 != null  
(define-const var1791 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i0 = $i2 ^ $i4] 
(assert true) ; Non Conditional
(define-const var3663 Int (bv2nat (bvxor ((_ int2bv 64) var3327) ((_ int2bv 64) var1791)))) ; Statement: $i0 = $i2 ^ $i4 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {nameString/979334281=([com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis], java.lang.String), hashCode/-467973558=([java.lang.String], int), nameType/979334281=([com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis], com.google.javascript.jscomp.GlobalNamespace$NameProp)}
; {var3348=com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis, var1468=r0, var1565=$r1, var3762=null_type, var410=$r2, var2333=$i3, var2368=$i1, var3327=$i2, var2160=com.google.javascript.jscomp.GlobalNamespace$NameProp, var1178=$r3, var1791=$i4, var3663=$i0}
; {com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis=var3348, r0=var1468, $r1=var1565, null_type=var3762, $r2=var410, $i3=var2333, $i1=var2368, $i2=var3327, com.google.javascript.jscomp.GlobalNamespace$NameProp=var2160, $r3=var1178, $i4=var1791, $i0=var3663}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: java.lang.String nameString>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i1 = 1000003 ^ $i3;	$i2 = $i1 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_GlobalNamespace_ObjLitStringKeyAnalysis: com.google.javascript.jscomp.GlobalNamespace$NameProp nameType>;	$i4 = 0;	goto [?= $i0 = $i2 ^ $i4];	$i0 = $i2 ^ $i4;	return $i0
;block_num 5