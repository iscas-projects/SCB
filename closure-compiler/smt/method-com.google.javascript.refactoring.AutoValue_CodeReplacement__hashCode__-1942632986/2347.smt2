(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startPosition/-691372735 (var747) Int)
(declare-fun length/-691372735 (var747) Int)
(declare-fun newContent/-691372735 (var747) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sortKey/-691372735 (var747) String)
(declare-const null-var747 var747)
(declare-const var2921 var747) ; Statement: r0 := @this: com.google.javascript.refactoring.AutoValue_CodeReplacement 
(assert (not (= var2921 null-var747)))
(define-const var3007 Int (startPosition/-691372735 var2921)) ; Statement: $i0 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: int startPosition> 
(define-const var2355 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3007)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var1059 Int (* var2355 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var1607 Int (length/-691372735 var2921)) ; Statement: $i1 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: int length> 
(define-const var1383 Int (bv2nat (bvxor ((_ int2bv 64) var1059) ((_ int2bv 64) var1607)))) ; Statement: i6 = i5 ^ $i1 
(define-const var3163 Int (* var1383 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var573 String (newContent/-691372735 var2921)) ; Statement: $r1 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: java.lang.String newContent> 
(assert true)
(define-const var1438 Int (hashCode/-467973558 var573)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2342 Int (bv2nat (bvxor ((_ int2bv 64) var3163) ((_ int2bv 64) var1438)))) ; Statement: i8 = i7 ^ $i2 
(define-const var1523 Int (* var2342 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var154 String (sortKey/-691372735 var2921)) ; Statement: $r2 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: java.lang.String sortKey> 
(assert true)
(define-const var693 Int (hashCode/-467973558 var154)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1699 Int (bv2nat (bvxor ((_ int2bv 64) var1523) ((_ int2bv 64) var693)))) ; Statement: i10 = i9 ^ $i3 
 ; Statement: return i10 
(check-sat)
(get-model)
(get-unsat-core)
; {startPosition/-691372735=([com.google.javascript.refactoring.AutoValue_CodeReplacement], int), length/-691372735=([com.google.javascript.refactoring.AutoValue_CodeReplacement], int), newContent/-691372735=([com.google.javascript.refactoring.AutoValue_CodeReplacement], java.lang.String), hashCode/-467973558=([java.lang.String], int), sortKey/-691372735=([com.google.javascript.refactoring.AutoValue_CodeReplacement], java.lang.String)}
; {var747=com.google.javascript.refactoring.AutoValue_CodeReplacement, var2921=r0, var3007=$i0, var2355=i4, var1059=i5, var1607=$i1, var1383=i6, var3163=i7, var573=$r1, var1438=$i2, var2342=i8, var1523=i9, var154=$r2, var693=$i3, var1699=i10}
; {com.google.javascript.refactoring.AutoValue_CodeReplacement=var747, r0=var2921, $i0=var3007, i4=var2355, i5=var1059, $i1=var1607, i6=var1383, i7=var3163, $r1=var573, $i2=var1438, i8=var2342, i9=var1523, $r2=var154, $i3=var693, i10=var1699}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.refactoring.AutoValue_CodeReplacement;	$i0 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: int startPosition>;	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$i1 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: int length>;	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$r1 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: java.lang.String newContent>;	$i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$r2 = r0.<com.google.javascript.refactoring.AutoValue_CodeReplacement: java.lang.String sortKey>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i10 = i9 ^ $i3;	return i10
;block_num 1