(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3935 0)
(declare-sort var1909 0)
(declare-sort var3661 0)
(declare-sort var1819 0)
(declare-sort var58 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/-20364844 (var3935) var3661)
(declare-fun var58-init () var58)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var3935) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var58 String) void)
(declare-const null-var3935 var3935)
(declare-const null-String String)
(declare-const null-var1819 var1819)
(declare-const var511 var3935) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var511 null-var3935)))
(declare-const var3486 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3486 null-String)))
(define-const var431 var3661 (classPool/-20364844 var511)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1323 var1819) ; Statement: $r5 := @caughtexception 
(assert (not (= var1323 null-var1819)))
(define-const var3878 var58 var58-init) ; Statement: $r6 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var607 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var607)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var607!1 String)
(assert (= var607!1 ""))
(assert true)
(define-const var1161 String (append/672562846 var607!1 "Could not find class [pos = ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class [pos = ") 
(declare-const var607!2 String)
(assert (= var607!2 (str.++ var607!1 "Could not find class [pos = ")))
(define-const var3117 Int (lastPos/-20364844 var511)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var2968 String (append/-1001720160 var1161 var3117)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1161!1 String)
(assert (str.prefixof var1161 var1161!1))
(assert true)
(define-const var901 String (append/672562846 var2968 "]: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2968!1 String)
(assert (= var2968!1 (str.++ var2968 "]: ")))
(assert true)
(define-const var1473 String (append/672562846 var901 var3486)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var901!1 String)
(assert (= var901!1 (str.++ var901 var3486)))
(assert true)
(define-const var241 String (toString/-2075883882 var1473)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var3878 var241)) ; Statement: specialinvoke $r6.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r12) 

(declare-const var3878!1 var58)
(declare-const var241!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], org.apache.ibatis.javassist.ClassPool), var58-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var3935=org.apache.ibatis.javassist.bytecode.analysis.Executor, var511=r0, var3486=r1, var1909=null_type, var3661=org.apache.ibatis.javassist.ClassPool, var431=$r2, var1819=org.apache.ibatis.javassist.NotFoundException, var1323=$r5, var58=org.apache.ibatis.javassist.bytecode.BadBytecode, var3878=$r6, var607=$r7, var1161=$r8, var3117=$i0, var2968=$r9, var901=$r10, var1473=$r11, var241=$r12}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var3935, r0=var511, r1=var3486, null_type=var1909, org.apache.ibatis.javassist.ClassPool=var3661, $r2=var431, org.apache.ibatis.javassist.NotFoundException=var1819, $r5=var1323, org.apache.ibatis.javassist.bytecode.BadBytecode=var58, $r6=var3878, $r7=var607, $r8=var1161, $i0=var3117, $r9=var2968, $r10=var901, $r11=var1473, $r12=var241}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool>;	$r5 := @caughtexception;	$r6 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class [pos = ");	$i0 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r12);	throw $r6
;block_num 2