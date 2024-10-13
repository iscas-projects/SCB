(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2869 0)
(declare-sort var1808 0)
(declare-sort var2546 0)
(declare-sort var1056 0)
(declare-sort var1321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/602358304 (var2869) String)
(declare-fun var1056-init () var1056)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/602358304 (var2869) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var1056 String var1321) void)
(declare-fun cast-from-var2546-to-var1321 (var2546) var1321)
(declare-const null-var2869 var2869)
(declare-const null-var1808 var1808)
(declare-const null-var2546 var2546)
(declare-const var307 var2869) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTStaticField 
(assert (not (= var307 null-var2869)))
(declare-const var2001 var1808) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2001 null-var1808)))
(define-const var469 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var908 var2546 null-var2546) ; Statement: r28 = null 
(define-const var1183 String (className/602358304 var307)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3296 var2546) ; Statement: $r27 := @caughtexception 
(assert (not (= var3296 null-var2546)))
(define-const var908!1 var2546 var3296) ; Statement: r28 = $r27 
(assert true) ; Non Conditional
 ; Statement: if r28 == null goto return z3 
(assert (not (= var908!1 null-var2546))) ; Negate: Cond: r28 == null  
(define-const var3329 var1056 var1056-init) ; Statement: $r6 = new org.apache.ibatis.ognl.OgnlException 
(define-const var2021 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2021)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2021!1 String)
(assert (= var2021!1 ""))
(assert true)
(define-const var2491 String (append/672562846 var2021!1 "Could not get static field ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get static field ") 
(declare-const var2021!2 String)
(assert (= var2021!2 (str.++ var2021!1 "Could not get static field ")))
(define-const var3148 String (fieldName/602358304 var307)) ; Statement: $r8 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String fieldName> 
(assert true)
(define-const var724 String (append/672562846 var2491 var3148)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2491!1 String)
(assert (= var2491!1 (str.++ var2491 var3148)))
(assert true)
(define-const var2658 String (append/672562846 var724 " from class ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from class ") 
(declare-const var724!1 String)
(assert (= var724!1 (str.++ var724 " from class ")))
(define-const var2751 String (className/602358304 var307)) ; Statement: $r11 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className> 
(assert true)
(define-const var1505 String (append/672562846 var2658 var2751)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2658!1 String)
(assert (= var2658!1 (str.++ var2658 var2751)))
(assert true)
(define-const var246 String (toString/-2075883882 var1505)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var3329 var246 (cast-from-var2546-to-var1321 var908!1))) ; Statement: specialinvoke $r6.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r14, r28) 

(declare-const var3329!1 var1056)
(declare-const var246!1 String)
(declare-const var908!2 var2546)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {className/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String), var1056-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var2546-to-var1321=([java.lang.Exception], java.lang.Throwable)}
; {var2869=org.apache.ibatis.ognl.ASTStaticField, var307=r1, var1808=org.apache.ibatis.ognl.OgnlContext, var2001=r0, var469=z3, var2546=java.lang.Exception, var908=r28, var1183=$r2, var3296=$r27, var1056=org.apache.ibatis.ognl.OgnlException, var3329=$r6, var2021=$r7, var2491=$r9, var3148=$r8, var724=$r10, var2658=$r12, var2751=$r11, var1505=$r13, var246=$r14, var1321=java.lang.Throwable}
; {org.apache.ibatis.ognl.ASTStaticField=var2869, r1=var307, org.apache.ibatis.ognl.OgnlContext=var1808, r0=var2001, z3=var469, java.lang.Exception=var2546, r28=var908, $r2=var1183, $r27=var3296, org.apache.ibatis.ognl.OgnlException=var1056, $r6=var3329, $r7=var2021, $r9=var2491, $r8=var3148, $r10=var724, $r12=var2658, $r11=var2751, $r13=var1505, $r14=var246, java.lang.Throwable=var1321}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTStaticField;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	z3 = 0;	r28 = null;	$r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className>;	$r27 := @caughtexception;	r28 = $r27;	if r28 == null goto return z3;	$r6 = new org.apache.ibatis.ognl.OgnlException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get static field ");	$r8 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from class ");	$r11 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r14, r28);	throw $r6
;block_num 4