(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var718 0)
(declare-sort var805 0)
(declare-sort var3415 0)
(declare-sort var1055 0)
(declare-sort var927 0)
(declare-sort var1838 0)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var718) var805)
(declare-fun hashCode/1248596073 (var805) Int)
(declare-fun description/-801292795 (var718) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var718) String)
(declare-fun lineno/-801292795 (var718) Int)
(declare-fun charno/-801292795 (var718) Int)
(declare-fun node/-801292795 (var718) var1055)
(declare-fun defaultLevel/-801292795 (var718) var927)
(declare-fun hashCode/385986394 (var1838) Int)
(declare-fun cast-from-var927-to-var1838 (var927) var1838)
(declare-fun requirement/-801292795 (var718) var1109)
(declare-const null-var718 var718)
(declare-const null-String String)
(declare-const null-var1055 var1055)
(declare-const null-var1109 var1109)
(declare-const var112 var718) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var112 null-var718)))
(define-const var372 var805 (type/-801292795 var112)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var1865 Int (hashCode/1248596073 var372)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var3917 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1865)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var3811 Int (* var3917 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var2683 String (description/-801292795 var112)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var2489 Int (hashCode/-467973558 var2683)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3988 Int (bv2nat (bvxor ((_ int2bv 64) var3811) ((_ int2bv 64) var2489)))) ; Statement: i18 = i17 ^ $i1 
(define-const var2296 Int (* var3988 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var346 String (sourceName/-801292795 var112)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (not (= var346 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var3963 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i10 = i19 ^ $i20] 
(assert true) ; Non Conditional
(define-const var2164 Int (bv2nat (bvxor ((_ int2bv 64) var2296) ((_ int2bv 64) var3963)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var136 Int (* var2164 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2101 Int (lineno/-801292795 var112)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var3412 Int (bv2nat (bvxor ((_ int2bv 64) var136) ((_ int2bv 64) var2101)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var7 Int (* var3412 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var3630 Int (charno/-801292795 var112)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var3115 Int (bv2nat (bvxor ((_ int2bv 64) var7) ((_ int2bv 64) var3630)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var3595 Int (* var3115 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var2686 var1055 (node/-801292795 var112)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (not (= var2686 null-var1055)))) ; Negate: Cond: $r5 != null  
(define-const var2474 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i6 = $i15 ^ $i21] 
(assert true) ; Non Conditional
(define-const var56 Int (bv2nat (bvxor ((_ int2bv 64) var3595) ((_ int2bv 64) var2474)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var1391 Int (* var56 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var698 var927 (defaultLevel/-801292795 var112)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var3247 Int (hashCode/385986394 (cast-from-var927-to-var1838 var698))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var2392 Int (bv2nat (bvxor ((_ int2bv 64) var1391) ((_ int2bv 64) var3247)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var1313 Int (* var2392 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2537 var1109 (requirement/-801292795 var112)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (not (= var2537 null-var1109)))) ; Negate: Cond: $r8 != null  
(define-const var3575 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i5 = $i9 ^ $i22] 
(assert true) ; Non Conditional
(define-const var3480 Int (bv2nat (bvxor ((_ int2bv 64) var1313) ((_ int2bv 64) var3575)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var927-to-var1838=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement)}
; {var718=com.google.javascript.jscomp.AutoValue_JSError, var112=r0, var805=com.google.javascript.jscomp.DiagnosticType, var372=$r1, var1865=$i0, var3917=i16, var3811=i17, var2683=$r2, var2489=$i1, var3988=i18, var2296=i19, var346=$r3, var3415=null_type, var3963=$i20, var2164=$i10, var136=$i11, var2101=$i2, var3412=$i12, var7=$i13, var3630=$i3, var3115=$i14, var3595=$i15, var1055=com.google.javascript.rhino.Node, var2686=$r5, var2474=$i21, var56=$i6, var1391=$i7, var927=com.google.javascript.jscomp.CheckLevel, var698=$r7, var1838=java.lang.Enum, var3247=$i4, var2392=$i8, var1313=$i9, var1109=com.google.javascript.jscomp.Requirement, var2537=$r8, var3575=$i22, var3480=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var718, r0=var112, com.google.javascript.jscomp.DiagnosticType=var805, $r1=var372, $i0=var1865, i16=var3917, i17=var3811, $r2=var2683, $i1=var2489, i18=var3988, i19=var2296, $r3=var346, null_type=var3415, $i20=var3963, $i10=var2164, $i11=var136, $i2=var2101, $i12=var3412, $i13=var7, $i3=var3630, $i14=var3115, $i15=var3595, com.google.javascript.rhino.Node=var1055, $r5=var2686, $i21=var2474, $i6=var56, $i7=var1391, com.google.javascript.jscomp.CheckLevel=var927, $r7=var698, java.lang.Enum=var1838, $i4=var3247, $i8=var2392, $i9=var1313, com.google.javascript.jscomp.Requirement=var1109, $r8=var2537, $i22=var3575, $i5=var3480}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = 0;	goto [?= $i10 = i19 ^ $i20];	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = 0;	goto [?= $i6 = $i15 ^ $i21];	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = 0;	goto [?= $i5 = $i9 ^ $i22];	$i5 = $i9 ^ $i22;	return $i5
;block_num 7