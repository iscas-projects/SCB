(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3629 0)
(declare-sort var1584 0)
(declare-sort var1129 0)
(declare-sort var1762 0)
(declare-sort var1113 0)
(declare-sort var1331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/-20364844 (var3629) var1129)
(declare-fun var1113-init () var1113)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var3629) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMessage/849299655 (var1331) String)
(declare-fun cast-from-var1762-to-var1331 (var1762) var1331)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var1113 String) void)
(declare-const null-var3629 var3629)
(declare-const null-String String)
(declare-const null-var1762 var1762)
(declare-const var510 var3629) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var510 null-var3629)))
(declare-const var3846 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3846 null-String)))
(define-const var1838 var1129 (classPool/-20364844 var510)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3355 var1762) ; Statement: $r11 := @caughtexception 
(assert (not (= var3355 null-var1762)))
(define-const var2614 var1113 var1113-init) ; Statement: $r12 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2393 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2393)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2393!1 String)
(assert (= var2393!1 ""))
(assert true)
(define-const var100 String (append/672562846 var2393!1 "Could not find class in descriptor [pos = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ") 
(declare-const var2393!2 String)
(assert (= var2393!2 (str.++ var2393!1 "Could not find class in descriptor [pos = ")))
(define-const var2222 Int (lastPos/-20364844 var510)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var3229 String (append/-1001720160 var100 var2222)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var100!1 String)
(assert (str.prefixof var100 var100!1))
(assert true)
(define-const var2341 String (append/672562846 var3229 "]: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3229!1 String)
(assert (= var3229!1 (str.++ var3229 "]: ")))
(assert true)
(define-const var3451 String (getMessage/849299655 (cast-from-var1762-to-var1331 var3355))) ; Statement: $r16 = virtualinvoke $r11.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var2375 String (append/672562846 var2341 var3451)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2341!1 String)
(assert (= var2341!1 (str.++ var2341 var3451)))
(assert true)
(define-const var1885 String (toString/-2075883882 var2375)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var2614 var1885)) ; Statement: specialinvoke $r12.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r19) 

(declare-const var2614!1 var1113)
(declare-const var1885!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], org.apache.ibatis.javassist.ClassPool), var1113-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1762-to-var1331=([org.apache.ibatis.javassist.NotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var3629=org.apache.ibatis.javassist.bytecode.analysis.Executor, var510=r1, var3846=r0, var1584=null_type, var1129=org.apache.ibatis.javassist.ClassPool, var1838=$r2, var1762=org.apache.ibatis.javassist.NotFoundException, var3355=$r11, var1113=org.apache.ibatis.javassist.bytecode.BadBytecode, var2614=$r12, var2393=$r13, var100=$r14, var2222=$i1, var3229=$r15, var2341=$r17, var1331=java.lang.Throwable, var3451=$r16, var2375=$r18, var1885=$r19}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var3629, r1=var510, r0=var3846, null_type=var1584, org.apache.ibatis.javassist.ClassPool=var1129, $r2=var1838, org.apache.ibatis.javassist.NotFoundException=var1762, $r11=var3355, org.apache.ibatis.javassist.bytecode.BadBytecode=var1113, $r12=var2614, $r13=var2393, $r14=var100, $i1=var2222, $r15=var3229, $r17=var2341, java.lang.Throwable=var1331, $r16=var3451, $r18=var2375, $r19=var1885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool>;	$r11 := @caughtexception;	$r12 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ");	$i1 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r16 = virtualinvoke $r11.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r19);	throw $r12
;block_num 2