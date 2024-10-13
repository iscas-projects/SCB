(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2942 0)
(declare-sort var1898 0)
(declare-sort var3746 0)
(declare-sort var1315 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun accessors/1168822230 (var2942) var1315)
(declare-fun var1315_get/1088891777 (var1315 var3820) var3820)
(declare-fun cast-from-String-to-var3820 (String) var3820)
(declare-fun cast-from-var3820-to-String (var3820) String)
(declare-const null-var2942 var2942)
(declare-const null-String String)
(declare-const null-var3746 var3746)
(declare-const var1344 var2942) ; Statement: r7 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker 
(assert (not (= var1344 null-var2942)))
(declare-const var2991 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2991 null-String)))
(declare-const var1890 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1890 null-String)))
(declare-const var676 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var676 null-String)))
(declare-const var951 var3746) ; Statement: r17 := @parameter3: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var951 null-var3746)))
(define-const var9 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var9)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var9!1 String)
(assert (= var9!1 ""))
(assert true)
(define-const var1171 String (append/672562846 var9!1 var2991)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var9!2 String)
(assert (= var9!2 (str.++ var9!1 var2991)))
(assert true)
(define-const var2257 String (append/672562846 var1171 ":")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1171!1 String)
(assert (= var1171!1 (str.++ var1171 ":")))
(assert true)
(define-const var57 String (append/672562846 var2257 var1890)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2257!1 String)
(assert (= var2257!1 (str.++ var2257 var1890)))
(assert true)
(define-const var44 String (toString/-2075883882 var57)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1505 var1315 (accessors/1168822230 var1344)) ; Statement: $r8 = r7.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors> 
(define-const var2096 var3820 (var1315_get/1088891777 var1505 (cast-from-String-to-var3820 var44))) ; Statement: $r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6) 
(define-const var250 String (cast-from-var3820-to-String var2096)) ; Statement: r32 = (java.lang.String) $r9 
 ; Statement: if r32 == null goto $r10 = r7.<org.apache.ibatis.javassist.compiler.AccessorMaker: org.apache.ibatis.javassist.CtClass clazz> 
(assert (not (= var250 null-String))) ; Negate: Cond: r32 == null  
 ; Statement: return r32 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), accessors/1168822230=([org.apache.ibatis.javassist.compiler.AccessorMaker], java.util.Map), var1315_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3820=([java.lang.String], java.lang.Object), cast-from-var3820-to-String=([java.lang.Object], java.lang.String)}
; {var2942=org.apache.ibatis.javassist.compiler.AccessorMaker, var1344=r7, var2991=r1, var1898=null_type, var1890=r3, var676=r15, var3746=org.apache.ibatis.javassist.bytecode.MethodInfo, var951=r17, var9=$r0, var1171=$r2, var2257=$r4, var57=$r5, var44=r6, var1315=java.util.Map, var1505=$r8, var3820=java.lang.Object, var2096=$r9, var250=r32}
; {org.apache.ibatis.javassist.compiler.AccessorMaker=var2942, r7=var1344, r1=var2991, null_type=var1898, r3=var1890, r15=var676, org.apache.ibatis.javassist.bytecode.MethodInfo=var3746, r17=var951, $r0=var9, $r2=var1171, $r4=var2257, $r5=var57, r6=var44, java.util.Map=var1315, $r8=var1505, java.lang.Object=var3820, $r9=var2096, r32=var250}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.javassist.compiler.AccessorMaker;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r17 := @parameter3: org.apache.ibatis.javassist.bytecode.MethodInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<org.apache.ibatis.javassist.compiler.AccessorMaker: java.util.Map accessors>;	$r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6);	r32 = (java.lang.String) $r9;	if r32 == null goto $r10 = r7.<org.apache.ibatis.javassist.compiler.AccessorMaker: org.apache.ibatis.javassist.CtClass clazz>;	return r32
;block_num 2