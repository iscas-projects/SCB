(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3125 0)
(declare-sort var3958 0)
(declare-sort var1999 0)
(declare-sort var2897 0)
(declare-sort var135 0)
(declare-sort var2324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/-20364844 (var3125) var1999)
(declare-fun var135-init () var135)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var3125) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMessage/849299655 (var2324) String)
(declare-fun cast-from-var2897-to-var2324 (var2897) var2324)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var135 String) void)
(declare-const null-var3125 var3125)
(declare-const null-String String)
(declare-const null-var2897 var2897)
(declare-const var635 var3125) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var635 null-var3125)))
(declare-const var3594 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3594 null-String)))
(define-const var876 var1999 (classPool/-20364844 var635)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3442 var2897) ; Statement: $r11 := @caughtexception 
(assert (not (= var3442 null-var2897)))
(define-const var1917 var135 var135-init) ; Statement: $r12 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2061 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2061)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2061!1 String)
(assert (= var2061!1 ""))
(assert true)
(define-const var3129 String (append/672562846 var2061!1 "Could not find class in descriptor [pos = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ") 
(declare-const var2061!2 String)
(assert (= var2061!2 (str.++ var2061!1 "Could not find class in descriptor [pos = ")))
(define-const var945 Int (lastPos/-20364844 var635)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var229 String (append/-1001720160 var3129 var945)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3129!1 String)
(assert (str.prefixof var3129 var3129!1))
(assert true)
(define-const var1597 String (append/672562846 var229 "]: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var229!1 String)
(assert (= var229!1 (str.++ var229 "]: ")))
(assert true)
(define-const var1091 String (getMessage/849299655 (cast-from-var2897-to-var2324 var3442))) ; Statement: $r16 = virtualinvoke $r11.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var2093 String (append/672562846 var1597 var1091)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1597!1 String)
(assert (= var1597!1 (str.++ var1597 var1091)))
(assert true)
(define-const var1830 String (toString/-2075883882 var2093)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var1917 var1830)) ; Statement: specialinvoke $r12.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r19) 

(declare-const var1917!1 var135)
(declare-const var1830!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], org.apache.ibatis.javassist.ClassPool), var135-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2897-to-var2324=([org.apache.ibatis.javassist.NotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var3125=org.apache.ibatis.javassist.bytecode.analysis.Executor, var635=r1, var3594=r0, var3958=null_type, var1999=org.apache.ibatis.javassist.ClassPool, var876=$r2, var2897=org.apache.ibatis.javassist.NotFoundException, var3442=$r11, var135=org.apache.ibatis.javassist.bytecode.BadBytecode, var1917=$r12, var2061=$r13, var3129=$r14, var945=$i1, var229=$r15, var1597=$r17, var2324=java.lang.Throwable, var1091=$r16, var2093=$r18, var1830=$r19}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var3125, r1=var635, r0=var3594, null_type=var3958, org.apache.ibatis.javassist.ClassPool=var1999, $r2=var876, org.apache.ibatis.javassist.NotFoundException=var2897, $r11=var3442, org.apache.ibatis.javassist.bytecode.BadBytecode=var135, $r12=var1917, $r13=var2061, $r14=var3129, $i1=var945, $r15=var229, $r17=var1597, java.lang.Throwable=var2324, $r16=var1091, $r18=var2093, $r19=var1830}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool>;	$r11 := @caughtexception;	$r12 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ");	$i1 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r16 = virtualinvoke $r11.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r19);	throw $r12
;block_num 2