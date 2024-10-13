(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1861 0)
(declare-sort var2378 0)
(declare-sort var2709 0)
(declare-sort var2866 0)
(declare-sort var3834 0)
(declare-sort var2830 0)
(declare-sort var1731 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var1861) var2378)
(declare-fun hashCode/1248596073 (var2378) Int)
(declare-fun description/-801292795 (var1861) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var1861) String)
(declare-fun lineno/-801292795 (var1861) Int)
(declare-fun charno/-801292795 (var1861) Int)
(declare-fun node/-801292795 (var1861) var2866)
(declare-fun hashCode/1739917532 (var3834) Int)
(declare-fun cast-from-var2866-to-var3834 (var2866) var3834)
(declare-fun defaultLevel/-801292795 (var1861) var2830)
(declare-fun hashCode/385986394 (var1731) Int)
(declare-fun cast-from-var2830-to-var1731 (var2830) var1731)
(declare-fun requirement/-801292795 (var1861) var511)
(declare-fun hashCode/-1591607735 (var511) Int)
(declare-const null-var1861 var1861)
(declare-const null-String String)
(declare-const null-var2866 var2866)
(declare-const null-var511 var511)
(declare-const var3201 var1861) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var3201 null-var1861)))
(define-const var2427 var2378 (type/-801292795 var3201)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var1668 Int (hashCode/1248596073 var2427)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var2124 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1668)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var3056 Int (* var2124 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var2825 String (description/-801292795 var3201)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var788 Int (hashCode/-467973558 var2825)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var430 Int (bv2nat (bvxor ((_ int2bv 64) var3056) ((_ int2bv 64) var788)))) ; Statement: i18 = i17 ^ $i1 
(define-const var208 Int (* var430 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var2084 String (sourceName/-801292795 var3201)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (= var2084 null-String))) ; Cond: $r3 != null 
(define-const var896 String (sourceName/-801292795 var3201)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert true)
(define-const var3902 Int (hashCode/-467973558 var896)) ; Statement: $i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var657 Int (bv2nat (bvxor ((_ int2bv 64) var208) ((_ int2bv 64) var3902)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var3401 Int (* var657 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1448 Int (lineno/-801292795 var3201)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var1020 Int (bv2nat (bvxor ((_ int2bv 64) var3401) ((_ int2bv 64) var1448)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var1937 Int (* var1020 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var771 Int (charno/-801292795 var3201)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var3999 Int (bv2nat (bvxor ((_ int2bv 64) var1937) ((_ int2bv 64) var771)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var823 Int (* var3999 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var424 var2866 (node/-801292795 var3201)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (= var424 null-var2866))) ; Cond: $r5 != null 
(define-const var2243 var2866 (node/-801292795 var3201)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert true)
(define-const var580 Int (hashCode/1739917532 (cast-from-var2866-to-var3834 var2243))) ; Statement: $i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2552 Int (bv2nat (bvxor ((_ int2bv 64) var823) ((_ int2bv 64) var580)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var2037 Int (* var2552 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2673 var2830 (defaultLevel/-801292795 var3201)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var2135 Int (hashCode/385986394 (cast-from-var2830-to-var1731 var2673))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var2258 Int (bv2nat (bvxor ((_ int2bv 64) var2037) ((_ int2bv 64) var2135)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var3805 Int (* var2258 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var313 var511 (requirement/-801292795 var3201)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (= var313 null-var511))) ; Cond: $r8 != null 
(define-const var53 var511 (requirement/-801292795 var3201)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert true)
(define-const var3750 Int (hashCode/-1591607735 var53)) ; Statement: $i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var902 Int (bv2nat (bvxor ((_ int2bv 64) var3805) ((_ int2bv 64) var3750)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var2866-to-var3834=([com.google.javascript.rhino.Node], java.lang.Object), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var2830-to-var1731=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement), hashCode/-1591607735=([com.google.javascript.jscomp.Requirement], int)}
; {var1861=com.google.javascript.jscomp.AutoValue_JSError, var3201=r0, var2378=com.google.javascript.jscomp.DiagnosticType, var2427=$r1, var1668=$i0, var2124=i16, var3056=i17, var2825=$r2, var788=$i1, var430=i18, var208=i19, var2084=$r3, var2709=null_type, var896=$r4, var3902=$i20, var657=$i10, var3401=$i11, var1448=$i2, var1020=$i12, var1937=$i13, var771=$i3, var3999=$i14, var823=$i15, var2866=com.google.javascript.rhino.Node, var424=$r5, var2243=$r6, var3834=java.lang.Object, var580=$i21, var2552=$i6, var2037=$i7, var2830=com.google.javascript.jscomp.CheckLevel, var2673=$r7, var1731=java.lang.Enum, var2135=$i4, var2258=$i8, var3805=$i9, var511=com.google.javascript.jscomp.Requirement, var313=$r8, var53=$r9, var3750=$i22, var902=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var1861, r0=var3201, com.google.javascript.jscomp.DiagnosticType=var2378, $r1=var2427, $i0=var1668, i16=var2124, i17=var3056, $r2=var2825, $i1=var788, i18=var430, i19=var208, $r3=var2084, null_type=var2709, $r4=var896, $i20=var3902, $i10=var657, $i11=var3401, $i2=var1448, $i12=var1020, $i13=var1937, $i3=var771, $i14=var3999, $i15=var823, com.google.javascript.rhino.Node=var2866, $r5=var424, $r6=var2243, java.lang.Object=var3834, $i21=var580, $i6=var2552, $i7=var2037, com.google.javascript.jscomp.CheckLevel=var2830, $r7=var2673, java.lang.Enum=var1731, $i4=var2135, $i8=var2258, $i9=var3805, com.google.javascript.jscomp.Requirement=var511, $r8=var313, $r9=var53, $i22=var3750, $i5=var902}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>();	$i5 = $i9 ^ $i22;	return $i5
;block_num 7