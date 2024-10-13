(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2344 0)
(declare-sort var2496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2496) String)
(declare-fun isCollectionMethod/-1206070516 (var2344 var2496) Bool)
(declare-const null-var2344 var2344)
(declare-const null-var2496 var2496)
(declare-const var2155 var2344) ; Statement: r7 := @this: com.github.jknack.handlebars.context.JavaBeanValueResolver 
(assert (not (= var2155 null-var2344)))
(declare-const var2785 var2496) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2785 null-var2496)))
(assert true)
(define-const var2081 String (getName/1227988463 var2785)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2921 Bool (= var2081 "size")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("size") 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert (not (= (ite var2921 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3061 Bool (isCollectionMethod/-1206070516 var2155 var2785)) ; Statement: z3 = virtualinvoke r7.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isCollectionMethod(java.lang.reflect.Method)>(r0) 
 ; Statement: if z3 == 0 goto $r8 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert (not (= (ite var3061 1 0) 0))) ; Negate: Cond: z3 == 0  
 ; Statement: return "length" 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), isCollectionMethod/-1206070516=([com.github.jknack.handlebars.context.JavaBeanValueResolver, java.lang.reflect.Method], boolean)}
; {var2344=com.github.jknack.handlebars.context.JavaBeanValueResolver, var2155=r7, var2496=java.lang.reflect.Method, var2785=r0, var2081=$r1, var2921=$z0, var3061=z3}
; {com.github.jknack.handlebars.context.JavaBeanValueResolver=var2344, r7=var2155, java.lang.reflect.Method=var2496, r0=var2785, $r1=var2081, $z0=var2921, z3=var3061}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.context.JavaBeanValueResolver;	r0 := @parameter0: java.lang.reflect.Method;	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("size");	if $z0 == 0 goto $r8 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	z3 = virtualinvoke r7.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isCollectionMethod(java.lang.reflect.Method)>(r0);	if z3 == 0 goto $r8 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	return "length"
;block_num 3