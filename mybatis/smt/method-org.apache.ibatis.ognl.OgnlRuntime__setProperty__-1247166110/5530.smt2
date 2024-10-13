(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var3229 0)
(declare-sort var2853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2853-init () var2853)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3229) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var2853 String) void)
(declare-const null-var2600 var2600)
(declare-const null-var3229 var3229)
(declare-const var2147 var2600) ; Statement: r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2147 null-var2600)))
(declare-const var1073 var3229) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1073 null-var3229)))
(declare-const var2891 var3229) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var2891 null-var3229)))
(declare-const var1335 var3229) ; Statement: r5 := @parameter3: java.lang.Object 
(assert (not (= var1335 null-var3229)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.Class getTargetClass(java.lang.Object)>(r0) 
(assert (not (not (= var1073 null-var3229)))) ; Negate: Cond: r0 != null  
(define-const var481 var2853 var2853-init) ; Statement: $r13 = new org.apache.ibatis.ognl.OgnlException 
(define-const var91 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var91)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var91!1 String)
(assert (= var91!1 ""))
(assert true)
(define-const var3676 String (append/672562846 var91!1 "target is null for setProperty(null, \u0022")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("target is null for setProperty(null, \"") 
(declare-const var91!2 String)
(assert (= var91!2 (str.++ var91!1 "target is null for setProperty(null, \u0022")))
(assert true)
(define-const var2851 String (append/-1031950772 var3676 var2891)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var3676!1 String)
(assert (str.prefixof var3676 var3676!1))
(assert true)
(define-const var129 String (append/672562846 var2851 "\u0022, ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\", ") 
(declare-const var2851!1 String)
(assert (= var2851!1 (str.++ var2851 "\u0022, ")))
(assert true)
(define-const var3213 String (append/-1031950772 var129 var1335)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var129!1 String)
(assert (str.prefixof var129 var129!1))
(assert true)
(define-const var3351 String (append/672562846 var3213 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3213!1 String)
(assert (= var3213!1 (str.++ var3213 ")")))
(assert true)
(define-const var2898 String (toString/-2075883882 var3351)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var481 var2898)) ; Statement: specialinvoke $r13.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r20) 

(declare-const var481!1 var2853)
(declare-const var2898!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2853-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var2600=org.apache.ibatis.ognl.OgnlContext, var2147=r3, var3229=java.lang.Object, var1073=r0, var2891=r4, var1335=r5, var2853=org.apache.ibatis.ognl.OgnlException, var481=$r13, var91=$r14, var3676=$r15, var2851=$r16, var129=$r17, var3213=$r18, var3351=$r19, var2898=$r20}
; {org.apache.ibatis.ognl.OgnlContext=var2600, r3=var2147, java.lang.Object=var3229, r0=var1073, r4=var2891, r5=var1335, org.apache.ibatis.ognl.OgnlException=var2853, $r13=var481, $r14=var91, $r15=var3676, $r16=var2851, $r17=var129, $r18=var3213, $r19=var3351, $r20=var2898}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	r5 := @parameter3: java.lang.Object;	if r0 != null goto $r1 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.Class getTargetClass(java.lang.Object)>(r0);	$r13 = new org.apache.ibatis.ognl.OgnlException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("target is null for setProperty(null, \"");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\", ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r20);	throw $r13
;block_num 2