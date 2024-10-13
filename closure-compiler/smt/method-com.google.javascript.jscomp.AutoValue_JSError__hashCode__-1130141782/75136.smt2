(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2082 0)
(declare-sort var2329 0)
(declare-sort var3688 0)
(declare-sort var3689 0)
(declare-sort var2947 0)
(declare-sort var3746 0)
(declare-sort var1193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var2082) var2329)
(declare-fun hashCode/1248596073 (var2329) Int)
(declare-fun description/-801292795 (var2082) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var2082) String)
(declare-fun lineno/-801292795 (var2082) Int)
(declare-fun charno/-801292795 (var2082) Int)
(declare-fun node/-801292795 (var2082) var3689)
(declare-fun defaultLevel/-801292795 (var2082) var2947)
(declare-fun hashCode/385986394 (var3746) Int)
(declare-fun cast-from-var2947-to-var3746 (var2947) var3746)
(declare-fun requirement/-801292795 (var2082) var1193)
(declare-fun hashCode/-1591607735 (var1193) Int)
(declare-const null-var2082 var2082)
(declare-const null-String String)
(declare-const null-var3689 var3689)
(declare-const null-var1193 var1193)
(declare-const var3671 var2082) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var3671 null-var2082)))
(define-const var870 var2329 (type/-801292795 var3671)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var23 Int (hashCode/1248596073 var870)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var208 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var23)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var2472 Int (* var208 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var2441 String (description/-801292795 var3671)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var806 Int (hashCode/-467973558 var2441)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1572 Int (bv2nat (bvxor ((_ int2bv 64) var2472) ((_ int2bv 64) var806)))) ; Statement: i18 = i17 ^ $i1 
(define-const var578 Int (* var1572 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var2456 String (sourceName/-801292795 var3671)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (= var2456 null-String))) ; Cond: $r3 != null 
(define-const var1733 String (sourceName/-801292795 var3671)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert true)
(define-const var3967 Int (hashCode/-467973558 var1733)) ; Statement: $i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2073 Int (bv2nat (bvxor ((_ int2bv 64) var578) ((_ int2bv 64) var3967)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var1043 Int (* var2073 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3281 Int (lineno/-801292795 var3671)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var456 Int (bv2nat (bvxor ((_ int2bv 64) var1043) ((_ int2bv 64) var3281)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var2318 Int (* var456 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var39 Int (charno/-801292795 var3671)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var1048 Int (bv2nat (bvxor ((_ int2bv 64) var2318) ((_ int2bv 64) var39)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var3100 Int (* var1048 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var757 var3689 (node/-801292795 var3671)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (not (= var757 null-var3689)))) ; Negate: Cond: $r5 != null  
(define-const var1226 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i6 = $i15 ^ $i21] 
(assert true) ; Non Conditional
(define-const var3713 Int (bv2nat (bvxor ((_ int2bv 64) var3100) ((_ int2bv 64) var1226)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var1439 Int (* var3713 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3658 var2947 (defaultLevel/-801292795 var3671)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var2035 Int (hashCode/385986394 (cast-from-var2947-to-var3746 var3658))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var2005 Int (bv2nat (bvxor ((_ int2bv 64) var1439) ((_ int2bv 64) var2035)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var2186 Int (* var2005 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2067 var1193 (requirement/-801292795 var3671)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (= var2067 null-var1193))) ; Cond: $r8 != null 
(define-const var1298 var1193 (requirement/-801292795 var3671)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert true)
(define-const var3184 Int (hashCode/-1591607735 var1298)) ; Statement: $i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3914 Int (bv2nat (bvxor ((_ int2bv 64) var2186) ((_ int2bv 64) var3184)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var2947-to-var3746=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement), hashCode/-1591607735=([com.google.javascript.jscomp.Requirement], int)}
; {var2082=com.google.javascript.jscomp.AutoValue_JSError, var3671=r0, var2329=com.google.javascript.jscomp.DiagnosticType, var870=$r1, var23=$i0, var208=i16, var2472=i17, var2441=$r2, var806=$i1, var1572=i18, var578=i19, var2456=$r3, var3688=null_type, var1733=$r4, var3967=$i20, var2073=$i10, var1043=$i11, var3281=$i2, var456=$i12, var2318=$i13, var39=$i3, var1048=$i14, var3100=$i15, var3689=com.google.javascript.rhino.Node, var757=$r5, var1226=$i21, var3713=$i6, var1439=$i7, var2947=com.google.javascript.jscomp.CheckLevel, var3658=$r7, var3746=java.lang.Enum, var2035=$i4, var2005=$i8, var2186=$i9, var1193=com.google.javascript.jscomp.Requirement, var2067=$r8, var1298=$r9, var3184=$i22, var3914=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var2082, r0=var3671, com.google.javascript.jscomp.DiagnosticType=var2329, $r1=var870, $i0=var23, i16=var208, i17=var2472, $r2=var2441, $i1=var806, i18=var1572, i19=var578, $r3=var2456, null_type=var3688, $r4=var1733, $i20=var3967, $i10=var2073, $i11=var1043, $i2=var3281, $i12=var456, $i13=var2318, $i3=var39, $i14=var1048, $i15=var3100, com.google.javascript.rhino.Node=var3689, $r5=var757, $i21=var1226, $i6=var3713, $i7=var1439, com.google.javascript.jscomp.CheckLevel=var2947, $r7=var3658, java.lang.Enum=var3746, $i4=var2035, $i8=var2005, $i9=var2186, com.google.javascript.jscomp.Requirement=var1193, $r8=var2067, $r9=var1298, $i22=var3184, $i5=var3914}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = 0;	goto [?= $i6 = $i15 ^ $i21];	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>();	$i5 = $i9 ^ $i22;	return $i5
;block_num 7