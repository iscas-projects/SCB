(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort var2755 0)
(declare-sort var1698 0)
(declare-sort var2002 0)
(declare-sort var2429 0)
(declare-sort var2947 0)
(declare-sort var3157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2947-init () var2947)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2002) String)
(declare-fun cast-from-var2429-to-var2002 (var2429) var2002)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var2947 String var3157) void)
(declare-fun cast-from-var2429-to-var3157 (var2429) var3157)
(declare-const null-var948 var948)
(declare-const null-var2755 var2755)
(declare-const null-var1698 var1698)
(declare-const null-var2002 var2002)
(declare-const null-var2429 var2429)
(declare-const var3776 var948) ; Statement: r1 := @this: org.apache.ibatis.executor.keygen.SelectKeyGenerator 
(assert (not (= var3776 null-var948)))
(declare-const var2049 var2755) ; Statement: r9 := @parameter0: org.apache.ibatis.executor.Executor 
(assert (not (= var2049 null-var2755)))
(declare-const var1409 var1698) ; Statement: r6 := @parameter1: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var1409 null-var1698)))
(declare-const var3422 var2002) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var3422 null-var2002)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var3422 null-var2002))) ; Negate: Cond: r0 == null  
(declare-const var1133 var2429) ; Statement: $r27 := @caughtexception 
(assert (not (= var1133 null-var2429)))
(define-const var784 var2947 var2947-init) ; Statement: $r28 = new org.apache.ibatis.executor.ExecutorException 
(define-const var1360 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1360)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1360!1 String)
(assert (= var1360!1 ""))
(assert true)
(define-const var2917 String (append/672562846 var1360!1 "Error selecting key or setting result to parameter object. Cause: ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error selecting key or setting result to parameter object. Cause: ") 
(declare-const var1360!2 String)
(assert (= var1360!2 (str.++ var1360!1 "Error selecting key or setting result to parameter object. Cause: ")))
(assert true)
(define-const var873 String (append/-1031950772 var2917 (cast-from-var2429-to-var2002 var1133))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r27) 
(declare-const var2917!1 String)
(assert (str.prefixof var2917 var2917!1))
(assert true)
(define-const var2735 String (toString/-2075883882 var873)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var784 var2735 (cast-from-var2429-to-var3157 var1133))) ; Statement: specialinvoke $r28.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27) 

(declare-const var784!1 var2947)
(declare-const var2735!1 String)
(declare-const var1133!1 var2429)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var2947-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2429-to-var2002=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var2429-to-var3157=([java.lang.Exception], java.lang.Throwable)}
; {var948=org.apache.ibatis.executor.keygen.SelectKeyGenerator, var3776=r1, var2755=org.apache.ibatis.executor.Executor, var2049=r9, var1698=org.apache.ibatis.mapping.MappedStatement, var1409=r6, var2002=java.lang.Object, var3422=r0, var2429=java.lang.Exception, var1133=$r27, var2947=org.apache.ibatis.executor.ExecutorException, var784=$r28, var1360=$r29, var2917=$r30, var873=$r31, var2735=$r32, var3157=java.lang.Throwable}
; {org.apache.ibatis.executor.keygen.SelectKeyGenerator=var948, r1=var3776, org.apache.ibatis.executor.Executor=var2755, r9=var2049, org.apache.ibatis.mapping.MappedStatement=var1698, r6=var1409, java.lang.Object=var2002, r0=var3422, java.lang.Exception=var2429, $r27=var1133, org.apache.ibatis.executor.ExecutorException=var2947, $r28=var784, $r29=var1360, $r30=var2917, $r31=var873, $r32=var2735, java.lang.Throwable=var3157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.executor.keygen.SelectKeyGenerator;	r9 := @parameter0: org.apache.ibatis.executor.Executor;	r6 := @parameter1: org.apache.ibatis.mapping.MappedStatement;	r0 := @parameter2: java.lang.Object;	if r0 == null goto (branch);	$r27 := @caughtexception;	$r28 = new org.apache.ibatis.executor.ExecutorException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error selecting key or setting result to parameter object. Cause: ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r27);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27);	throw $r28
;block_num 2