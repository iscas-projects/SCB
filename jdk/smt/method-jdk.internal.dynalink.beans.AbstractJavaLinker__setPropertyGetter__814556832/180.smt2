(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1602 0)
(declare-sort var2624 0)
(declare-sort var523 0)
(declare-sort var3683 0)
(declare-sort var1559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2624) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var1602_decapitalize/-1979757238 (String) String)
(declare-fun var1602_getMostGenericGetter/810523312 (var2624) var2624)
(declare-fun var1602_createDynamicMethod/1272583118 (var3683) var523)
(declare-fun cast-from-var2624-to-var3683 (var2624) var3683)
(declare-fun setPropertyGetter/-1143574844 (var1602 String var523 var1559) void)
(declare-const null-var1602 var1602)
(declare-const null-var2624 var2624)
(declare-const null-Int Int)
(declare-const var1559-INSTANCE_OF var1559)
(declare-const var1255 var1602) ; Statement: r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker 
(assert (not (= var1255 null-var1602)))
(declare-const var1932 var2624) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1932 null-var2624)))
(declare-const var3901 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3901 null-Int)))
(assert true)
(define-const var2192 String (getName/1227988463 var1932)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert (and true (and (>= var3901 0) (>= (str.len var2192) var3901))))
(define-const var3620 String (substring/850833817 var2192 var3901)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(i0) 
(define-const var2143 String (var1602_decapitalize/-1979757238 var3620)) ; Statement: $r7 = staticinvoke <jdk.internal.dynalink.beans.AbstractJavaLinker: java.lang.String decapitalize(java.lang.String)>($r3) 
(define-const var3952 var2624 (var1602_getMostGenericGetter/810523312 var1932)) ; Statement: $r4 = staticinvoke <jdk.internal.dynalink.beans.AbstractJavaLinker: java.lang.reflect.Method getMostGenericGetter(java.lang.reflect.Method)>(r1) 
(define-const var70 var523 (var1602_createDynamicMethod/1272583118 (cast-from-var2624-to-var3683 var3952))) ; Statement: $r6 = staticinvoke <jdk.internal.dynalink.beans.AbstractJavaLinker: jdk.internal.dynalink.beans.SingleDynamicMethod createDynamicMethod(java.lang.reflect.AccessibleObject)>($r4) 
(define-const var3961 var1559 var1559-INSTANCE_OF) ; Statement: $r5 = <jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType: jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType INSTANCE_OF> 
(assert true)
;(assert (setPropertyGetter/-1143574844 var1255 var2143 var70 var3961)) ; Statement: specialinvoke r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: void setPropertyGetter(java.lang.String,jdk.internal.dynalink.beans.SingleDynamicMethod,jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType)>($r7, $r6, $r5) 

(declare-const var1255!1 var1602)
(declare-const var2143!1 String)
(declare-const var70!1 var523)
(declare-const var3961!1 var1559)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var1602_decapitalize/-1979757238=([java.lang.String], java.lang.String), var1602_getMostGenericGetter/810523312=([java.lang.reflect.Method], java.lang.reflect.Method), var1602_createDynamicMethod/1272583118=([java.lang.reflect.AccessibleObject], jdk.internal.dynalink.beans.SingleDynamicMethod), cast-from-var2624-to-var3683=([java.lang.reflect.Method], java.lang.reflect.AccessibleObject), setPropertyGetter/-1143574844=([jdk.internal.dynalink.beans.AbstractJavaLinker, java.lang.String, jdk.internal.dynalink.beans.SingleDynamicMethod, jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType], void)}
; {var1602=jdk.internal.dynalink.beans.AbstractJavaLinker, var1255=r0, var2624=java.lang.reflect.Method, var1932=r1, var3901=i0, var2192=$r2, var3620=$r3, var2143=$r7, var3952=$r4, var523=jdk.internal.dynalink.beans.SingleDynamicMethod, var3683=java.lang.reflect.AccessibleObject, var70=$r6, var1559=jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType, var3961=$r5}
; {jdk.internal.dynalink.beans.AbstractJavaLinker=var1602, r0=var1255, java.lang.reflect.Method=var2624, r1=var1932, i0=var3901, $r2=var2192, $r3=var3620, $r7=var2143, $r4=var3952, jdk.internal.dynalink.beans.SingleDynamicMethod=var523, java.lang.reflect.AccessibleObject=var3683, $r6=var70, jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType=var1559, $r5=var3961}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker;	r1 := @parameter0: java.lang.reflect.Method;	i0 := @parameter1: int;	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(i0);	$r7 = staticinvoke <jdk.internal.dynalink.beans.AbstractJavaLinker: java.lang.String decapitalize(java.lang.String)>($r3);	$r4 = staticinvoke <jdk.internal.dynalink.beans.AbstractJavaLinker: java.lang.reflect.Method getMostGenericGetter(java.lang.reflect.Method)>(r1);	$r6 = staticinvoke <jdk.internal.dynalink.beans.AbstractJavaLinker: jdk.internal.dynalink.beans.SingleDynamicMethod createDynamicMethod(java.lang.reflect.AccessibleObject)>($r4);	$r5 = <jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType: jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType INSTANCE_OF>;	specialinvoke r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: void setPropertyGetter(java.lang.String,jdk.internal.dynalink.beans.SingleDynamicMethod,jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType)>($r7, $r6, $r5);	return
;block_num 1