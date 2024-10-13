(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1507 0)
(declare-sort var3421 0)
(declare-sort var278 0)
(declare-sort var219 0)
(declare-sort var1725 0)
(declare-sort var1128 0)
(declare-sort var1836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var1507) var3421)
(declare-fun hashCode/1248596073 (var3421) Int)
(declare-fun description/-801292795 (var1507) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var1507) String)
(declare-fun lineno/-801292795 (var1507) Int)
(declare-fun charno/-801292795 (var1507) Int)
(declare-fun node/-801292795 (var1507) var219)
(declare-fun defaultLevel/-801292795 (var1507) var1725)
(declare-fun hashCode/385986394 (var1128) Int)
(declare-fun cast-from-var1725-to-var1128 (var1725) var1128)
(declare-fun requirement/-801292795 (var1507) var1836)
(declare-const null-var1507 var1507)
(declare-const null-String String)
(declare-const null-var219 var219)
(declare-const null-var1836 var1836)
(declare-const var1303 var1507) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var1303 null-var1507)))
(define-const var3777 var3421 (type/-801292795 var1303)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var3727 Int (hashCode/1248596073 var3777)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var256 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3727)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var2437 Int (* var256 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var624 String (description/-801292795 var1303)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var2806 Int (hashCode/-467973558 var624)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3678 Int (bv2nat (bvxor ((_ int2bv 64) var2437) ((_ int2bv 64) var2806)))) ; Statement: i18 = i17 ^ $i1 
(define-const var2415 Int (* var3678 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var1103 String (sourceName/-801292795 var1303)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (= var1103 null-String))) ; Cond: $r3 != null 
(define-const var2081 String (sourceName/-801292795 var1303)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert true)
(define-const var371 Int (hashCode/-467973558 var2081)) ; Statement: $i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1508 Int (bv2nat (bvxor ((_ int2bv 64) var2415) ((_ int2bv 64) var371)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var1278 Int (* var1508 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1703 Int (lineno/-801292795 var1303)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var685 Int (bv2nat (bvxor ((_ int2bv 64) var1278) ((_ int2bv 64) var1703)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var1675 Int (* var685 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var319 Int (charno/-801292795 var1303)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var2347 Int (bv2nat (bvxor ((_ int2bv 64) var1675) ((_ int2bv 64) var319)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var3775 Int (* var2347 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var1593 var219 (node/-801292795 var1303)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (not (= var1593 null-var219)))) ; Negate: Cond: $r5 != null  
(define-const var2854 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i6 = $i15 ^ $i21] 
(assert true) ; Non Conditional
(define-const var2371 Int (bv2nat (bvxor ((_ int2bv 64) var3775) ((_ int2bv 64) var2854)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var958 Int (* var2371 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2935 var1725 (defaultLevel/-801292795 var1303)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var2375 Int (hashCode/385986394 (cast-from-var1725-to-var1128 var2935))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var3329 Int (bv2nat (bvxor ((_ int2bv 64) var958) ((_ int2bv 64) var2375)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var2389 Int (* var3329 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2877 var1836 (requirement/-801292795 var1303)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (not (= var2877 null-var1836)))) ; Negate: Cond: $r8 != null  
(define-const var1281 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i5 = $i9 ^ $i22] 
(assert true) ; Non Conditional
(define-const var1233 Int (bv2nat (bvxor ((_ int2bv 64) var2389) ((_ int2bv 64) var1281)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var1725-to-var1128=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement)}
; {var1507=com.google.javascript.jscomp.AutoValue_JSError, var1303=r0, var3421=com.google.javascript.jscomp.DiagnosticType, var3777=$r1, var3727=$i0, var256=i16, var2437=i17, var624=$r2, var2806=$i1, var3678=i18, var2415=i19, var1103=$r3, var278=null_type, var2081=$r4, var371=$i20, var1508=$i10, var1278=$i11, var1703=$i2, var685=$i12, var1675=$i13, var319=$i3, var2347=$i14, var3775=$i15, var219=com.google.javascript.rhino.Node, var1593=$r5, var2854=$i21, var2371=$i6, var958=$i7, var1725=com.google.javascript.jscomp.CheckLevel, var2935=$r7, var1128=java.lang.Enum, var2375=$i4, var3329=$i8, var2389=$i9, var1836=com.google.javascript.jscomp.Requirement, var2877=$r8, var1281=$i22, var1233=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var1507, r0=var1303, com.google.javascript.jscomp.DiagnosticType=var3421, $r1=var3777, $i0=var3727, i16=var256, i17=var2437, $r2=var624, $i1=var2806, i18=var3678, i19=var2415, $r3=var1103, null_type=var278, $r4=var2081, $i20=var371, $i10=var1508, $i11=var1278, $i2=var1703, $i12=var685, $i13=var1675, $i3=var319, $i14=var2347, $i15=var3775, com.google.javascript.rhino.Node=var219, $r5=var1593, $i21=var2854, $i6=var2371, $i7=var958, com.google.javascript.jscomp.CheckLevel=var1725, $r7=var2935, java.lang.Enum=var1128, $i4=var2375, $i8=var3329, $i9=var2389, com.google.javascript.jscomp.Requirement=var1836, $r8=var2877, $i22=var1281, $i5=var1233}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = 0;	goto [?= $i6 = $i15 ^ $i21];	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = 0;	goto [?= $i5 = $i9 ^ $i22];	$i5 = $i9 ^ $i22;	return $i5
;block_num 7