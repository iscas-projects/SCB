(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var257 0)
(declare-sort var7 0)
(declare-sort var514 0)
(declare-sort var715 0)
(declare-sort var3091 0)
(declare-sort var658 0)
(declare-sort var3053 0)
(declare-sort var357 0)
(declare-sort var218 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun take/-1175566560 (var715) Int)
(declare-fun move/-540834813 (var514 Int) void)
(declare-fun next/-434048509 (var514) Int)
(declare-fun frames/1207145895 (var257) (Array Int var658))
(declare-fun copy/-199374722 (var658) var658)
(declare-fun subroutines/1207145895 (var257) (Array Int var3053))
(declare-fun var218-init () var218)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var2616) String)
(declare-fun cast-from-var357-to-var2616 (var357) var2616)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1465387217 (var218 String var2616) void)
(declare-const null-var257 var257)
(declare-const null-var7 var7)
(declare-const null-var514 var514)
(declare-const null-var715 var715)
(declare-const null-var3091 var3091)
(declare-const null-var357 var357)
(declare-const var3244 var257) ; Statement: r2 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer 
(assert (not (= var3244 null-var257)))
(declare-const var2344 var7) ; Statement: r9 := @parameter0: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var2344 null-var7)))
(declare-const var2697 var514) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2697 null-var514)))
(declare-const var2120 var715) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.IntQueue 
(assert (not (= var2120 null-var715)))
(declare-const var3647 var3091) ; Statement: r8 := @parameter3: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var3647 null-var3091)))
(assert true)
(define-const var2622 Int (take/-1175566560 var2120)) ; Statement: i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.IntQueue: int take()>() 
(assert true)
;(assert (move/-540834813 var2697 var2622)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: void move(int)>(i0) 

(declare-const var2697!1 var514)
(declare-const var2622!1 Int)
(assert true)
;(assert (next/-434048509 var2697!1)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int next()>() 

(declare-const var2697!2 var514)
(define-const var1535 (Array Int var658) (frames/1207145895 var3244)) ; Statement: $r3 = r2.<org.apache.ibatis.javassist.bytecode.analysis.Analyzer: org.apache.ibatis.javassist.bytecode.analysis.Frame[] frames> 
(define-const var632 var658 (select var1535 var2622!1)) ; Statement: $r4 = $r3[i0] 
(assert true)
(define-const var889 var658 (copy/-199374722 var632)) ; Statement: r5 = virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Frame copy()>() 
(define-const var2593 (Array Int var3053) (subroutines/1207145895 var3244)) ; Statement: $r6 = r2.<org.apache.ibatis.javassist.bytecode.analysis.Analyzer: org.apache.ibatis.javassist.bytecode.analysis.Subroutine[] subroutines> 
(define-const var2093 var3053 (select var2593 var2622!1)) ; Statement: r7 = $r6[i0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2918 var357) ; Statement: $r14 := @caughtexception 
(assert (not (= var2918 null-var357)))
(define-const var3846 var218 var218-init) ; Statement: $r15 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2130 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2130)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2130!1 String)
(assert (= var2130!1 ""))
(assert true)
(define-const var3557 String (getMessage/849299655 (cast-from-var357-to-var2616 var2918))) ; Statement: $r17 = virtualinvoke $r14.<java.lang.RuntimeException: java.lang.String getMessage()>() 
(assert true)
(define-const var63 String (append/672562846 var2130!1 var3557)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2130!2 String)
(assert (= var2130!2 (str.++ var2130!1 var3557)))
(assert true)
(define-const var2804 String (append/672562846 var63 "[pos = ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[pos = ") 
(declare-const var63!1 String)
(assert (= var63!1 (str.++ var63 "[pos = ")))
(assert true)
(define-const var2042 String (append/-1001720160 var2804 var2622!1)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2804!1 String)
(assert (str.prefixof var2804 var2804!1))
(assert true)
(define-const var906 String (append/672562846 var2042 "]")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2042!1 String)
(assert (= var2042!1 (str.++ var2042 "]")))
(assert true)
(define-const var2967 String (toString/-2075883882 var906)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1465387217 var3846 var2967 (cast-from-var357-to-var2616 var2918))) ; Statement: specialinvoke $r15.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r14) 

