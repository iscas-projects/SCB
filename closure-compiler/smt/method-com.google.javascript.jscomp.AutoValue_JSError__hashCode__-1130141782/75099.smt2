(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1267 0)
(declare-sort var3793 0)
(declare-sort var3430 0)
(declare-sort var2262 0)
(declare-sort var1983 0)
(declare-sort var2005 0)
(declare-sort var2700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var1267) var3793)
(declare-fun hashCode/1248596073 (var3793) Int)
(declare-fun description/-801292795 (var1267) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var1267) String)
(declare-fun lineno/-801292795 (var1267) Int)
(declare-fun charno/-801292795 (var1267) Int)
(declare-fun node/-801292795 (var1267) var2262)
(declare-fun defaultLevel/-801292795 (var1267) var1983)
(declare-fun hashCode/385986394 (var2005) Int)
(declare-fun cast-from-var1983-to-var2005 (var1983) var2005)
(declare-fun requirement/-801292795 (var1267) var2700)
(declare-fun hashCode/-1591607735 (var2700) Int)
(declare-const null-var1267 var1267)
(declare-const null-String String)
(declare-const null-var2262 var2262)
(declare-const null-var2700 var2700)
(declare-const var1177 var1267) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var1177 null-var1267)))
(define-const var614 var3793 (type/-801292795 var1177)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var3737 Int (hashCode/1248596073 var614)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var2284 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3737)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var1635 Int (* var2284 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var187 String (description/-801292795 var1177)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var3370 Int (hashCode/-467973558 var187)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var626 Int (bv2nat (bvxor ((_ int2bv 64) var1635) ((_ int2bv 64) var3370)))) ; Statement: i18 = i17 ^ $i1 
(define-const var1616 Int (* var626 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var3149 String (sourceName/-801292795 var1177)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (not (= var3149 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var3126 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i10 = i19 ^ $i20] 
(assert true) ; Non Conditional
(define-const var2259 Int (bv2nat (bvxor ((_ int2bv 64) var1616) ((_ int2bv 64) var3126)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var1581 Int (* var2259 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3477 Int (lineno/-801292795 var1177)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var1763 Int (bv2nat (bvxor ((_ int2bv 64) var1581) ((_ int2bv 64) var3477)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var845 Int (* var1763 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var342 Int (charno/-801292795 var1177)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var1054 Int (bv2nat (bvxor ((_ int2bv 64) var845) ((_ int2bv 64) var342)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var2660 Int (* var1054 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var2420 var2262 (node/-801292795 var1177)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (not (= var2420 null-var2262)))) ; Negate: Cond: $r5 != null  
(define-const var3530 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i6 = $i15 ^ $i21] 
(assert true) ; Non Conditional
(define-const var1342 Int (bv2nat (bvxor ((_ int2bv 64) var2660) ((_ int2bv 64) var3530)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var1758 Int (* var1342 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1701 var1983 (defaultLevel/-801292795 var1177)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var2381 Int (hashCode/385986394 (cast-from-var1983-to-var2005 var1701))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var3222 Int (bv2nat (bvxor ((_ int2bv 64) var1758) ((_ int2bv 64) var2381)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var1346 Int (* var3222 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1550 var2700 (requirement/-801292795 var1177)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (= var1550 null-var2700))) ; Cond: $r8 != null 
(define-const var2701 var2700 (requirement/-801292795 var1177)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert true)
(define-const var733 Int (hashCode/-1591607735 var2701)) ; Statement: $i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var493 Int (bv2nat (bvxor ((_ int2bv 64) var1346) ((_ int2bv 64) var733)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var1983-to-var2005=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement), hashCode/-1591607735=([com.google.javascript.jscomp.Requirement], int)}
; {var1267=com.google.javascript.jscomp.AutoValue_JSError, var1177=r0, var3793=com.google.javascript.jscomp.DiagnosticType, var614=$r1, var3737=$i0, var2284=i16, var1635=i17, var187=$r2, var3370=$i1, var626=i18, var1616=i19, var3149=$r3, var3430=null_type, var3126=$i20, var2259=$i10, var1581=$i11, var3477=$i2, var1763=$i12, var845=$i13, var342=$i3, var1054=$i14, var2660=$i15, var2262=com.google.javascript.rhino.Node, var2420=$r5, var3530=$i21, var1342=$i6, var1758=$i7, var1983=com.google.javascript.jscomp.CheckLevel, var1701=$r7, var2005=java.lang.Enum, var2381=$i4, var3222=$i8, var1346=$i9, var2700=com.google.javascript.jscomp.Requirement, var1550=$r8, var2701=$r9, var733=$i22, var493=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var1267, r0=var1177, com.google.javascript.jscomp.DiagnosticType=var3793, $r1=var614, $i0=var3737, i16=var2284, i17=var1635, $r2=var187, $i1=var3370, i18=var626, i19=var1616, $r3=var3149, null_type=var3430, $i20=var3126, $i10=var2259, $i11=var1581, $i2=var3477, $i12=var1763, $i13=var845, $i3=var342, $i14=var1054, $i15=var2660, com.google.javascript.rhino.Node=var2262, $r5=var2420, $i21=var3530, $i6=var1342, $i7=var1758, com.google.javascript.jscomp.CheckLevel=var1983, $r7=var1701, java.lang.Enum=var2005, $i4=var2381, $i8=var3222, $i9=var1346, com.google.javascript.jscomp.Requirement=var2700, $r8=var1550, $r9=var2701, $i22=var733, $i5=var493}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = 0;	goto [?= $i10 = i19 ^ $i20];	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = 0;	goto [?= $i6 = $i15 ^ $i21];	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>();	$i5 = $i9 ^ $i22;	return $i5
;block_num 7