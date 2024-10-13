(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var1426 0)
(declare-sort var2282 0)
(declare-sort var210 0)
(declare-sort var435 0)
(declare-sort var2321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/-20364844 (var3811) var2282)
(declare-fun var435-init () var435)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var3811) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMessage/849299655 (var2321) String)
(declare-fun cast-from-var210-to-var2321 (var210) var2321)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var435 String) void)
(declare-const null-var3811 var3811)
(declare-const null-String String)
(declare-const null-var210 var210)
(declare-const var1861 var3811) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var1861 null-var3811)))
(declare-const var2543 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2543 null-String)))
(define-const var31 var2282 (classPool/-20364844 var1861)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3298 var210) ; Statement: $r12 := @caughtexception 
(assert (not (= var3298 null-var210)))
(define-const var2972 var435 var435-init) ; Statement: $r13 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var339 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var339)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var339!1 String)
(assert (= var339!1 ""))
(assert true)
(define-const var3589 String (append/672562846 var339!1 "Could not find class in descriptor [pos = ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ") 
(declare-const var339!2 String)
(assert (= var339!2 (str.++ var339!1 "Could not find class in descriptor [pos = ")))
(define-const var2394 Int (lastPos/-20364844 var1861)) ; Statement: $i3 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var556 String (append/-1001720160 var3589 var2394)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3589!1 String)
(assert (str.prefixof var3589 var3589!1))
(assert true)
(define-const var2831 String (append/672562846 var556 "]: ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var556!1 String)
(assert (= var556!1 (str.++ var556 "]: ")))
(assert true)
(define-const var3919 String (getMessage/849299655 (cast-from-var210-to-var2321 var3298))) ; Statement: $r17 = virtualinvoke $r12.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var1188 String (append/672562846 var2831 var3919)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2831!1 String)
(assert (= var2831!1 (str.++ var2831 var3919)))
(assert true)
(define-const var2910 String (toString/-2075883882 var1188)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var2972 var2910)) ; Statement: specialinvoke $r13.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r20) 

(declare-const var2972!1 var435)
(declare-const var2910!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], org.apache.ibatis.javassist.ClassPool), var435-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var210-to-var2321=([org.apache.ibatis.javassist.NotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var3811=org.apache.ibatis.javassist.bytecode.analysis.Executor, var1861=r1, var2543=r0, var1426=null_type, var2282=org.apache.ibatis.javassist.ClassPool, var31=$r2, var210=org.apache.ibatis.javassist.NotFoundException, var3298=$r12, var435=org.apache.ibatis.javassist.bytecode.BadBytecode, var2972=$r13, var339=$r14, var3589=$r15, var2394=$i3, var556=$r16, var2831=$r18, var2321=java.lang.Throwable, var3919=$r17, var1188=$r19, var2910=$r20}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var3811, r1=var1861, r0=var2543, null_type=var1426, org.apache.ibatis.javassist.ClassPool=var2282, $r2=var31, org.apache.ibatis.javassist.NotFoundException=var210, $r12=var3298, org.apache.ibatis.javassist.bytecode.BadBytecode=var435, $r13=var2972, $r14=var339, $r15=var3589, $i3=var2394, $r16=var556, $r18=var2831, java.lang.Throwable=var2321, $r17=var3919, $r19=var1188, $r20=var2910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.ClassPool classPool>;	$r12 := @caughtexception;	$r13 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ");	$i3 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r17 = virtualinvoke $r12.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r20);	throw $r13
;block_num 2