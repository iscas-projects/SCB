(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var740 0)
(declare-sort var579 0)
(declare-sort var1136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var579) String)
(declare-fun isCollectionMethod/-1206070516 (var740 var579) Bool)
(declare-const null-var740 var740)
(declare-const null-var579 var579)
(declare-const null-String String)
(declare-const var3456 var740) ; Statement: r1 := @this: com.github.jknack.handlebars.context.JavaBeanValueResolver 
(assert (not (= var3456 null-var740)))
(declare-const var918 var579) ; Statement: r2 := @parameter0: java.lang.reflect.Method 
(assert (not (= var918 null-var579)))
(declare-const var2647 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2647 null-String)))
(assert true)
(define-const var801 Bool (= var2647 "length")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("length") 
 ; Statement: if $z0 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2) 
(assert (not (= (ite var801 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2183 String (getName/1227988463 var918)) ; Statement: $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2524 Bool (= var2183 "size")) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("size") 
 ; Statement: if $z1 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2) 
(assert (not (= (ite var2524 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var2452 Bool (isCollectionMethod/-1206070516 var3456 var918)) ; Statement: z2 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isCollectionMethod(java.lang.reflect.Method)>(r2) 
 ; Statement: if z2 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2) 
(assert (not (= (ite var2452 1 0) 0))) ; Negate: Cond: z2 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), isCollectionMethod/-1206070516=([com.github.jknack.handlebars.context.JavaBeanValueResolver, java.lang.reflect.Method], boolean)}
; {var740=com.github.jknack.handlebars.context.JavaBeanValueResolver, var3456=r1, var579=java.lang.reflect.Method, var918=r2, var2647=r0, var1136=null_type, var801=$z0, var2183=$r3, var2524=$z1, var2452=z2}
; {com.github.jknack.handlebars.context.JavaBeanValueResolver=var740, r1=var3456, java.lang.reflect.Method=var579, r2=var918, r0=var2647, null_type=var1136, $z0=var801, $r3=var2183, $z1=var2524, z2=var2452}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r1 := @this: com.github.jknack.handlebars.context.JavaBeanValueResolver;	r2 := @parameter0: java.lang.reflect.Method;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("length");	if $z0 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2);	$r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>();	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("size");	if $z1 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2);	z2 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isCollectionMethod(java.lang.reflect.Method)>(r2);	if z2 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2);	return 1
;block_num 4