(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3669 0)
(declare-sort var1378 0)
(declare-sort var204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun scheme/-433627804 (var3669) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun authParams/-433627804 (var3669) var1378)
(declare-fun hashCode/1739917532 (var204) Int)
(declare-fun cast-from-var1378-to-var204 (var1378) var204)
(declare-const null-var3669 var3669)
(declare-const var3520 var3669) ; Statement: r0 := @this: okhttp3.Challenge 
(assert (not (= var3520 null-var3669)))
(define-const var2384 String (scheme/-433627804 var3520)) ; Statement: $r1 = r0.<okhttp3.Challenge: java.lang.String scheme> 
(assert true)
(define-const var427 Int (hashCode/-467973558 var2384)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2992 Int (+ 899 var427)) ; Statement: i3 = 899 + $i0 
(define-const var1530 Int (* 31 var2992)) ; Statement: $i2 = 31 * i3 
(define-const var1056 var1378 (authParams/-433627804 var3520)) ; Statement: $r2 = r0.<okhttp3.Challenge: java.util.Map authParams> 
(assert true)
(define-const var1837 Int (hashCode/1739917532 (cast-from-var1378-to-var204 var1056))) ; Statement: $i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var2668 Int (+ var1530 var1837)) ; Statement: i4 = $i2 + $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {scheme/-433627804=([okhttp3.Challenge], java.lang.String), hashCode/-467973558=([java.lang.String], int), authParams/-433627804=([okhttp3.Challenge], java.util.Map), hashCode/1739917532=([java.lang.Object], int), cast-from-var1378-to-var204=([java.util.Map], java.lang.Object)}
; {var3669=okhttp3.Challenge, var3520=r0, var2384=$r1, var427=$i0, var2992=i3, var1530=$i2, var1378=java.util.Map, var1056=$r2, var204=java.lang.Object, var1837=$i1, var2668=i4}
; {okhttp3.Challenge=var3669, r0=var3520, $r1=var2384, $i0=var427, i3=var2992, $i2=var1530, java.util.Map=var1378, $r2=var1056, java.lang.Object=var204, $i1=var1837, i4=var2668}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: okhttp3.Challenge;	$r1 = r0.<okhttp3.Challenge: java.lang.String scheme>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 899 + $i0;	$i2 = 31 * i3;	$r2 = r0.<okhttp3.Challenge: java.util.Map authParams>;	$i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	i4 = $i2 + $i1;	return i4
;block_num 1