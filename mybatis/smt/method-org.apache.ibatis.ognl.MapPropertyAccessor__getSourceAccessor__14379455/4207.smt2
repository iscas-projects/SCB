(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3559 0)
(declare-sort var1359 0)
(declare-sort var564 0)
(declare-sort var1635 0)
(declare-sort var3049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentNode/1783078123 (var1359) var1635)
(declare-fun var1635_jjtGetParent/-1766774457 (var1635) var1635)
(declare-fun var3049-init () var3049)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var564) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3049 String) void)
(declare-const null-var3559 var3559)
(declare-const null-var1359 var1359)
(declare-const null-var564 var564)
(declare-const null-var1635 var1635)
(declare-const var2077 var3559) ; Statement: r13 := @this: org.apache.ibatis.ognl.MapPropertyAccessor 
(assert (not (= var2077 null-var3559)))
(declare-const var327 var1359) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var327 null-var1359)))
(declare-const var2480 var564) ; Statement: r14 := @parameter1: java.lang.Object 
(assert (not (= var2480 null-var564)))
(declare-const var2317 var564) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var2317 null-var564)))
(assert true)
(define-const var2195 var1635 (getCurrentNode/1783078123 var327)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: org.apache.ibatis.ognl.Node getCurrentNode()>() 
(define-const var1340 var1635 (var1635_jjtGetParent/-1766774457 var2195)) ; Statement: r15 = interfaceinvoke $r1.<org.apache.ibatis.ognl.Node: org.apache.ibatis.ognl.Node jjtGetParent()>() 
(define-const var1417 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
 ; Statement: if r15 != null goto $z0 = r15 instanceof org.apache.ibatis.ognl.ASTProperty 
(assert (not (not (= var1340 null-var1635)))) ; Negate: Cond: r15 != null  
(define-const var543 var3049 var3049-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var3129 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3129)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3129!1 String)
(assert (= var3129!1 ""))
(assert true)
(define-const var2520 String (append/672562846 var3129!1 "node is null for \u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node is null for \'") 
(declare-const var3129!2 String)
(assert (= var3129!2 (str.++ var3129!1 "node is null for \u0027")))
(assert true)
(define-const var2123 String (append/-1031950772 var2520 var2317)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2520!1 String)
(assert (str.prefixof var2520 var2520!1))
(assert true)
(define-const var1312 String (append/672562846 var2123 "\u0027")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2123!1 String)
(assert (= var2123!1 (str.++ var2123 "\u0027")))
(assert true)
(define-const var1031 String (toString/-2075883882 var1312)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var543 var1031)) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var543!1 var3049)
(declare-const var1031!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentNode/1783078123=([org.apache.ibatis.ognl.OgnlContext], org.apache.ibatis.ognl.Node), var1635_jjtGetParent/-1766774457=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.Node), var3049-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3559=org.apache.ibatis.ognl.MapPropertyAccessor, var2077=r13, var1359=org.apache.ibatis.ognl.OgnlContext, var327=r0, var564=java.lang.Object, var2480=r14, var2317=r2, var1635=org.apache.ibatis.ognl.Node, var2195=$r1, var1340=r15, var1417=z8, var3049=java.lang.RuntimeException, var543=$r7, var3129=$r8, var2520=$r9, var2123=$r10, var1312=$r11, var1031=$r12}
; {org.apache.ibatis.ognl.MapPropertyAccessor=var3559, r13=var2077, org.apache.ibatis.ognl.OgnlContext=var1359, r0=var327, java.lang.Object=var564, r14=var2480, r2=var2317, org.apache.ibatis.ognl.Node=var1635, $r1=var2195, r15=var1340, z8=var1417, java.lang.RuntimeException=var3049, $r7=var543, $r8=var3129, $r9=var2520, $r10=var2123, $r11=var1312, $r12=var1031}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.apache.ibatis.ognl.MapPropertyAccessor;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r14 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	$r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: org.apache.ibatis.ognl.Node getCurrentNode()>();	r15 = interfaceinvoke $r1.<org.apache.ibatis.ognl.Node: org.apache.ibatis.ognl.Node jjtGetParent()>();	z8 = 0;	if r15 != null goto $z0 = r15 instanceof org.apache.ibatis.ognl.ASTProperty;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node is null for \'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2