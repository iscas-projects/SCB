(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort var3805 0)
(declare-sort var3403 0)
(declare-sort var3314 0)
(declare-sort var2654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWriteMethod/-1678871138 (var3805) var3314)
(declare-fun var2654-init () var2654)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1352726375 (var2654 String) void)
(declare-const null-var2922 var2922)
(declare-const null-var3805 var3805)
(declare-const null-String String)
(declare-const null-var3314 var3314)
(declare-const var1275 var2922) ; Statement: r3 := @this: org.apache.log4j.config.PropertySetter 
(assert (not (= var1275 null-var2922)))
(declare-const var2009 var3805) ; Statement: r0 := @parameter0: java.beans.PropertyDescriptor 
(assert (not (= var2009 null-var3805)))
(declare-const var1492 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1492 null-String)))
(declare-const var981 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var981 null-String)))
(assert true)
(define-const var68 var3314 (getWriteMethod/-1678871138 var2009)) ; Statement: r1 = virtualinvoke r0.<java.beans.PropertyDescriptor: java.lang.reflect.Method getWriteMethod()>() 
 ; Statement: if r1 != null goto r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert (not (not (= var68 null-var3314)))) ; Negate: Cond: r1 != null  
(define-const var583 var2654 var2654-init) ; Statement: $r25 = new org.apache.log4j.config.PropertySetterException 
(define-const var1826 String String-init) ; Statement: $r26 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1826)) ; Statement: specialinvoke $r26.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1826!1 String)
(assert true)
(define-const var2638 String (append/1560614132 var1826!1 "No setter for property [")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("No setter for property [") 
(declare-const var1826!2 String)
(assert (str.prefixof var1826!1 var1826!2))
(assert true)
(define-const var1308 String (append/1560614132 var2638 var1492)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r8) 
(declare-const var2638!1 String)
(assert (str.prefixof var2638 var2638!1))
(assert true)
(define-const var3359 String (append/1560614132 var1308 "].")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1308!1 String)
(assert (str.prefixof var1308 var1308!1))
(assert true)
(define-const var1218 String (toString/-222306083 var3359)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1352726375 var583 var1218)) ; Statement: specialinvoke $r25.<org.apache.log4j.config.PropertySetterException: void <init>(java.lang.String)>($r30) 

(declare-const var583!1 var2654)
(declare-const var1218!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {getWriteMethod/-1678871138=([java.beans.PropertyDescriptor], java.lang.reflect.Method), var2654-init=([], org.apache.log4j.config.PropertySetterException), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1352726375=([org.apache.log4j.config.PropertySetterException, java.lang.String], void)}
; {var2922=org.apache.log4j.config.PropertySetter, var1275=r3, var3805=java.beans.PropertyDescriptor, var2009=r0, var1492=r8, var3403=null_type, var981=r4, var3314=java.lang.reflect.Method, var68=r1, var2654=org.apache.log4j.config.PropertySetterException, var583=$r25, var1826=$r26, var2638=$r27, var1308=$r28, var3359=$r29, var1218=$r30}
; {org.apache.log4j.config.PropertySetter=var2922, r3=var1275, java.beans.PropertyDescriptor=var3805, r0=var2009, r8=var1492, null_type=var3403, r4=var981, java.lang.reflect.Method=var3314, r1=var68, org.apache.log4j.config.PropertySetterException=var2654, $r25=var583, $r26=var1826, $r27=var2638, $r28=var1308, $r29=var3359, $r30=var1218}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.config.PropertySetter;	r0 := @parameter0: java.beans.PropertyDescriptor;	r8 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<java.beans.PropertyDescriptor: java.lang.reflect.Method getWriteMethod()>();	if r1 != null goto r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$r25 = new org.apache.log4j.config.PropertySetterException;	$r26 = new java.lang.StringBuffer;	specialinvoke $r26.<java.lang.StringBuffer: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("No setter for property [");	$r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r8);	$r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r25.<org.apache.log4j.config.PropertySetterException: void <init>(java.lang.String)>($r30);	throw $r25
;block_num 2