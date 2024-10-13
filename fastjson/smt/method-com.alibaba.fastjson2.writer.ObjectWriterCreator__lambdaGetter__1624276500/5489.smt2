(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3704 0)
(declare-sort var1438 0)
(declare-sort var2610 0)
(declare-sort var3610 0)
(declare-sort var193 0)
(declare-sort var499 0)
(declare-sort var1644 0)
(declare-sort var144 0)
(declare-sort var1233 0)
(declare-sort var507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3610_trustedLookup/-1394055039 (ClassObject) var2610)
(declare-fun var193_get/1088891777 (var193 var499) var499)
(declare-fun cast-from-ClassObject-to-var499 (ClassObject) var499)
(declare-fun cast-from-var499-to-var1644 (var499) var1644)
(declare-fun methodType/1116218715 (var1644) var144)
(declare-fun invokedType/1116218715 (var1644) var144)
(declare-fun methodName/1116218715 (var1644) String)
(declare-fun samMethodType/1116218715 (var1644) var144)
(declare-fun var507-init () var507)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var499) String)
(declare-fun cast-from-var1438-to-var499 (var1438) var499)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var507 String var1233) void)
(declare-const null-var3704 var3704)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1438 var1438)
(declare-const var3704-lambdaMapping var193)
(declare-const null-var1644 var1644)
(declare-const null-var1233 var1233)
(declare-const var3184 var3704) ; Statement: r19 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreator 
(assert (not (= var3184 null-var3704)))
(declare-const var1184 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1184 null-ClassObject)))
(declare-const var2354 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2354 null-ClassObject)))
(declare-const var221 var1438) ; Statement: r6 := @parameter2: java.lang.reflect.Method 
(assert (not (= var221 null-var1438)))
(define-const var1686 var2610 (var3610_trustedLookup/-1394055039 var1184)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.JDKUtils: java.lang.invoke.MethodHandles$Lookup trustedLookup(java.lang.Class)>(r0) 
(define-const var2188 var193 var3704-lambdaMapping) ; Statement: $r3 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: java.util.Map lambdaMapping> 
(define-const var1607 var499 (var193_get/1088891777 var2188 (cast-from-ClassObject-to-var499 var2354))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var1793 var1644 (cast-from-var499-to-var1644 var1607)) ; Statement: r5 = (com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo) $r4 
 ; Statement: if r5 == null goto r20 = staticinvoke <java.lang.invoke.MethodType: java.lang.invoke.MethodType methodType(java.lang.Class)>(r2) 
(assert (not (= var1793 null-var1644))) ; Negate: Cond: r5 == null  
(define-const var1827 var144 (methodType/1116218715 var1793)) ; Statement: r20 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.invoke.MethodType methodType> 
(define-const var750 var144 (invokedType/1116218715 var1793)) ; Statement: r21 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.invoke.MethodType invokedType> 
(define-const var2711 String (methodName/1116218715 var1793)) ; Statement: r22 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.String methodName> 
(define-const var2710 var144 (samMethodType/1116218715 var1793)) ; Statement: r23 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.invoke.MethodType samMethodType> 
 ; Statement: goto [?= $r7 = virtualinvoke r6.<java.lang.reflect.Method: java.lang.String getName()>()] 
(assert true) ; Non Conditional
(declare-const var3392 var1233) ; Statement: $r13 := @caughtexception 
(assert (not (= var3392 null-var1233)))
(define-const var595 var507 var507-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var679 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var679)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var679!1 String)
(assert (= var679!1 ""))
(assert true)
(define-const var293 String (append/672562846 var679!1 "create fieldLambdaGetter error, method : ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create fieldLambdaGetter error, method : ") 
(declare-const var679!2 String)
(assert (= var679!2 (str.++ var679!1 "create fieldLambdaGetter error, method : ")))
(assert true)
(define-const var238 String (append/-1031950772 var293 (cast-from-var1438-to-var499 var221))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var293!1 String)
(assert (str.prefixof var293 var293!1))
(assert true)
(define-const var2933 String (toString/-2075883882 var238)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var595 var2933 var3392)) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13) 

(declare-const var595!1 var507)
(declare-const var2933!1 String)
(declare-const var3392!1 var1233)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3610_trustedLookup/-1394055039=([java.lang.Class], java.lang.invoke.MethodHandles$Lookup), var193_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var499=([java.lang.Class], java.lang.Object), cast-from-var499-to-var1644=([java.lang.Object], com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo), methodType/1116218715=([com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo], java.lang.invoke.MethodType), invokedType/1116218715=([com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo], java.lang.invoke.MethodType), methodName/1116218715=([com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo], java.lang.String), samMethodType/1116218715=([com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo], java.lang.invoke.MethodType), var507-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1438-to-var499=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3704=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3184=r19, var1184=r0, var2354=r2, var1438=java.lang.reflect.Method, var221=r6, var2610=java.lang.invoke.MethodHandles$Lookup, var3610=com.alibaba.fastjson2.util.JDKUtils, var1686=r1, var193=java.util.Map, var2188=$r3, var499=java.lang.Object, var1607=$r4, var1644=com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo, var1793=r5, var144=java.lang.invoke.MethodType, var1827=r20, var750=r21, var2711=r22, var2710=r23, var1233=java.lang.Throwable, var3392=$r13, var507=com.alibaba.fastjson2.JSONException, var595=$r14, var679=$r15, var293=$r16, var238=$r17, var2933=$r18}
; {com.alibaba.fastjson2.writer.ObjectWriterCreator=var3704, r19=var3184, r0=var1184, r2=var2354, java.lang.reflect.Method=var1438, r6=var221, java.lang.invoke.MethodHandles$Lookup=var2610, com.alibaba.fastjson2.util.JDKUtils=var3610, r1=var1686, java.util.Map=var193, $r3=var2188, java.lang.Object=var499, $r4=var1607, com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo=var1644, r5=var1793, java.lang.invoke.MethodType=var144, r20=var1827, r21=var750, r22=var2711, r23=var2710, java.lang.Throwable=var1233, $r13=var3392, com.alibaba.fastjson2.JSONException=var507, $r14=var595, $r15=var679, $r16=var293, $r17=var238, $r18=var2933}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreator;	r0 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.Class;	r6 := @parameter2: java.lang.reflect.Method;	r1 = staticinvoke <com.alibaba.fastjson2.util.JDKUtils: java.lang.invoke.MethodHandles$Lookup trustedLookup(java.lang.Class)>(r0);	$r3 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: java.util.Map lambdaMapping>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r5 = (com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo) $r4;	if r5 == null goto r20 = staticinvoke <java.lang.invoke.MethodType: java.lang.invoke.MethodType methodType(java.lang.Class)>(r2);	r20 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.invoke.MethodType methodType>;	r21 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.invoke.MethodType invokedType>;	r22 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.String methodName>;	r23 = r5.<com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo: java.lang.invoke.MethodType samMethodType>;	goto [?= $r7 = virtualinvoke r6.<java.lang.reflect.Method: java.lang.String getName()>()];	$r13 := @caughtexception;	$r14 = new com.alibaba.fastjson2.JSONException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create fieldLambdaGetter error, method : ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13);	throw $r14
;block_num 3