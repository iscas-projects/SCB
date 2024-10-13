(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1974 0)
(declare-sort var1400 0)
(declare-sort var8 0)
(declare-sort var1963 0)
(declare-sort var439 0)
(declare-sort var3495 0)
(declare-sort var2120 0)
(declare-sort var692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var1974) var1400)
(declare-fun hashCode/1248596073 (var1400) Int)
(declare-fun description/-801292795 (var1974) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var1974) String)
(declare-fun lineno/-801292795 (var1974) Int)
(declare-fun charno/-801292795 (var1974) Int)
(declare-fun node/-801292795 (var1974) var1963)
(declare-fun hashCode/1739917532 (var439) Int)
(declare-fun cast-from-var1963-to-var439 (var1963) var439)
(declare-fun defaultLevel/-801292795 (var1974) var3495)
(declare-fun hashCode/385986394 (var2120) Int)
(declare-fun cast-from-var3495-to-var2120 (var3495) var2120)
(declare-fun requirement/-801292795 (var1974) var692)
(declare-const null-var1974 var1974)
(declare-const null-String String)
(declare-const null-var1963 var1963)
(declare-const null-var692 var692)
(declare-const var774 var1974) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var774 null-var1974)))
(define-const var610 var1400 (type/-801292795 var774)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var2996 Int (hashCode/1248596073 var610)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var2755 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2996)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var3614 Int (* var2755 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var3563 String (description/-801292795 var774)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var1767 Int (hashCode/-467973558 var3563)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3320 Int (bv2nat (bvxor ((_ int2bv 64) var3614) ((_ int2bv 64) var1767)))) ; Statement: i18 = i17 ^ $i1 
(define-const var584 Int (* var3320 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var941 String (sourceName/-801292795 var774)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (= var941 null-String))) ; Cond: $r3 != null 
(define-const var3529 String (sourceName/-801292795 var774)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert true)
(define-const var3837 Int (hashCode/-467973558 var3529)) ; Statement: $i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3898 Int (bv2nat (bvxor ((_ int2bv 64) var584) ((_ int2bv 64) var3837)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var2804 Int (* var3898 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3710 Int (lineno/-801292795 var774)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var20 Int (bv2nat (bvxor ((_ int2bv 64) var2804) ((_ int2bv 64) var3710)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var1226 Int (* var20 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var154 Int (charno/-801292795 var774)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var3134 Int (bv2nat (bvxor ((_ int2bv 64) var1226) ((_ int2bv 64) var154)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var2772 Int (* var3134 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var818 var1963 (node/-801292795 var774)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (= var818 null-var1963))) ; Cond: $r5 != null 
(define-const var612 var1963 (node/-801292795 var774)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert true)
(define-const var2170 Int (hashCode/1739917532 (cast-from-var1963-to-var439 var612))) ; Statement: $i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2891 Int (bv2nat (bvxor ((_ int2bv 64) var2772) ((_ int2bv 64) var2170)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var2913 Int (* var2891 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3989 var3495 (defaultLevel/-801292795 var774)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var1368 Int (hashCode/385986394 (cast-from-var3495-to-var2120 var3989))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var116 Int (bv2nat (bvxor ((_ int2bv 64) var2913) ((_ int2bv 64) var1368)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var3118 Int (* var116 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var148 var692 (requirement/-801292795 var774)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (not (= var148 null-var692)))) ; Negate: Cond: $r8 != null  
(define-const var1019 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i5 = $i9 ^ $i22] 
(assert true) ; Non Conditional
(define-const var1981 Int (bv2nat (bvxor ((_ int2bv 64) var3118) ((_ int2bv 64) var1019)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var1963-to-var439=([com.google.javascript.rhino.Node], java.lang.Object), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var3495-to-var2120=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement)}
; {var1974=com.google.javascript.jscomp.AutoValue_JSError, var774=r0, var1400=com.google.javascript.jscomp.DiagnosticType, var610=$r1, var2996=$i0, var2755=i16, var3614=i17, var3563=$r2, var1767=$i1, var3320=i18, var584=i19, var941=$r3, var8=null_type, var3529=$r4, var3837=$i20, var3898=$i10, var2804=$i11, var3710=$i2, var20=$i12, var1226=$i13, var154=$i3, var3134=$i14, var2772=$i15, var1963=com.google.javascript.rhino.Node, var818=$r5, var612=$r6, var439=java.lang.Object, var2170=$i21, var2891=$i6, var2913=$i7, var3495=com.google.javascript.jscomp.CheckLevel, var3989=$r7, var2120=java.lang.Enum, var1368=$i4, var116=$i8, var3118=$i9, var692=com.google.javascript.jscomp.Requirement, var148=$r8, var1019=$i22, var1981=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var1974, r0=var774, com.google.javascript.jscomp.DiagnosticType=var1400, $r1=var610, $i0=var2996, i16=var2755, i17=var3614, $r2=var3563, $i1=var1767, i18=var3320, i19=var584, $r3=var941, null_type=var8, $r4=var3529, $i20=var3837, $i10=var3898, $i11=var2804, $i2=var3710, $i12=var20, $i13=var1226, $i3=var154, $i14=var3134, $i15=var2772, com.google.javascript.rhino.Node=var1963, $r5=var818, $r6=var612, java.lang.Object=var439, $i21=var2170, $i6=var2891, $i7=var2913, com.google.javascript.jscomp.CheckLevel=var3495, $r7=var3989, java.lang.Enum=var2120, $i4=var1368, $i8=var116, $i9=var3118, com.google.javascript.jscomp.Requirement=var692, $r8=var148, $i22=var1019, $i5=var1981}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = 0;	goto [?= $i5 = $i9 ^ $i22];	$i5 = $i9 ^ $i22;	return $i5
;block_num 7