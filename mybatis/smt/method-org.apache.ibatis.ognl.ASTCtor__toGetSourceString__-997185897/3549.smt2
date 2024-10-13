(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2390 0)
(declare-sort var585 0)
(declare-sort var1512 0)
(declare-sort var787 0)
(declare-sort var1457 0)
(declare-sort var3626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-784408160 (var2390) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3626_castToRuntime/315756906 (var787) var1457)
(declare-const null-var2390 var2390)
(declare-const null-var585 var585)
(declare-const null-var1512 var1512)
(declare-const null-var787 var787)
(declare-const var34 var2390) ; Statement: r2 := @this: org.apache.ibatis.ognl.ASTCtor 
(assert (not (= var34 null-var2390)))
(declare-const var3077 var585) ; Statement: r7 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3077 null-var585)))
(declare-const var1853 var1512) ; Statement: r10 := @parameter1: java.lang.Object 
(assert (not (= var1853 null-var1512)))
(define-const var1352 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2250 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2250)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2250!1 String)
(assert (= var2250!1 ""))
(assert true)
(define-const var1257 String (append/672562846 var2250!1 "new ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ") 
(declare-const var2250!2 String)
(assert (= var2250!2 (str.++ var2250!1 "new ")))
(define-const var2082 String (className/-784408160 var34)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className> 
(assert true)
(define-const var1083 String (append/672562846 var1257 var2082)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1257!1 String)
(assert (= var1257!1 (str.++ var1257 var2082)))
(assert true)
(define-const var306 String (toString/-2075883882 var1083)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1352 var306)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6) 
(declare-const var1352!1 String)
(assert (= var1352!1 var306))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var75 var787) ; Statement: $r123 := @caughtexception 
(assert (not (= var75 null-var787)))
(define-const var755 var1457 (var3626_castToRuntime/315756906 var75)) ; Statement: $r124 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r123) 
 ; Statement: throw $r124 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-784408160=([org.apache.ibatis.ognl.ASTCtor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3626_castToRuntime/315756906=([java.lang.Throwable], java.lang.RuntimeException)}
; {var2390=org.apache.ibatis.ognl.ASTCtor, var34=r2, var585=org.apache.ibatis.ognl.OgnlContext, var3077=r7, var1512=java.lang.Object, var1853=r10, var1352=$r0, var2250=$r1, var1257=$r4, var2082=$r3, var1083=$r5, var306=$r6, var787=java.lang.Throwable, var75=$r123, var1457=java.lang.RuntimeException, var3626=org.apache.ibatis.ognl.OgnlOps, var755=$r124}
; {org.apache.ibatis.ognl.ASTCtor=var2390, r2=var34, org.apache.ibatis.ognl.OgnlContext=var585, r7=var3077, java.lang.Object=var1512, r10=var1853, $r0=var1352, $r1=var2250, $r4=var1257, $r3=var2082, $r5=var1083, $r6=var306, java.lang.Throwable=var787, $r123=var75, java.lang.RuntimeException=var1457, org.apache.ibatis.ognl.OgnlOps=var3626, $r124=var755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ASTCtor;	r7 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r10 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ");	$r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6);	$r123 := @caughtexception;	$r124 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r123);	throw $r124
;block_num 2