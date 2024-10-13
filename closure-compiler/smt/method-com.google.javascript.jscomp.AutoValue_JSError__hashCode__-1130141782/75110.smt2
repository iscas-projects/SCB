(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var30 0)
(declare-sort var922 0)
(declare-sort var3594 0)
(declare-sort var3773 0)
(declare-sort var2303 0)
(declare-sort var3428 0)
(declare-sort var3376 0)
(declare-sort var2523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var30) var922)
(declare-fun hashCode/1248596073 (var922) Int)
(declare-fun description/-801292795 (var30) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var30) String)
(declare-fun lineno/-801292795 (var30) Int)
(declare-fun charno/-801292795 (var30) Int)
(declare-fun node/-801292795 (var30) var3773)
(declare-fun hashCode/1739917532 (var2303) Int)
(declare-fun cast-from-var3773-to-var2303 (var3773) var2303)
(declare-fun defaultLevel/-801292795 (var30) var3428)
(declare-fun hashCode/385986394 (var3376) Int)
(declare-fun cast-from-var3428-to-var3376 (var3428) var3376)
(declare-fun requirement/-801292795 (var30) var2523)
(declare-const null-var30 var30)
(declare-const null-String String)
(declare-const null-var3773 var3773)
(declare-const null-var2523 var2523)
(declare-const var2659 var30) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var2659 null-var30)))
(define-const var2941 var922 (type/-801292795 var2659)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var2536 Int (hashCode/1248596073 var2941)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var2529 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2536)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var1714 Int (* var2529 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var627 String (description/-801292795 var2659)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var230 Int (hashCode/-467973558 var627)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1941 Int (bv2nat (bvxor ((_ int2bv 64) var1714) ((_ int2bv 64) var230)))) ; Statement: i18 = i17 ^ $i1 
(define-const var1238 Int (* var1941 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var57 String (sourceName/-801292795 var2659)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (not (= var57 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var555 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i10 = i19 ^ $i20] 
(assert true) ; Non Conditional
(define-const var1418 Int (bv2nat (bvxor ((_ int2bv 64) var1238) ((_ int2bv 64) var555)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var850 Int (* var1418 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1470 Int (lineno/-801292795 var2659)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var2297 Int (bv2nat (bvxor ((_ int2bv 64) var850) ((_ int2bv 64) var1470)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var928 Int (* var2297 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var1971 Int (charno/-801292795 var2659)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var2482 Int (bv2nat (bvxor ((_ int2bv 64) var928) ((_ int2bv 64) var1971)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var3922 Int (* var2482 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var2630 var3773 (node/-801292795 var2659)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (= var2630 null-var3773))) ; Cond: $r5 != null 
(define-const var654 var3773 (node/-801292795 var2659)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert true)
(define-const var1226 Int (hashCode/1739917532 (cast-from-var3773-to-var2303 var654))) ; Statement: $i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var541 Int (bv2nat (bvxor ((_ int2bv 64) var3922) ((_ int2bv 64) var1226)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var1693 Int (* var541 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1653 var3428 (defaultLevel/-801292795 var2659)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var2260 Int (hashCode/385986394 (cast-from-var3428-to-var3376 var1653))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var2833 Int (bv2nat (bvxor ((_ int2bv 64) var1693) ((_ int2bv 64) var2260)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var2575 Int (* var2833 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3459 var2523 (requirement/-801292795 var2659)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (not (= var3459 null-var2523)))) ; Negate: Cond: $r8 != null  
(define-const var19 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i5 = $i9 ^ $i22] 
(assert true) ; Non Conditional
(define-const var2398 Int (bv2nat (bvxor ((_ int2bv 64) var2575) ((_ int2bv 64) var19)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var3773-to-var2303=([com.google.javascript.rhino.Node], java.lang.Object), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var3428-to-var3376=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement)}
; {var30=com.google.javascript.jscomp.AutoValue_JSError, var2659=r0, var922=com.google.javascript.jscomp.DiagnosticType, var2941=$r1, var2536=$i0, var2529=i16, var1714=i17, var627=$r2, var230=$i1, var1941=i18, var1238=i19, var57=$r3, var3594=null_type, var555=$i20, var1418=$i10, var850=$i11, var1470=$i2, var2297=$i12, var928=$i13, var1971=$i3, var2482=$i14, var3922=$i15, var3773=com.google.javascript.rhino.Node, var2630=$r5, var654=$r6, var2303=java.lang.Object, var1226=$i21, var541=$i6, var1693=$i7, var3428=com.google.javascript.jscomp.CheckLevel, var1653=$r7, var3376=java.lang.Enum, var2260=$i4, var2833=$i8, var2575=$i9, var2523=com.google.javascript.jscomp.Requirement, var3459=$r8, var19=$i22, var2398=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var30, r0=var2659, com.google.javascript.jscomp.DiagnosticType=var922, $r1=var2941, $i0=var2536, i16=var2529, i17=var1714, $r2=var627, $i1=var230, i18=var1941, i19=var1238, $r3=var57, null_type=var3594, $i20=var555, $i10=var1418, $i11=var850, $i2=var1470, $i12=var2297, $i13=var928, $i3=var1971, $i14=var2482, $i15=var3922, com.google.javascript.rhino.Node=var3773, $r5=var2630, $r6=var654, java.lang.Object=var2303, $i21=var1226, $i6=var541, $i7=var1693, com.google.javascript.jscomp.CheckLevel=var3428, $r7=var1653, java.lang.Enum=var3376, $i4=var2260, $i8=var2833, $i9=var2575, com.google.javascript.jscomp.Requirement=var2523, $r8=var3459, $i22=var19, $i5=var2398}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = 0;	goto [?= $i10 = i19 ^ $i20];	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = 0;	goto [?= $i5 = $i9 ^ $i22];	$i5 = $i9 ^ $i22;	return $i5
;block_num 7