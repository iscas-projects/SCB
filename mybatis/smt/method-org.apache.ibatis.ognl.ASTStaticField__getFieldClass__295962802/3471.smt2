(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var329 0)
(declare-sort var1154 0)
(declare-sort var237 0)
(declare-sort var1911 0)
(declare-sort var2213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/602358304 (var329) String)
(declare-fun var1911-init () var1911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/602358304 (var329) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var1911 String var2213) void)
(declare-fun cast-from-var237-to-var2213 (var237) var2213)
(declare-const null-var329 var329)
(declare-const null-var1154 var1154)
(declare-const null-var237 var237)
(declare-const var2990 var329) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTStaticField 
(assert (not (= var2990 null-var329)))
(declare-const var2656 var1154) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2656 null-var1154)))
(define-const var2475 String (className/602358304 var2990)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var641 var237) ; Statement: $r7 := @caughtexception 
(assert (not (= var641 null-var237)))
(define-const var36 var1911 var1911-init) ; Statement: $r8 = new org.apache.ibatis.ognl.OgnlException 
(define-const var1127 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1127)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1127!1 String)
(assert (= var1127!1 ""))
(assert true)
(define-const var3600 String (append/672562846 var1127!1 "Could not get static field ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get static field ") 
(declare-const var1127!2 String)
(assert (= var1127!2 (str.++ var1127!1 "Could not get static field ")))
(define-const var943 String (fieldName/602358304 var2990)) ; Statement: $r10 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String fieldName> 
(assert true)
(define-const var6 String (append/672562846 var3600 var943)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3600!1 String)
(assert (= var3600!1 (str.++ var3600 var943)))
(assert true)
(define-const var1944 String (append/672562846 var6 " from class ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from class ") 
(declare-const var6!1 String)
(assert (= var6!1 (str.++ var6 " from class ")))
(define-const var825 String (className/602358304 var2990)) ; Statement: $r13 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className> 
(assert true)
(define-const var3423 String (append/672562846 var1944 var825)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1944!1 String)
(assert (= var1944!1 (str.++ var1944 var825)))
(assert true)
(define-const var1970 String (toString/-2075883882 var3423)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var36 var1970 (cast-from-var237-to-var2213 var641))) ; Statement: specialinvoke $r8.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r7) 

(declare-const var36!1 var1911)
(declare-const var1970!1 String)
(declare-const var641!1 var237)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {className/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String), var1911-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var237-to-var2213=([java.lang.Exception], java.lang.Throwable)}
; {var329=org.apache.ibatis.ognl.ASTStaticField, var2990=r1, var1154=org.apache.ibatis.ognl.OgnlContext, var2656=r0, var2475=$r2, var237=java.lang.Exception, var641=$r7, var1911=org.apache.ibatis.ognl.OgnlException, var36=$r8, var1127=$r9, var3600=$r11, var943=$r10, var6=$r12, var1944=$r14, var825=$r13, var3423=$r15, var1970=$r16, var2213=java.lang.Throwable}
; {org.apache.ibatis.ognl.ASTStaticField=var329, r1=var2990, org.apache.ibatis.ognl.OgnlContext=var1154, r0=var2656, $r2=var2475, java.lang.Exception=var237, $r7=var641, org.apache.ibatis.ognl.OgnlException=var1911, $r8=var36, $r9=var1127, $r11=var3600, $r10=var943, $r12=var6, $r14=var1944, $r13=var825, $r15=var3423, $r16=var1970, java.lang.Throwable=var2213}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTStaticField;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	$r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className>;	$r7 := @caughtexception;	$r8 = new org.apache.ibatis.ognl.OgnlException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get static field ");	$r10 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from class ");	$r13 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r7);	throw $r8
;block_num 2