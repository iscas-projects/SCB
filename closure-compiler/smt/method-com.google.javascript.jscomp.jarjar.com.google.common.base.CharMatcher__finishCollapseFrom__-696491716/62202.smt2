(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3488 var3488)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3245 var3488) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var3245 null-var3488)))
(declare-const var721 String) ; Statement: r2 := @parameter0: java.lang.CharSequence 
(assert (not (= var721 null-String)))
(declare-const var1877 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1877 null-Int)))
(declare-const var3968 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3968 null-Int)))
(declare-const var3172 Int) ; Statement: c3 := @parameter3: char 
(assert (not (= var3172 null-Int)))
(declare-const var3283 String) ; Statement: r0 := @parameter4: java.lang.StringBuilder 
(assert (not (= var3283 null-String)))
(declare-const var2013 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var2013 null-Bool)))
(define-const var2953 Int var1877) ; Statement: i4 = i0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2953 var3968)) ; Cond: i4 >= i1 
(assert true)
(define-const var3892 String (toString/-2075883882 var3283)) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3488=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3245=r3, var721=r2, var1877=i0, var3968=i1, var3172=c3, var3283=r0, var2013=z1, var2953=i4, var3892=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3488, r3=var3245, r2=var721, i0=var1877, i1=var3968, c3=var3172, r0=var3283, z1=var2013, i4=var2953, $r1=var3892}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r2 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	c3 := @parameter3: char;	r0 := @parameter4: java.lang.StringBuilder;	z1 := @parameter5: boolean;	i4 = i0;	if i4 >= i1 goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 3