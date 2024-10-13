(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1335 0)
(declare-sort var1948 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1948) String)
(declare-fun getLength-Arr-var3834-1 ((Array Int var3834)) Int)
(declare-fun getReplacement/-1096001534 (var1335) var3834)
(declare-const null-var1335 var1335)
(declare-const null-var1948 var1948)
(declare-const null-__Array__Int__var3834__ (Array Int var3834))
(declare-const null-var3834 var3834)
(declare-const var584 var1335) ; Statement: r3 := @this: org.hibernate.proxy.pojo.BasicLazyInitializer 
(assert (not (= var584 null-var1335)))
(declare-const var1545 var1948) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1545 null-var1948)))
(declare-const var2377 (Array Int var3834)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var2377 null-__Array__Int__var3834__)))
(declare-const var850 var3834) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var850 null-var3834)))
(assert true)
(define-const var612 String (getName/1227988463 var1545)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2014 Int (getLength-Arr-var3834-1 var2377)) ; Statement: i0 = lengthof r2 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var2014 0)))) ; Negate: Cond: i0 != 0  
(define-const var3177 String "writeReplace") ; Statement: $r16 = "writeReplace" 
(assert true)
(define-const var3151 Bool (= var3177 var612)) ; Statement: $z4 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z4 == 0 goto $z5 = r3.<org.hibernate.proxy.pojo.BasicLazyInitializer: boolean overridesEquals> 
(assert (not (= (ite var3151 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var3858 var3834 (getReplacement/-1096001534 var584)) ; Statement: $r22 = specialinvoke r3.<org.hibernate.proxy.pojo.BasicLazyInitializer: java.lang.Object getReplacement()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var3834-1=([java.lang.Object[]], int), getReplacement/-1096001534=([org.hibernate.proxy.pojo.BasicLazyInitializer], java.lang.Object)}
; {var1335=org.hibernate.proxy.pojo.BasicLazyInitializer, var584=r3, var1948=java.lang.reflect.Method, var1545=r0, var3834=java.lang.Object, var2377=r2, var850=r13, var612=r1, var2014=i0, var3177=$r16, var3151=$z4, var3858=$r22}
; {org.hibernate.proxy.pojo.BasicLazyInitializer=var1335, r3=var584, java.lang.reflect.Method=var1948, r0=var1545, java.lang.Object=var3834, r2=var2377, r13=var850, r1=var612, i0=var2014, $r16=var3177, $z4=var3151, $r22=var3858}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.proxy.pojo.BasicLazyInitializer;	r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.Object[];	r13 := @parameter2: java.lang.Object;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = lengthof r2;	if i0 != 0 goto (branch);	$r16 = "writeReplace";	$z4 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z4 == 0 goto $z5 = r3.<org.hibernate.proxy.pojo.BasicLazyInitializer: boolean overridesEquals>;	$r22 = specialinvoke r3.<org.hibernate.proxy.pojo.BasicLazyInitializer: java.lang.Object getReplacement()>();	return $r22
;block_num 3