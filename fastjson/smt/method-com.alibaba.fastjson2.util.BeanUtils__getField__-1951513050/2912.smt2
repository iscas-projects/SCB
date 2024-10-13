(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var20 0)
(declare-sort var2767 0)
(declare-sort var3227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3227!class ClassObject)
(declare-fun getName/1227988463 (var20) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getReturnType/-1494237887 (var20) ClassObject)
(declare-fun arr-var2767-init () (Array Int var2767))
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var20 var20)
(declare-const null-var2767 var2767)
(declare-const var306 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var306 null-ClassObject)))
(declare-const var528 var20) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var528 null-var20)))
(assert true)
(define-const var96 String (getName/1227988463 var528)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2576 Int (length/-134980193 var96)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var1887 ClassObject (getReturnType/-1494237887 var528)) ; Statement: r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3926 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var749 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var2574 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
 ; Statement: if i0 <= 2 goto $r12 = newarray (java.lang.reflect.Field)[2] 
(assert (<= var2576 2)) ; Cond: i0 <= 2 
(define-const var2255 (Array Int var2767) arr-var2767-init) ; Statement: $r12 = newarray (java.lang.reflect.Field)[2] 
 ; Statement: if z4 != 0 goto (branch) 
(assert (not (not (= (ite var3926 1 0) 0)))) ; Negate: Cond: z4 != 0  
 ; Statement: if z5 != 0 goto (branch) 
(assert (not (not (= (ite var749 1 0) 0)))) ; Negate: Cond: z5 != 0  
 ; Statement: if z6 == 0 goto $r15 = $r12[0] 
(assert (= (ite var2574 1 0) 0)) ; Cond: z6 == 0 
(define-const var3962 var2767 (select var2255 0)) ; Statement: $r15 = $r12[0] 
 ; Statement: if $r15 == null goto $r16 = $r12[1] 
(assert (not (= var3962 null-var2767))) ; Negate: Cond: $r15 == null  
(define-const var3676 var2767 (select var2255 0)) ; Statement: $r16 = $r12[0] 
 ; Statement: goto [?= r17 = $r16] 
(assert true) ; Non Conditional
(define-const var529 var2767 var3676) ; Statement: r17 = $r16 
(define-const var1524 ClassObject var3227!class) ; Statement: $r5 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var2297 Bool (isAssignableFrom/-1028998700 var1524 var306)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r3) 
 ; Statement: if $z0 == 0 goto return r17 
(assert (= (ite var2297 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), length/-134980193=([java.lang.String], int), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), arr-var2767-init=([], java.lang.reflect.Field[]), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var306=r3, var20=java.lang.reflect.Method, var528=r0, var96=r1, var2576=i0, var1887=r2, var3926=z4, var749=z5, var2574=z6, var2767=java.lang.reflect.Field, var2255=$r12, var3962=$r15, var3676=$r16, var529=r17, var3227=java.lang.Throwable, var1524=$r5, var2297=$z0}
; {r3=var306, java.lang.reflect.Method=var20, r0=var528, r1=var96, i0=var2576, r2=var1887, z4=var3926, z5=var749, z6=var2574, java.lang.reflect.Field=var2767, $r12=var2255, $r15=var3962, $r16=var3676, r17=var529, java.lang.Throwable=var3227, $r5=var1524, $z0=var2297}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	z4 = 0;	z5 = 0;	z6 = 0;	if i0 <= 2 goto $r12 = newarray (java.lang.reflect.Field)[2];	$r12 = newarray (java.lang.reflect.Field)[2];	if z4 != 0 goto (branch);	if z5 != 0 goto (branch);	if z6 == 0 goto $r15 = $r12[0];	$r15 = $r12[0];	if $r15 == null goto $r16 = $r12[1];	$r16 = $r12[0];	goto [?= r17 = $r16];	r17 = $r16;	$r5 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r3);	if $z0 == 0 goto return r17;	return r17
;block_num 8