(declare-const var3846!1 var218)
(declare-const var2967!1 String)
(declare-const var2918!1 var357)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {take/-1175566560=([org.apache.ibatis.javassist.bytecode.analysis.IntQueue], int), move/-540834813=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], void), next/-434048509=([org.apache.ibatis.javassist.bytecode.CodeIterator], int), frames/1207145895=([org.apache.ibatis.javassist.bytecode.analysis.Analyzer], org.apache.ibatis.javassist.bytecode.analysis.Frame[]), copy/-199374722=([org.apache.ibatis.javassist.bytecode.analysis.Frame], org.apache.ibatis.javassist.bytecode.analysis.Frame), subroutines/1207145895=([org.apache.ibatis.javassist.bytecode.analysis.Analyzer], org.apache.ibatis.javassist.bytecode.analysis.Subroutine[]), var218-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var357-to-var2616=([java.lang.RuntimeException], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1465387217=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String, java.lang.Throwable], void)}
; {var257=org.apache.ibatis.javassist.bytecode.analysis.Analyzer, var3244=r2, var7=org.apache.ibatis.javassist.bytecode.MethodInfo, var2344=r9, var514=org.apache.ibatis.javassist.bytecode.CodeIterator, var2697=r1, var715=org.apache.ibatis.javassist.bytecode.analysis.IntQueue, var2120=r0, var3091=org.apache.ibatis.javassist.bytecode.analysis.Executor, var3647=r8, var2622=i0, var658=org.apache.ibatis.javassist.bytecode.analysis.Frame, var1535=$r3, var632=$r4, var889=r5, var3053=org.apache.ibatis.javassist.bytecode.analysis.Subroutine, var2593=$r6, var2093=r7, var357=java.lang.RuntimeException, var2918=$r14, var218=org.apache.ibatis.javassist.bytecode.BadBytecode, var3846=$r15, var2130=$r16, var2616=java.lang.Throwable, var3557=$r17, var63=$r18, var2804=$r19, var2042=$r20, var906=$r21, var2967=$r22}
; {org.apache.ibatis.javassist.bytecode.analysis.Analyzer=var257, r2=var3244, org.apache.ibatis.javassist.bytecode.MethodInfo=var7, r9=var2344, org.apache.ibatis.javassist.bytecode.CodeIterator=var514, r1=var2697, org.apache.ibatis.javassist.bytecode.analysis.IntQueue=var715, r0=var2120, org.apache.ibatis.javassist.bytecode.analysis.Executor=var3091, r8=var3647, i0=var2622, org.apache.ibatis.javassist.bytecode.analysis.Frame=var658, $r3=var1535, $r4=var632, r5=var889, org.apache.ibatis.javassist.bytecode.analysis.Subroutine=var3053, $r6=var2593, r7=var2093, java.lang.RuntimeException=var357, $r14=var2918, org.apache.ibatis.javassist.bytecode.BadBytecode=var218, $r15=var3846, $r16=var2130, java.lang.Throwable=var2616, $r17=var3557, $r18=var63, $r19=var2804, $r20=var2042, $r21=var906, $r22=var2967}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer;	r9 := @parameter0: org.apache.ibatis.javassist.bytecode.MethodInfo;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.IntQueue;	r8 := @parameter3: org.apache.ibatis.javassist.bytecode.analysis.Executor;	i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.IntQueue: int take()>();	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: void move(int)>(i0);	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int next()>();	$r3 = r2.<org.apache.ibatis.javassist.bytecode.analysis.Analyzer: org.apache.ibatis.javassist.bytecode.analysis.Frame[] frames>;	$r4 = $r3[i0];	r5 = virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Frame copy()>();	$r6 = r2.<org.apache.ibatis.javassist.bytecode.analysis.Analyzer: org.apache.ibatis.javassist.bytecode.analysis.Subroutine[] subroutines>;	r7 = $r6[i0];	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r14.<java.lang.RuntimeException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[pos = ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r14);	throw $r15
;block_num 2