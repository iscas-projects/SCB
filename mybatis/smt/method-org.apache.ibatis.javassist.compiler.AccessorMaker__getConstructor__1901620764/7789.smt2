(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2937 0)
(declare-sort var2368 0)
(declare-sort var2845 0)
(declare-sort var2303 0)
(declare-sort var2093 0)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun accessors/1168822230 (var2937) var2093)
(declare-fun var2093_get/1088891777 (var2093 var3132) var3132)
(declare-fun cast-from-String-to-var3132 (String) var3132)
(declare-fun cast-from-var3132-to-String (var3132) String)
(declare-const null-var2937 var2937)
(declare-const null-var2368 var2368)
(declare-const null-String String)
(declare-const null-var2303 var2303)
(declare-const var1525 var2937) ; Statement: r5 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker 
(assert (not (= var1525 null-var2937)))
(declare-const var651 var2368) ; Statement: r27 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var651 null-var2368)))
(declare-const var3650 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3650 null-String)))
(declare-const var2871 var2303) ; Statement: r14 := @parameter2: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var2871 null-var2303)))
(define-const var3682 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3682)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3682!1 String)
(assert (= var3682!1 ""))
(assert true)
(define-const var1604 String (append/672562846 var3682!1 "<init>:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<init>:") 
(declare-const var3682!2 String)
(assert (= var3682!2 (str.++ var3682!1 "<init>:")))
(assert true)
(define-const var959 String (append/672562846 var1604 var3650)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1604!1 String)
(assert (= var1604!1 (str.++ var1604 var3650)))
(assert true)
(define-const var3987 String (toString/-2075883882 var959)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3466 var2093 (accessors/1168822230 var1525)) ; Statement: $r6 = r5.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors> 
(define-const var429 var3132 (var2093_get/1088891777 var3466 (cast-from-String-to-var3132 var3987))) ; Statement: $r7 = interfaceinvoke $r6.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4) 
(define-const var2202 String (cast-from-var3132-to-String var429)) ; Statement: r28 = (java.lang.String) $r7 
 ; Statement: if r28 == null goto r29 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String appendParameter(java.lang.String,java.lang.String)>("org.apache.ibatis.javassist.runtime.Inner", r1) 
(assert (not (= var2202 null-String))) ; Negate: Cond: r28 == null  
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), accessors/1168822230=([org.apache.ibatis.javassist.compiler.AccessorMaker], java.util.Map), var2093_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3132=([java.lang.String], java.lang.Object), cast-from-var3132-to-String=([java.lang.Object], java.lang.String)}
; {var2937=org.apache.ibatis.javassist.compiler.AccessorMaker, var1525=r5, var2368=org.apache.ibatis.javassist.CtClass, var651=r27, var3650=r1, var2845=null_type, var2303=org.apache.ibatis.javassist.bytecode.MethodInfo, var2871=r14, var3682=$r0, var1604=$r2, var959=$r3, var3987=r4, var2093=java.util.Map, var3466=$r6, var3132=java.lang.Object, var429=$r7, var2202=r28}
; {org.apache.ibatis.javassist.compiler.AccessorMaker=var2937, r5=var1525, org.apache.ibatis.javassist.CtClass=var2368, r27=var651, r1=var3650, null_type=var2845, org.apache.ibatis.javassist.bytecode.MethodInfo=var2303, r14=var2871, $r0=var3682, $r2=var1604, $r3=var959, r4=var3987, java.util.Map=var2093, $r6=var3466, java.lang.Object=var3132, $r7=var429, r28=var2202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker;	r27 := @parameter0: org.apache.ibatis.javassist.CtClass;	r1 := @parameter1: java.lang.String;	r14 := @parameter2: org.apache.ibatis.javassist.bytecode.MethodInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<init>:");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors>;	$r7 = interfaceinvoke $r6.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4);	r28 = (java.lang.String) $r7;	if r28 == null goto r29 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String appendParameter(java.lang.String,java.lang.String)>("org.apache.ibatis.javassist.runtime.Inner", r1);	return r28
;block_num 2