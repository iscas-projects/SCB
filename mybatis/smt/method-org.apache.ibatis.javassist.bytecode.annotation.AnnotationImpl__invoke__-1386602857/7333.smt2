(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3392 0)
(declare-sort var942 0)
(declare-sort var2821 0)
(declare-sort var2187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var942!class ClassObject)
(declare-fun getName/1227988463 (var2821) String)
(declare-fun getDeclaringClass/501867354 (var2821) ClassObject)
(declare-fun checkEquals/-46963362 (var3392 var942) Bool)
(declare-fun var2187_valueOf/1602327315 (Bool) var2187)
(declare-const null-var3392 var3392)
(declare-const null-var942 var942)
(declare-const null-var2821 var2821)
(declare-const null-__Array__Int__var942__ (Array Int var942))
(declare-const var1360 var3392) ; Statement: r4 := @this: org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl 
(assert (not (= var1360 null-var3392)))
(declare-const var1709 var942) ; Statement: r19 := @parameter0: java.lang.Object 
(assert (not (= var1709 null-var942)))
(declare-const var3646 var2821) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3646 null-var2821)))
(declare-const var3030 (Array Int var942)) ; Statement: r17 := @parameter2: java.lang.Object[] 
(assert (not (= var3030 null-__Array__Int__var942__)))
(assert true)
(define-const var646 String (getName/1227988463 var3646)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2200 ClassObject (getDeclaringClass/501867354 var3646)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
 ; Statement: if class "Ljava/lang/Object;" != $r2 goto $r3 = "annotationType" 
(assert (not (not (= var942!class var2200)))) ; Negate: Cond: class "Ljava/lang/Object;" != $r2  
(define-const var2074 String "equals") ; Statement: $r11 = "equals" 
(assert true)
(define-const var1410 Bool (= var2074 var646)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 == 0 goto $r12 = "toString" 
(assert (not (= (ite var1410 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1512 var942 (select var3030 0)) ; Statement: r20 = r17[0] 
(assert true)
(define-const var2899 Bool (checkEquals/-46963362 var1360 var1512)) ; Statement: $z4 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.'annotation'.AnnotationImpl: boolean checkEquals(java.lang.Object)>(r20) 
(define-const var3507 var2187 (var2187_valueOf/1602327315 var2899)) ; Statement: $r18 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z4) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), checkEquals/-46963362=([org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl, java.lang.Object], boolean), var2187_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var3392=org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl, var1360=r4, var942=java.lang.Object, var1709=r19, var2821=java.lang.reflect.Method, var3646=r0, var3030=r17, var646=r1, var2200=$r2, var2074=$r11, var1410=$z1, var1512=r20, var2899=$z4, var2187=java.lang.Boolean, var3507=$r18}
; {org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl=var3392, r4=var1360, java.lang.Object=var942, r19=var1709, java.lang.reflect.Method=var2821, r0=var3646, r17=var3030, r1=var646, $r2=var2200, $r11=var2074, $z1=var1410, r20=var1512, $z4=var2899, java.lang.Boolean=var2187, $r18=var3507}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: org.apache.ibatis.javassist.bytecode.annotation.AnnotationImpl;	r19 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r17 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	if class "Ljava/lang/Object;" != $r2 goto $r3 = "annotationType";	$r11 = "equals";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 == 0 goto $r12 = "toString";	r20 = r17[0];	$z4 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.'annotation'.AnnotationImpl: boolean checkEquals(java.lang.Object)>(r20);	$r18 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z4);	return $r18
;block_num 3