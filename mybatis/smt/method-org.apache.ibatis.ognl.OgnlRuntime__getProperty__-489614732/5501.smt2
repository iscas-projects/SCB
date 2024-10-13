(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var246 0)
(declare-sort var2789 0)
(declare-sort var332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var332-init () var332)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2789) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var332 String) void)
(declare-const null-var246 var246)
(declare-const null-var2789 var2789)
(declare-const var1952 var246) ; Statement: r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1952 null-var246)))
(declare-const var1797 var2789) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1797 null-var2789)))
(declare-const var3138 var2789) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var3138 null-var2789)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.Class getTargetClass(java.lang.Object)>(r0) 
(assert (not (not (= var1797 null-var2789)))) ; Negate: Cond: r0 != null  
(define-const var2213 var332 var332-init) ; Statement: $r13 = new org.apache.ibatis.ognl.OgnlException 
(define-const var3613 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3613)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3613!1 String)
(assert (= var3613!1 ""))
(assert true)
(define-const var2527 String (append/672562846 var3613!1 "source is null for getProperty(null, \u0022")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("source is null for getProperty(null, \"") 
(declare-const var3613!2 String)
(assert (= var3613!2 (str.++ var3613!1 "source is null for getProperty(null, \u0022")))
(assert true)
(define-const var3716 String (append/-1031950772 var2527 var3138)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2527!1 String)
(assert (str.prefixof var2527 var2527!1))
(assert true)
(define-const var1010 String (append/672562846 var3716 "\u0022)")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")") 
(declare-const var3716!1 String)
(assert (= var3716!1 (str.++ var3716 "\u0022)")))
(assert true)
(define-const var2717 String (toString/-2075883882 var1010)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var2213 var2717)) ; Statement: specialinvoke $r13.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r18) 

(declare-const var2213!1 var332)
(declare-const var2717!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var332-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var246=org.apache.ibatis.ognl.OgnlContext, var1952=r3, var2789=java.lang.Object, var1797=r0, var3138=r4, var332=org.apache.ibatis.ognl.OgnlException, var2213=$r13, var3613=$r14, var2527=$r15, var3716=$r16, var1010=$r17, var2717=$r18}
; {org.apache.ibatis.ognl.OgnlContext=var246, r3=var1952, java.lang.Object=var2789, r0=var1797, r4=var3138, org.apache.ibatis.ognl.OgnlException=var332, $r13=var2213, $r14=var3613, $r15=var2527, $r16=var3716, $r17=var1010, $r18=var2717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	if r0 != null goto $r1 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.Class getTargetClass(java.lang.Object)>(r0);	$r13 = new org.apache.ibatis.ognl.OgnlException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("source is null for getProperty(null, \"");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 2