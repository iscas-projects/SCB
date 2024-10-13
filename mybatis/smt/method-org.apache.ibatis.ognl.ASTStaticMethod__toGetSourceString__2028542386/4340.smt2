(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var552 0)
(declare-sort var1293 0)
(declare-sort var1118 0)
(declare-sort var2389 0)
(declare-sort var636 0)
(declare-sort var3513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun className/1690391675 (var552) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun methodName/1690391675 (var552) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3513_castToRuntime/315756906 (var2389) var636)
(declare-const null-var552 var552)
(declare-const null-var1293 var1293)
(declare-const null-var1118 var1118)
(declare-const null-var2389 var2389)
(declare-const var3847 var552) ; Statement: r2 := @this: org.apache.ibatis.ognl.ASTStaticMethod 
(assert (not (= var3847 null-var552)))
(declare-const var2057 var1293) ; Statement: r10 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2057 null-var1293)))
(declare-const var1500 var1118) ; Statement: r18 := @parameter1: java.lang.Object 
(assert (not (= var1500 null-var1118)))
(define-const var1864 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var93 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var93)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var93!1 String)
(assert (= var93!1 ""))
(define-const var1320 String (className/1690391675 var3847)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String className> 
(assert true)
(define-const var867 String (append/672562846 var93!1 var1320)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var93!2 String)
(assert (= var93!2 (str.++ var93!1 var1320)))
(assert true)
(define-const var475 String (append/672562846 var867 "#")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var867!1 String)
(assert (= var867!1 (str.++ var867 "#")))
(define-const var3916 String (methodName/1690391675 var3847)) ; Statement: $r5 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String methodName> 
(assert true)
(define-const var1077 String (append/672562846 var475 var3916)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var475!1 String)
(assert (= var475!1 (str.++ var475 var3916)))
(assert true)
(define-const var3619 String (append/672562846 var1077 "(")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1077!1 String)
(assert (= var1077!1 (str.++ var1077 "(")))
(assert true)
(define-const var2202 String (toString/-2075883882 var3619)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1864 var2202)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r9) 
(declare-const var1864!1 String)
(assert (= var1864!1 var2202))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2126 var2389) ; Statement: $r144 := @caughtexception 
(assert (not (= var2126 null-var2389)))
(define-const var732 var636 (var3513_castToRuntime/315756906 var2126)) ; Statement: $r145 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r144) 
 ; Statement: throw $r145 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), className/1690391675=([org.apache.ibatis.ognl.ASTStaticMethod], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), methodName/1690391675=([org.apache.ibatis.ognl.ASTStaticMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3513_castToRuntime/315756906=([java.lang.Throwable], java.lang.RuntimeException)}
; {var552=org.apache.ibatis.ognl.ASTStaticMethod, var3847=r2, var1293=org.apache.ibatis.ognl.OgnlContext, var2057=r10, var1118=java.lang.Object, var1500=r18, var1864=$r0, var93=$r1, var1320=$r3, var867=$r4, var475=$r6, var3916=$r5, var1077=$r7, var3619=$r8, var2202=$r9, var2389=java.lang.Throwable, var2126=$r144, var636=java.lang.RuntimeException, var3513=org.apache.ibatis.ognl.OgnlOps, var732=$r145}
; {org.apache.ibatis.ognl.ASTStaticMethod=var552, r2=var3847, org.apache.ibatis.ognl.OgnlContext=var1293, r10=var2057, java.lang.Object=var1118, r18=var1500, $r0=var1864, $r1=var93, $r3=var1320, $r4=var867, $r6=var475, $r5=var3916, $r7=var1077, $r8=var3619, $r9=var2202, java.lang.Throwable=var2389, $r144=var2126, java.lang.RuntimeException=var636, org.apache.ibatis.ognl.OgnlOps=var3513, $r145=var732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ASTStaticMethod;	r10 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r18 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String className>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r5 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String methodName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r9);	$r144 := @caughtexception;	$r145 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r144);	throw $r145
;block_num 2