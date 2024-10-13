(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/-1676780796 (var885) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun flags/-1676780796 (var885) Int)
(declare-const null-var885 var885)
(declare-const var3931 var885) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern 
(assert (not (= var3931 null-var885)))
(define-const var3240 String (pattern/-1676780796 var3931)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern: java.lang.String pattern> 
(assert true)
(define-const var2333 Int (hashCode/-467973558 var3240)) ; Statement: i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3754 Int (* 31 var2333)) ; Statement: $i1 = 31 * i2 
(define-const var1795 Int (flags/-1676780796 var3931)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern: int flags> 
(define-const var2594 Int (+ var3754 var1795)) ; Statement: i3 = $i1 + $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/-1676780796=([com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern], java.lang.String), hashCode/-467973558=([java.lang.String], int), flags/-1676780796=([com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern], int)}
; {var885=com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern, var3931=r0, var3240=$r1, var2333=i2, var3754=$i1, var1795=$i0, var2594=i3}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern=var885, r0=var3931, $r1=var3240, i2=var2333, $i1=var3754, $i0=var1795, i3=var2594}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern: java.lang.String pattern>;	i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i1 = 31 * i2;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Pattern: int flags>;	i3 = $i1 + $i0;	return i3
;block_num 1