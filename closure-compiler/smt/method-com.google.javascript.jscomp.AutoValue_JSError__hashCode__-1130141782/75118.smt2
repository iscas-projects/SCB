(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3710 0)
(declare-sort var399 0)
(declare-sort var2877 0)
(declare-sort var428 0)
(declare-sort var3687 0)
(declare-sort var1548 0)
(declare-sort var1342 0)
(declare-sort var387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-801292795 (var3710) var399)
(declare-fun hashCode/1248596073 (var399) Int)
(declare-fun description/-801292795 (var3710) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceName/-801292795 (var3710) String)
(declare-fun lineno/-801292795 (var3710) Int)
(declare-fun charno/-801292795 (var3710) Int)
(declare-fun node/-801292795 (var3710) var428)
(declare-fun hashCode/1739917532 (var3687) Int)
(declare-fun cast-from-var428-to-var3687 (var428) var3687)
(declare-fun defaultLevel/-801292795 (var3710) var1548)
(declare-fun hashCode/385986394 (var1342) Int)
(declare-fun cast-from-var1548-to-var1342 (var1548) var1342)
(declare-fun requirement/-801292795 (var3710) var387)
(declare-fun hashCode/-1591607735 (var387) Int)
(declare-const null-var3710 var3710)
(declare-const null-String String)
(declare-const null-var428 var428)
(declare-const null-var387 var387)
(declare-const var1864 var3710) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JSError 
(assert (not (= var1864 null-var3710)))
(define-const var3281 var399 (type/-801292795 var1864)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type> 
(assert true)
(define-const var2524 Int (hashCode/1248596073 var3281)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>() 
(define-const var577 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2524)))) ; Statement: i16 = 1000003 ^ $i0 
(define-const var3408 Int (* var577 1000003)) ; Statement: i17 = i16 * 1000003 
(define-const var1955 String (description/-801292795 var1864)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description> 
(assert true)
(define-const var2600 Int (hashCode/-467973558 var1955)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1611 Int (bv2nat (bvxor ((_ int2bv 64) var3408) ((_ int2bv 64) var2600)))) ; Statement: i18 = i17 ^ $i1 
(define-const var3948 Int (* var1611 1000003)) ; Statement: i19 = i18 * 1000003 
(define-const var1119 String (sourceName/-801292795 var1864)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName> 
(assert (not (not (= var1119 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var669 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i10 = i19 ^ $i20] 
(assert true) ; Non Conditional
(define-const var2957 Int (bv2nat (bvxor ((_ int2bv 64) var3948) ((_ int2bv 64) var669)))) ; Statement: $i10 = i19 ^ $i20 
(define-const var2644 Int (* var2957 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2283 Int (lineno/-801292795 var1864)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno> 
(define-const var3467 Int (bv2nat (bvxor ((_ int2bv 64) var2644) ((_ int2bv 64) var2283)))) ; Statement: $i12 = $i11 ^ $i2 
(define-const var826 Int (* var3467 1000003)) ; Statement: $i13 = $i12 * 1000003 
(define-const var2364 Int (charno/-801292795 var1864)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno> 
(define-const var3976 Int (bv2nat (bvxor ((_ int2bv 64) var826) ((_ int2bv 64) var2364)))) ; Statement: $i14 = $i13 ^ $i3 
(define-const var308 Int (* var3976 1000003)) ; Statement: $i15 = $i14 * 1000003 
(define-const var2056 var428 (node/-801292795 var1864)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert (not (= var2056 null-var428))) ; Cond: $r5 != null 
(define-const var2555 var428 (node/-801292795 var1864)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node> 
(assert true)
(define-const var2941 Int (hashCode/1739917532 (cast-from-var428-to-var3687 var2555))) ; Statement: $i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1973 Int (bv2nat (bvxor ((_ int2bv 64) var308) ((_ int2bv 64) var2941)))) ; Statement: $i6 = $i15 ^ $i21 
(define-const var36 Int (* var1973 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3325 var1548 (defaultLevel/-801292795 var1864)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel> 
(assert true)
(define-const var45 Int (hashCode/385986394 (cast-from-var1548-to-var1342 var3325))) ; Statement: $i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>() 
(define-const var229 Int (bv2nat (bvxor ((_ int2bv 64) var36) ((_ int2bv 64) var45)))) ; Statement: $i8 = $i7 ^ $i4 
(define-const var3519 Int (* var229 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2380 var387 (requirement/-801292795 var1864)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert (not (= var2380 null-var387))) ; Cond: $r8 != null 
(define-const var3376 var387 (requirement/-801292795 var1864)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement> 
(assert true)
(define-const var2275 Int (hashCode/-1591607735 var3376)) ; Statement: $i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2672 Int (bv2nat (bvxor ((_ int2bv 64) var3519) ((_ int2bv 64) var2275)))) ; Statement: $i5 = $i9 ^ $i22 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.DiagnosticType), hashCode/1248596073=([com.google.javascript.jscomp.DiagnosticType], int), description/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceName/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], java.lang.String), lineno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), charno/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], int), node/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var428-to-var3687=([com.google.javascript.rhino.Node], java.lang.Object), defaultLevel/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.CheckLevel), hashCode/385986394=([java.lang.Enum], int), cast-from-var1548-to-var1342=([com.google.javascript.jscomp.CheckLevel], java.lang.Enum), requirement/-801292795=([com.google.javascript.jscomp.AutoValue_JSError], com.google.javascript.jscomp.Requirement), hashCode/-1591607735=([com.google.javascript.jscomp.Requirement], int)}
; {var3710=com.google.javascript.jscomp.AutoValue_JSError, var1864=r0, var399=com.google.javascript.jscomp.DiagnosticType, var3281=$r1, var2524=$i0, var577=i16, var3408=i17, var1955=$r2, var2600=$i1, var1611=i18, var3948=i19, var1119=$r3, var2877=null_type, var669=$i20, var2957=$i10, var2644=$i11, var2283=$i2, var3467=$i12, var826=$i13, var2364=$i3, var3976=$i14, var308=$i15, var428=com.google.javascript.rhino.Node, var2056=$r5, var2555=$r6, var3687=java.lang.Object, var2941=$i21, var1973=$i6, var36=$i7, var1548=com.google.javascript.jscomp.CheckLevel, var3325=$r7, var1342=java.lang.Enum, var45=$i4, var229=$i8, var3519=$i9, var387=com.google.javascript.jscomp.Requirement, var2380=$r8, var3376=$r9, var2275=$i22, var2672=$i5}
; {com.google.javascript.jscomp.AutoValue_JSError=var3710, r0=var1864, com.google.javascript.jscomp.DiagnosticType=var399, $r1=var3281, $i0=var2524, i16=var577, i17=var3408, $r2=var1955, $i1=var2600, i18=var1611, i19=var3948, $r3=var1119, null_type=var2877, $i20=var669, $i10=var2957, $i11=var2644, $i2=var2283, $i12=var3467, $i13=var826, $i3=var2364, $i14=var3976, $i15=var308, com.google.javascript.rhino.Node=var428, $r5=var2056, $r6=var2555, java.lang.Object=var3687, $i21=var2941, $i6=var1973, $i7=var36, com.google.javascript.jscomp.CheckLevel=var1548, $r7=var3325, java.lang.Enum=var1342, $i4=var45, $i8=var229, $i9=var3519, com.google.javascript.jscomp.Requirement=var387, $r8=var2380, $r9=var3376, $i22=var2275, $i5=var2672}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JSError;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.DiagnosticType type>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.DiagnosticType: int hashCode()>();	i16 = 1000003 ^ $i0;	i17 = i16 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String description>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i18 = i17 ^ $i1;	i19 = i18 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_JSError: java.lang.String sourceName>;	$i20 = 0;	goto [?= $i10 = i19 ^ $i20];	$i10 = i19 ^ $i20;	$i11 = $i10 * 1000003;	$i2 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int lineno>;	$i12 = $i11 ^ $i2;	$i13 = $i12 * 1000003;	$i3 = r0.<com.google.javascript.jscomp.AutoValue_JSError: int charno>;	$i14 = $i13 ^ $i3;	$i15 = $i14 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.rhino.Node node>;	$i21 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	$i6 = $i15 ^ $i21;	$i7 = $i6 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.CheckLevel defaultLevel>;	$i4 = virtualinvoke $r7.<com.google.javascript.jscomp.CheckLevel: int hashCode()>();	$i8 = $i7 ^ $i4;	$i9 = $i8 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JSError: com.google.javascript.jscomp.Requirement requirement>;	$i22 = virtualinvoke $r9.<com.google.javascript.jscomp.Requirement: int hashCode()>();	$i5 = $i9 ^ $i22;	return $i5
;block_num 7