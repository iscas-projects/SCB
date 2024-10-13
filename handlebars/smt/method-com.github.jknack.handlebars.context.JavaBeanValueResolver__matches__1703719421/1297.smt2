(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var2453 0)
(declare-sort var3673 0)
(declare-sort var3174 0)
(declare-sort var3206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStatic/121318078 (var3174 var3206) Bool)
(declare-fun cast-from-var1984-to-var3174 (var1984) var3174)
(declare-fun cast-from-var2453-to-var3206 (var2453) var3206)
(declare-fun isPublic/627548643 (var3174 var3206) Bool)
(declare-fun getName/1227988463 (var2453) String)
(declare-fun var1984_javaBeanMethod/-1588761967 (String String) String)
(declare-fun getParameterTypes/827748249 (var2453) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-const null-var1984 var1984)
(declare-const null-var2453 var2453)
(declare-const null-String String)
(declare-const var1032 var1984) ; Statement: r1 := @this: com.github.jknack.handlebars.context.JavaBeanValueResolver 
(assert (not (= var1032 null-var1984)))
(declare-const var3345 var2453) ; Statement: r2 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3345 null-var2453)))
(declare-const var2428 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2428 null-String)))
(assert true)
(define-const var258 Bool (= var2428 "length")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("length") 
 ; Statement: if $z0 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2) 
(assert (= (ite var258 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1850 Bool (isStatic/121318078 (cast-from-var1984-to-var3174 var1032) (cast-from-var2453-to-var3206 var3345))) ; Statement: $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2) 
(assert true)
(define-const var3291 Bool (isPublic/627548643 (cast-from-var1984-to-var3174 var1032) (cast-from-var2453-to-var3206 var3345))) ; Statement: $z4 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isPublic(java.lang.reflect.Member)>(r2) 
(assert true)
(define-const var1712 String (getName/1227988463 var3345)) ; Statement: $r4 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var346 String (var1984_javaBeanMethod/-1588761967 "get" var2428)) ; Statement: $r5 = staticinvoke <com.github.jknack.handlebars.context.JavaBeanValueResolver: java.lang.String javaBeanMethod(java.lang.String,java.lang.String)>("get", r0) 
(assert true)
(define-const var795 Bool (= var1712 var346)) ; Statement: $z5 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
(assert true)
(define-const var2462 String (getName/1227988463 var3345)) ; Statement: $r6 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2040 String (var1984_javaBeanMethod/-1588761967 "is" var2428)) ; Statement: $r7 = staticinvoke <com.github.jknack.handlebars.context.JavaBeanValueResolver: java.lang.String javaBeanMethod(java.lang.String,java.lang.String)>("is", r0) 
(assert true)
(define-const var1443 Bool (= var2462 var2040)) ; Statement: $z6 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var221 (Array Int ClassObject) (getParameterTypes/827748249 var3345)) ; Statement: $r8 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var558 Int (getLength-Arr-ClassObject-1 var221)) ; Statement: $i0 = lengthof $r8 
 ; Statement: if $z3 != 0 goto $z7 = 0 
(assert (not (= (ite var1850 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3907 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z7 
(check-sat)
(get-model)
(get-unsat-core)
; {isStatic/121318078=([com.github.jknack.handlebars.context.MemberValueResolver, java.lang.reflect.Member], boolean), cast-from-var1984-to-var3174=([com.github.jknack.handlebars.context.JavaBeanValueResolver], com.github.jknack.handlebars.context.MemberValueResolver), cast-from-var2453-to-var3206=([java.lang.reflect.Method], java.lang.reflect.Member), isPublic/627548643=([com.github.jknack.handlebars.context.MemberValueResolver, java.lang.reflect.Member], boolean), getName/1227988463=([java.lang.reflect.Method], java.lang.String), var1984_javaBeanMethod/-1588761967=([java.lang.String, java.lang.String], java.lang.String), getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int)}
; {var1984=com.github.jknack.handlebars.context.JavaBeanValueResolver, var1032=r1, var2453=java.lang.reflect.Method, var3345=r2, var2428=r0, var3673=null_type, var258=$z0, var3174=com.github.jknack.handlebars.context.MemberValueResolver, var3206=java.lang.reflect.Member, var1850=$z3, var3291=$z4, var1712=$r4, var346=$r5, var795=$z5, var2462=$r6, var2040=$r7, var1443=$z6, var221=$r8, var558=$i0, var3907=$z7}
; {com.github.jknack.handlebars.context.JavaBeanValueResolver=var1984, r1=var1032, java.lang.reflect.Method=var2453, r2=var3345, r0=var2428, null_type=var3673, $z0=var258, com.github.jknack.handlebars.context.MemberValueResolver=var3174, java.lang.reflect.Member=var3206, $z3=var1850, $z4=var3291, $r4=var1712, $r5=var346, $z5=var795, $r6=var2462, $r7=var2040, $z6=var1443, $r8=var221, $i0=var558, $z7=var3907}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r1 := @this: com.github.jknack.handlebars.context.JavaBeanValueResolver;	r2 := @parameter0: java.lang.reflect.Method;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("length");	if $z0 == 0 goto $z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2);	$z3 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isStatic(java.lang.reflect.Member)>(r2);	$z4 = virtualinvoke r1.<com.github.jknack.handlebars.context.JavaBeanValueResolver: boolean isPublic(java.lang.reflect.Member)>(r2);	$r4 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>();	$r5 = staticinvoke <com.github.jknack.handlebars.context.JavaBeanValueResolver: java.lang.String javaBeanMethod(java.lang.String,java.lang.String)>("get", r0);	$z5 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r5);	$r6 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>();	$r7 = staticinvoke <com.github.jknack.handlebars.context.JavaBeanValueResolver: java.lang.String javaBeanMethod(java.lang.String,java.lang.String)>("is", r0);	$z6 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r8 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i0 = lengthof $r8;	if $z3 != 0 goto $z7 = 0;	$z7 = 0;	return $z7
;block_num 4