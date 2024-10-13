(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var48 0)
(declare-sort var1756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1993395105 (var851) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun condition/-1993395105 (var851) var48)
(declare-fun hashCode/1739917532 (var1756) Int)
(declare-fun cast-from-var48-to-var1756 (var48) var1756)
(declare-fun runInFixedPointLoop/-1993395105 (var851) Bool)
(declare-fun internalFactory/-1993395105 (var851) var48)
(declare-const null-var851 var851)
(declare-const var1307 var851) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_PassFactory 
(assert (not (= var1307 null-var851)))
(define-const var982 String (name/-1993395105 var1307)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.lang.String name> 
(assert true)
(define-const var3128 Int (hashCode/-467973558 var982)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3019 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3128)))) ; Statement: i6 = 1000003 ^ $i0 
(define-const var3465 Int (* var3019 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var3168 var48 (condition/-1993395105 var1307)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function condition> 
(assert true)
(define-const var1636 Int (hashCode/1739917532 (cast-from-var48-to-var1756 var3168))) ; Statement: $i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var1867 Int (bv2nat (bvxor ((_ int2bv 64) var3465) ((_ int2bv 64) var1636)))) ; Statement: i8 = i7 ^ $i1 
(define-const var3913 Int (* var1867 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var833 Bool (runInFixedPointLoop/-1993395105 var1307)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: boolean runInFixedPointLoop> 
 ; Statement: if $z0 == 0 goto $s10 = 1237 
(assert (= (ite var833 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3681 Int 1237) ; Statement: $s10 = 1237 
(assert true) ; Non Conditional
(define-const var101 Int (bv2nat (bvxor ((_ int2bv 64) var3913) ((_ int2bv 64) var3681)))) ; Statement: $i3 = i9 ^ $s10 
(define-const var1693 Int (* var101 1000003)) ; Statement: $i4 = $i3 * 1000003 
(define-const var1936 var48 (internalFactory/-1993395105 var1307)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function internalFactory> 
(assert true)
(define-const var3078 Int (hashCode/1739917532 (cast-from-var48-to-var1756 var1936))) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(define-const var1923 Int (bv2nat (bvxor ((_ int2bv 64) var1693) ((_ int2bv 64) var3078)))) ; Statement: $i5 = $i4 ^ $i2 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], java.lang.String), hashCode/-467973558=([java.lang.String], int), condition/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], java.util.function.Function), hashCode/1739917532=([java.lang.Object], int), cast-from-var48-to-var1756=([java.util.function.Function], java.lang.Object), runInFixedPointLoop/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], boolean), internalFactory/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], java.util.function.Function)}
; {var851=com.google.javascript.jscomp.AutoValue_PassFactory, var1307=r0, var982=$r1, var3128=$i0, var3019=i6, var3465=i7, var48=java.util.function.Function, var3168=$r2, var1756=java.lang.Object, var1636=$i1, var1867=i8, var3913=i9, var833=$z0, var3681=$s10, var101=$i3, var1693=$i4, var1936=$r3, var3078=$i2, var1923=$i5}
; {com.google.javascript.jscomp.AutoValue_PassFactory=var851, r0=var1307, $r1=var982, $i0=var3128, i6=var3019, i7=var3465, java.util.function.Function=var48, $r2=var3168, java.lang.Object=var1756, $i1=var1636, i8=var1867, i9=var3913, $z0=var833, $s10=var3681, $i3=var101, $i4=var1693, $r3=var1936, $i2=var3078, $i5=var1923}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_PassFactory;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i6 = 1000003 ^ $i0;	i7 = i6 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function condition>;	$i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	i8 = i7 ^ $i1;	i9 = i8 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: boolean runInFixedPointLoop>;	if $z0 == 0 goto $s10 = 1237;	$s10 = 1237;	$i3 = i9 ^ $s10;	$i4 = $i3 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function internalFactory>;	$i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i5 = $i4 ^ $i2;	return $i5
;block_num 3