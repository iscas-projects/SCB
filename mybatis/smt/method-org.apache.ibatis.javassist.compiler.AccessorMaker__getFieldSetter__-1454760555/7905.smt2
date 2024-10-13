(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var3574 0)
(declare-sort var110 0)
(declare-sort var3328 0)
(declare-sort var1940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/20305502 (var3574) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun accessors/1168822230 (var224) var110)
(declare-fun var110_get/1088891777 (var110 var3328) var3328)
(declare-fun cast-from-String-to-var3328 (String) var3328)
(declare-fun cast-from-var3328-to-var1940 (var3328) var1940)
(declare-const null-var224 var224)
(declare-const null-var3574 var3574)
(declare-const null-Bool Bool)
(declare-const null-var3328 var3328)
(declare-const var842 var224) ; Statement: r6 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker 
(assert (not (= var842 null-var224)))
(declare-const var3136 var3574) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var3136 null-var3574)))
(declare-const var3073 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3073 null-Bool)))
(assert true)
(define-const var243 String (getName/20305502 var3136)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getName()>() 
(define-const var3890 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3890)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3890!1 String)
(assert (= var3890!1 ""))
(assert true)
(define-const var708 String (append/672562846 var3890!1 var243)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3890!2 String)
(assert (= var3890!2 (str.++ var3890!1 var243)))
(assert true)
(define-const var1671 String (append/672562846 var708 ":setter")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":setter") 
(declare-const var708!1 String)
(assert (= var708!1 (str.++ var708 ":setter")))
(assert true)
(define-const var196 String (toString/-2075883882 var1671)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3924 var110 (accessors/1168822230 var842)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors> 
(define-const var2613 var3328 (var110_get/1088891777 var3924 (cast-from-String-to-var3328 var196))) ; Statement: r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5) 
 ; Statement: if r8 == null goto $r9 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: org.apache.ibatis.javassist.CtClass clazz> 
(assert (not (= var2613 null-var3328))) ; Negate: Cond: r8 == null  
(define-const var3544 var1940 (cast-from-var3328-to-var1940 var2613)) ; Statement: $r35 = (org.apache.ibatis.javassist.bytecode.MethodInfo) r8 
 ; Statement: return $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/20305502=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), accessors/1168822230=([org.apache.ibatis.javassist.compiler.AccessorMaker], java.util.Map), var110_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3328=([java.lang.String], java.lang.Object), cast-from-var3328-to-var1940=([java.lang.Object], org.apache.ibatis.javassist.bytecode.MethodInfo)}
; {var224=org.apache.ibatis.javassist.compiler.AccessorMaker, var842=r6, var3574=org.apache.ibatis.javassist.bytecode.FieldInfo, var3136=r0, var3073=z0, var243=r1, var3890=$r2, var708=$r3, var1671=$r4, var196=r5, var110=java.util.Map, var3924=$r7, var3328=java.lang.Object, var2613=r8, var1940=org.apache.ibatis.javassist.bytecode.MethodInfo, var3544=$r35}
; {org.apache.ibatis.javassist.compiler.AccessorMaker=var224, r6=var842, org.apache.ibatis.javassist.bytecode.FieldInfo=var3574, r0=var3136, z0=var3073, r1=var243, $r2=var3890, $r3=var708, $r4=var1671, r5=var196, java.util.Map=var110, $r7=var3924, java.lang.Object=var3328, r8=var2613, org.apache.ibatis.javassist.bytecode.MethodInfo=var1940, $r35=var3544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo;	z0 := @parameter1: boolean;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getName()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":setter");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors>;	r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r5);	if r8 == null goto $r9 = r6.<org.apache.ibatis.javassist.compiler.AccessorMaker: org.apache.ibatis.javassist.CtClass clazz>;	$r35 = (org.apache.ibatis.javassist.bytecode.MethodInfo) r8;	return $r35
;block_num 2