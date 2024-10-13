(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3976 0)
(declare-sort var3464 0)
(declare-sort var2695 0)
(declare-sort var1237 0)
(declare-sort var1547 0)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2695-to-var1237 (var2695) var1237)
(declare-fun getCurrentNode/1783078123 (var3464) var1547)
(declare-fun var1547_jjtGetParent/-1766774457 (var1547) var1547)
(declare-fun var590-init () var590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2695) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var590 String) void)
(declare-const null-var3976 var3976)
(declare-const null-var3464 var3464)
(declare-const null-var2695 var2695)
(declare-const null-var1547 var1547)
(declare-const var2258 var3976) ; Statement: r12 := @this: org.apache.ibatis.ognl.MapPropertyAccessor 
(assert (not (= var2258 null-var3976)))
(declare-const var2256 var3464) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2256 null-var3464)))
(declare-const var2126 var2695) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2126 null-var2695)))
(declare-const var1398 var2695) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var1398 null-var2695)))
(define-const var838 var1237 (cast-from-var2695-to-var1237 var2126)) ; Statement: r1 = (java.util.Map) r0 
(assert true)
(define-const var1551 var1547 (getCurrentNode/1783078123 var2256)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.ognl.OgnlContext: org.apache.ibatis.ognl.Node getCurrentNode()>() 
(define-const var2365 var1547 (var1547_jjtGetParent/-1766774457 var1551)) ; Statement: r13 = interfaceinvoke $r3.<org.apache.ibatis.ognl.Node: org.apache.ibatis.ognl.Node jjtGetParent()>() 
(define-const var3565 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
 ; Statement: if r13 != null goto $z0 = r13 instanceof org.apache.ibatis.ognl.ASTProperty 
(assert (not (not (= var2365 null-var1547)))) ; Negate: Cond: r13 != null  
(define-const var2026 var590 var590-init) ; Statement: $r6 = new org.apache.ibatis.ognl.OgnlException 
(define-const var3549 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3549)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3549!1 String)
(assert (= var3549!1 ""))
(assert true)
(define-const var1896 String (append/672562846 var3549!1 "node is null for \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node is null for \'") 
(declare-const var3549!2 String)
(assert (= var3549!2 (str.++ var3549!1 "node is null for \u0027")))
(assert true)
(define-const var3584 String (append/-1031950772 var1896 var1398)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1896!1 String)
(assert (str.prefixof var1896 var1896!1))
(assert true)
(define-const var3535 String (append/672562846 var3584 "\u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3584!1 String)
(assert (= var3584!1 (str.++ var3584 "\u0027")))
(assert true)
(define-const var88 String (toString/-2075883882 var3535)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var2026 var88)) ; Statement: specialinvoke $r6.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r11) 

(declare-const var2026!1 var590)
(declare-const var88!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2695-to-var1237=([java.lang.Object], java.util.Map), getCurrentNode/1783078123=([org.apache.ibatis.ognl.OgnlContext], org.apache.ibatis.ognl.Node), var1547_jjtGetParent/-1766774457=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.Node), var590-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var3976=org.apache.ibatis.ognl.MapPropertyAccessor, var2258=r12, var3464=org.apache.ibatis.ognl.OgnlContext, var2256=r2, var2695=java.lang.Object, var2126=r0, var1398=r4, var1237=java.util.Map, var838=r1, var1547=org.apache.ibatis.ognl.Node, var1551=$r3, var2365=r13, var3565=z9, var590=org.apache.ibatis.ognl.OgnlException, var2026=$r6, var3549=$r7, var1896=$r8, var3584=$r9, var3535=$r10, var88=$r11}
; {org.apache.ibatis.ognl.MapPropertyAccessor=var3976, r12=var2258, org.apache.ibatis.ognl.OgnlContext=var3464, r2=var2256, java.lang.Object=var2695, r0=var2126, r4=var1398, java.util.Map=var1237, r1=var838, org.apache.ibatis.ognl.Node=var1547, $r3=var1551, r13=var2365, z9=var3565, org.apache.ibatis.ognl.OgnlException=var590, $r6=var2026, $r7=var3549, $r8=var1896, $r9=var3584, $r10=var3535, $r11=var88}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.ibatis.ognl.MapPropertyAccessor;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	r1 = (java.util.Map) r0;	$r3 = virtualinvoke r2.<org.apache.ibatis.ognl.OgnlContext: org.apache.ibatis.ognl.Node getCurrentNode()>();	r13 = interfaceinvoke $r3.<org.apache.ibatis.ognl.Node: org.apache.ibatis.ognl.Node jjtGetParent()>();	z9 = 0;	if r13 != null goto $z0 = r13 instanceof org.apache.ibatis.ognl.ASTProperty;	$r6 = new org.apache.ibatis.ognl.OgnlException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node is null for \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2