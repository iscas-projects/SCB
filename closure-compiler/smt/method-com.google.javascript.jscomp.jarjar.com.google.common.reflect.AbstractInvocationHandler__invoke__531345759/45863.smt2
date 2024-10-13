(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2263 0)
(declare-sort var940 0)
(declare-sort var2789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var940-1 ((Array Int var940)) Int)
(declare-fun getName/1227988463 (var2789) String)
(declare-fun hashCode/1988621580 (var2263) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-const null-var2263 var2263)
(declare-const null-var940 var940)
(declare-const null-var2789 var2789)
(declare-const null-__Array__Int__var940__ (Array Int var940))
(declare-const var1578 var2263) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler 
(assert (not (= var1578 null-var2263)))
(declare-const var667 var940) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var667 null-var940)))
(declare-const var302 var2789) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var302 null-var2789)))
(declare-const var1592 (Array Int var940)) ; Statement: r16 := @parameter2: java.lang.Object[] 
(assert (not (= var1592 null-__Array__Int__var940__)))
 ; Statement: if r16 != null goto $i0 = lengthof r16 
(assert (not (= var1592 null-__Array__Int__var940__))) ; Cond: r16 != null 
(define-const var1229 Int (getLength-Arr-var940-1 var1592)) ; Statement: $i0 = lengthof r16 
 ; Statement: if $i0 != 0 goto $i1 = lengthof r16 
(assert (not (not (= var1229 0)))) ; Negate: Cond: $i0 != 0  
(assert true)
(define-const var1155 String (getName/1227988463 var302)) ; Statement: $r14 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var330 Bool (= var1155 "hashCode")) ; Statement: $z4 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>("hashCode") 
 ; Statement: if $z4 == 0 goto $i1 = lengthof r16 
(assert (not (= (ite var330 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var2456 Int (hashCode/1988621580 var1578)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler: int hashCode()>() 
(define-const var1886 Int (Int_valueOf/-1371140006 var2456)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var940-1=([java.lang.Object[]], int), getName/1227988463=([java.lang.reflect.Method], java.lang.String), hashCode/1988621580=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler], int), Int_valueOf/-1371140006=([int], java.lang.Integer)}
; {var2263=com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler, var1578=r0, var940=java.lang.Object, var667=r1, var2789=java.lang.reflect.Method, var302=r2, var1592=r16, var1229=$i0, var1155=$r14, var330=$z4, var2456=$i2, var1886=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler=var2263, r0=var1578, java.lang.Object=var940, r1=var667, java.lang.reflect.Method=var2789, r2=var302, r16=var1592, $i0=var1229, $r14=var1155, $z4=var330, $i2=var2456, $r15=var1886}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler;	r1 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.reflect.Method;	r16 := @parameter2: java.lang.Object[];	if r16 != null goto $i0 = lengthof r16;	$i0 = lengthof r16;	if $i0 != 0 goto $i1 = lengthof r16;	$r14 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>();	$z4 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>("hashCode");	if $z4 == 0 goto $i1 = lengthof r16;	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.AbstractInvocationHandler: int hashCode()>();	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	return $r15
;block_num 4