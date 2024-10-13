(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort var1388 0)
(declare-sort var3397 0)
(declare-sort var2964 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/20305502 (var1388) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun accessors/1168822230 (var3918) var3397)
(declare-fun var3397_get/1088891777 (var3397 var2964) var2964)
(declare-fun cast-from-String-to-var2964 (String) var2964)
(declare-fun cast-from-var2964-to-var2572 (var2964) var2572)
(declare-const null-var3918 var3918)
(declare-const null-var1388 var1388)
(declare-const null-Bool Bool)
(declare-const null-var2964 var2964)
(declare-const var1028 var3918) ; Statement: r6 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker 
(assert (not (= var1028 null-var3918)))
(declare-const var3537 var1388) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var3537 null-var1388)))
(declare-const var1294 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1294 null-Bool)))
(assert true)
(define-const var2627 String (getName/20305502 var3537)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getName()>() 
(define-const var1490 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(assert true)
(define-const var1241 String (append/672562846 var1490!1 var2627)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1490!2 String)
(assert (= var1490!2 (str.++ var1490!1 var2627)))
(assert true)
(define-const var1107 String (append/672562846 var1241 ":getter")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":getter") 
(declare-const var1241!1 String)
(assert (= var1241!1 (str.++ var1241 ":getter")))
(assert true)
(define-const var306 String (toString/-2075883882 var1107)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var87 var3397 (accessors/1168822230 var1028)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors> 
(define-const var615 var2964 (var3397_get/1088891777 var87 (cast-from-String-to-var2964 var306))) ; Statement: r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5) 
 ; Statement: if r8 == null goto $r9 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: org.apache.ibatis.javassist.CtClass clazz> 
(assert (not (= var615 null-var2964))) ; Negate: Cond: r8 == null  
(define-const var2260 var2572 (cast-from-var2964-to-var2572 var615)) ; Statement: $r33 = (org.apache.ibatis.javassist.bytecode.MethodInfo) r8 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/20305502=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), accessors/1168822230=([org.apache.ibatis.javassist.compiler.AccessorMaker], java.util.Map), var3397_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2964=([java.lang.String], java.lang.Object), cast-from-var2964-to-var2572=([java.lang.Object], org.apache.ibatis.javassist.bytecode.MethodInfo)}
; {var3918=org.apache.ibatis.javassist.compiler.AccessorMaker, var1028=r6, var1388=org.apache.ibatis.javassist.bytecode.FieldInfo, var3537=r0, var1294=z0, var2627=r1, var1490=$r2, var1241=$r3, var1107=$r4, var306=r5, var3397=java.util.Map, var87=$r7, var2964=java.lang.Object, var615=r8, var2572=org.apache.ibatis.javassist.bytecode.MethodInfo, var2260=$r33}
; {org.apache.ibatis.javassist.compiler.AccessorMaker=var3918, r6=var1028, org.apache.ibatis.javassist.bytecode.FieldInfo=var1388, r0=var3537, z0=var1294, r1=var2627, $r2=var1490, $r3=var1241, $r4=var1107, r5=var306, java.util.Map=var3397, $r7=var87, java.lang.Object=var2964, r8=var615, org.apache.ibatis.javassist.bytecode.MethodInfo=var2572, $r33=var2260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo;	z0 := @parameter1: boolean;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getName()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":getter");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors>;	r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5);	if r8 == null goto $r9 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: org.apache.ibatis.javassist.CtClass clazz>;	$r33 = (org.apache.ibatis.javassist.bytecode.MethodInfo) r8;	return $r33
;block_num 2