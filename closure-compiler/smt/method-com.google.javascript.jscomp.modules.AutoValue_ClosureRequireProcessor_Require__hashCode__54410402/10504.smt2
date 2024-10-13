(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var1105 0)
(declare-sort var3073 0)
(declare-sort var2801 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun localName/1571613197 (var1486) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun importRecord/1571613197 (var1486) var1105)
(declare-fun hashCode/1739917532 (var3073) Int)
(declare-fun cast-from-var1105-to-var3073 (var1105) var3073)
(declare-fun createdBy/1571613197 (var1486) var2801)
(declare-fun hashCode/385986394 (var3883) Int)
(declare-fun cast-from-var2801-to-var3883 (var2801) var3883)
(declare-const null-var1486 var1486)
(declare-const var1509 var1486) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require 
(assert (not (= var1509 null-var1486)))
(define-const var3042 String (localName/1571613197 var1509)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require: java.lang.String localName> 
(assert true)
(define-const var3210 Int (hashCode/-467973558 var3042)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var169 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3210)))) ; Statement: i3 = 1000003 ^ $i0 
(define-const var3339 Int (* var169 1000003)) ; Statement: i4 = i3 * 1000003 
(define-const var2348 var1105 (importRecord/1571613197 var1509)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require: com.google.javascript.jscomp.modules.Import importRecord> 
(assert true)
(define-const var1377 Int (hashCode/1739917532 (cast-from-var1105-to-var3073 var2348))) ; Statement: $i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var866 Int (bv2nat (bvxor ((_ int2bv 64) var3339) ((_ int2bv 64) var1377)))) ; Statement: i5 = i4 ^ $i1 
(define-const var3129 Int (* var866 1000003)) ; Statement: i6 = i5 * 1000003 
(define-const var2044 var2801 (createdBy/1571613197 var1509)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var3243 Int (hashCode/385986394 (cast-from-var2801-to-var3883 var2044))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var1045 Int (bv2nat (bvxor ((_ int2bv 64) var3129) ((_ int2bv 64) var3243)))) ; Statement: i7 = i6 ^ $i2 
 ; Statement: return i7 
(check-sat)
(get-model)
(get-unsat-core)
; {localName/1571613197=([com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require], java.lang.String), hashCode/-467973558=([java.lang.String], int), importRecord/1571613197=([com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require], com.google.javascript.jscomp.modules.Import), hashCode/1739917532=([java.lang.Object], int), cast-from-var1105-to-var3073=([com.google.javascript.jscomp.modules.Import], java.lang.Object), createdBy/1571613197=([com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var2801-to-var3883=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var1486=com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require, var1509=r0, var3042=$r1, var3210=$i0, var169=i3, var3339=i4, var1105=com.google.javascript.jscomp.modules.Import, var2348=$r2, var3073=java.lang.Object, var1377=$i1, var866=i5, var3129=i6, var2801=com.google.javascript.jscomp.modules.Binding$CreatedBy, var2044=$r3, var3883=java.lang.Enum, var3243=$i2, var1045=i7}
; {com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require=var1486, r0=var1509, $r1=var3042, $i0=var3210, i3=var169, i4=var3339, com.google.javascript.jscomp.modules.Import=var1105, $r2=var2348, java.lang.Object=var3073, $i1=var1377, i5=var866, i6=var3129, com.google.javascript.jscomp.modules.Binding$CreatedBy=var2801, $r3=var2044, java.lang.Enum=var3883, $i2=var3243, i7=var1045}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require: java.lang.String localName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 1000003 ^ $i0;	i4 = i3 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require: com.google.javascript.jscomp.modules.Import importRecord>;	$i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	i5 = i4 ^ $i1;	i6 = i5 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_ClosureRequireProcessor_Require: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i2 = virtualinvoke $r3.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	i7 = i6 ^ $i2;	return i7
;block_num 1