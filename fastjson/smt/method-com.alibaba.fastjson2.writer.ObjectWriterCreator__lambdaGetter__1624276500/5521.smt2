(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var651 0)
(declare-sort var1236 0)
(declare-sort var1254 0)
(declare-sort var282 0)
(declare-sort var972 0)
(declare-sort var3956 0)
(declare-sort var3052 0)
(declare-sort var3482 0)
(declare-sort var2758 0)
(declare-sort var3490 0)
(declare-sort var3585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var282_trustedLookup/-1394055039 (ClassObject) var1254)
(declare-fun var972_get/1088891777 (var972 var3956) var3956)
(declare-fun cast-from-ClassObject-to-var3956 (ClassObject) var3956)
(declare-fun cast-from-var3956-to-var3052 (var3956) var3052)
(declare-fun var3482_methodType/819421718 (ClassObject) var3482)
(declare-fun var3585-init () var3585)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3956) String)
(declare-fun cast-from-var1236-to-var3956 (var1236) var3956)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3585 String var3490) void)
(declare-const null-var651 var651)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1236 var1236)
(declare-const var651-lambdaMapping var972)
(declare-const null-var3052 var3052)
(declare-const var2758-METHOD_TYPE_FUNCTION var3482)
(declare-const var2758-METHOD_TYPE_OBJECT_OBJECT var3482)
(declare-const null-var3490 var3490)
(declare-const var3804 var651) ; Statement: r19 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreator 
(assert (not (= var3804 null-var651)))
(declare-const var2480 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2480 null-ClassObject)))
(declare-const var1069 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1069 null-ClassObject)))
(declare-const var3170 var1236) ; Statement: r6 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3170 null-var1236)))
(define-const var3871 var1254 (var282_trustedLookup/-1394055039 var2480)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.JDKUtils: java.lang.invoke.MethodHandles$Lookup trustedLookup(java.lang.Class)>(r0) 
(define-const var1757 var972 var651-lambdaMapping) ; Statement: $r3 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: java.util.Map lambdaMapping> 
(define-const var737 var3956 (var972_get/1088891777 var1757 (cast-from-ClassObject-to-var3956 var1069))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var237 var3052 (cast-from-var3956-to-var3052 var737)) ; Statement: r5 = (com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo) $r4 
 ; Statement: if r5 == null goto r20 = staticinvoke <java.lang.invoke.MethodType: java.lang.invoke.MethodType methodType(java.lang.Class)>(r2) 
(assert (= var237 null-var3052)) ; Cond: r5 == null 
(define-const var2069 var3482 (var3482_methodType/819421718 var1069)) ; Statement: r20 = staticinvoke <java.lang.invoke.MethodType: java.lang.invoke.MethodType methodType(java.lang.Class)>(r2) 
(define-const var2062 var3482 var2758-METHOD_TYPE_FUNCTION) ; Statement: r21 = <com.alibaba.fastjson2.util.TypeUtils: java.lang.invoke.MethodType METHOD_TYPE_FUNCTION> 
(define-const var1745 String "apply") ; Statement: r22 = "apply" 
(define-const var487 var3482 var2758-METHOD_TYPE_OBJECT_OBJECT) ; Statement: r23 = <com.alibaba.fastjson2.util.TypeUtils: java.lang.invoke.MethodType METHOD_TYPE_OBJECT_OBJECT> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var362 var3490) ; Statement: $r13 := @caughtexception 
(assert (not (= var362 null-var3490)))
(define-const var2425 var3585 var3585-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var2355 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2355)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2355!1 String)
(assert (= var2355!1 ""))
(assert true)
(define-const var1811 String (append/672562846 var2355!1 "create fieldLambdaGetter error, method : ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create fieldLambdaGetter error, method : ") 
(declare-const var2355!2 String)
(assert (= var2355!2 (str.++ var2355!1 "create fieldLambdaGetter error, method : ")))
(assert true)
(define-const var1040 String (append/-1031950772 var1811 (cast-from-var1236-to-var3956 var3170))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var1811!1 String)
(assert (str.prefixof var1811 var1811!1))
(assert true)
(define-const var1607 String (toString/-2075883882 var1040)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2425 var1607 var362)) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13) 

(declare-const var2425!1 var3585)
(declare-const var1607!1 String)
(declare-const var362!1 var3490)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var282_trustedLookup/-1394055039=([java.lang.Class], java.lang.invoke.MethodHandles$Lookup), var972_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3956=([java.lang.Class], java.lang.Object), cast-from-var3956-to-var3052=([java.lang.Object], com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo), var3482_methodType/819421718=([java.lang.Class], java.lang.invoke.MethodType), var3585-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1236-to-var3956=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var651=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3804=r19, var2480=r0, var1069=r2, var1236=java.lang.reflect.Method, var3170=r6, var1254=java.lang.invoke.MethodHandles$Lookup, var282=com.alibaba.fastjson2.util.JDKUtils, var3871=r1, var972=java.util.Map, var1757=$r3, var3956=java.lang.Object, var737=$r4, var3052=com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo, var237=r5, var3482=java.lang.invoke.MethodType, var2069=r20, var2758=com.alibaba.fastjson2.util.TypeUtils, var2062=r21, var1745=r22, var487=r23, var3490=java.lang.Throwable, var362=$r13, var3585=com.alibaba.fastjson2.JSONException, var2425=$r14, var2355=$r15, var1811=$r16, var1040=$r17, var1607=$r18}
; {com.alibaba.fastjson2.writer.ObjectWriterCreator=var651, r19=var3804, r0=var2480, r2=var1069, java.lang.reflect.Method=var1236, r6=var3170, java.lang.invoke.MethodHandles$Lookup=var1254, com.alibaba.fastjson2.util.JDKUtils=var282, r1=var3871, java.util.Map=var972, $r3=var1757, java.lang.Object=var3956, $r4=var737, com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo=var3052, r5=var237, java.lang.invoke.MethodType=var3482, r20=var2069, com.alibaba.fastjson2.util.TypeUtils=var2758, r21=var2062, r22=var1745, r23=var487, java.lang.Throwable=var3490, $r13=var362, com.alibaba.fastjson2.JSONException=var3585, $r14=var2425, $r15=var2355, $r16=var1811, $r17=var1040, $r18=var1607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreator;	r0 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.Class;	r6 := @parameter2: java.lang.reflect.Method;	r1 = staticinvoke <com.alibaba.fastjson2.util.JDKUtils: java.lang.invoke.MethodHandles$Lookup trustedLookup(java.lang.Class)>(r0);	$r3 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: java.util.Map lambdaMapping>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r5 = (com.alibaba.fastjson2.writer.ObjectWriterCreator$LambdaInfo) $r4;	if r5 == null goto r20 = staticinvoke <java.lang.invoke.MethodType: java.lang.invoke.MethodType methodType(java.lang.Class)>(r2);	r20 = staticinvoke <java.lang.invoke.MethodType: java.lang.invoke.MethodType methodType(java.lang.Class)>(r2);	r21 = <com.alibaba.fastjson2.util.TypeUtils: java.lang.invoke.MethodType METHOD_TYPE_FUNCTION>;	r22 = "apply";	r23 = <com.alibaba.fastjson2.util.TypeUtils: java.lang.invoke.MethodType METHOD_TYPE_OBJECT_OBJECT>;	$r13 := @caughtexception;	$r14 = new com.alibaba.fastjson2.JSONException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create fieldLambdaGetter error, method : ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13);	throw $r14
;block_num 3