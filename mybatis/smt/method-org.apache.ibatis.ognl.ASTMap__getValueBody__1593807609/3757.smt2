(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1826 0)
(declare-sort var1405 0)
(declare-sort var3587 0)
(declare-sort var1942 0)
(declare-sort var2005 0)
(declare-sort var1569 0)
(declare-sort var1708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/-1410767792 (var1826) String)
(declare-fun var1569-init () var1569)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1325373783 (var1569 String var1708) void)
(declare-fun cast-from-var2005-to-var1708 (var2005) var1708)
(declare-const null-var1826 var1826)
(declare-const null-var1405 var1405)
(declare-const null-var3587 var3587)
(declare-const null-String String)
(declare-const null-var2005 var2005)
(declare-const var400 var1826) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTMap 
(assert (not (= var400 null-var1826)))
(declare-const var1069 var1405) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1069 null-var1405)))
(declare-const var944 var3587) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var944 null-var3587)))
(define-const var1475 String (className/-1410767792 var400)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTMap: java.lang.String className> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.apache.ibatis.ognl.ASTMap: java.lang.String className> 
(assert (not (not (= var1475 null-String)))) ; Negate: Cond: $r1 != null  
(declare-const var856 var2005) ; Statement: $r15 := @caughtexception 
(assert (not (= var856 null-var2005)))
(define-const var2526 var1569 var1569-init) ; Statement: $r16 = new org.apache.ibatis.ognl.OgnlException 
(define-const var748 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var748)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var748!1 String)
(assert (= var748!1 ""))
(assert true)
(define-const var1419 String (append/672562846 var748!1 "Map implementor \u0027")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Map implementor \'") 
(declare-const var748!2 String)
(assert (= var748!2 (str.++ var748!1 "Map implementor \u0027")))
(define-const var2699 String (className/-1410767792 var400)) ; Statement: $r18 = r0.<org.apache.ibatis.ognl.ASTMap: java.lang.String className> 
(assert true)
(define-const var1904 String (append/672562846 var1419 var2699)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1419!1 String)
(assert (= var1419!1 (str.++ var1419 var2699)))
(assert true)
(define-const var171 String (append/672562846 var1904 "\u0027 not found")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found") 
(declare-const var1904!1 String)
(assert (= var1904!1 (str.++ var1904 "\u0027 not found")))
(assert true)
(define-const var3636 String (toString/-2075883882 var171)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1325373783 var2526 var3636 (cast-from-var2005-to-var1708 var856))) ; Statement: specialinvoke $r16.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r15) 

(declare-const var2526!1 var1569)
(declare-const var3636!1 String)
(declare-const var856!1 var2005)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {className/-1410767792=([org.apache.ibatis.ognl.ASTMap], java.lang.String), var1569-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1325373783=([org.apache.ibatis.ognl.OgnlException, java.lang.String, java.lang.Throwable], void), cast-from-var2005-to-var1708=([java.lang.Exception], java.lang.Throwable)}
; {var1826=org.apache.ibatis.ognl.ASTMap, var400=r0, var1405=org.apache.ibatis.ognl.OgnlContext, var1069=r2, var3587=java.lang.Object, var944=r11, var1475=$r1, var1942=null_type, var2005=java.lang.Exception, var856=$r15, var1569=org.apache.ibatis.ognl.OgnlException, var2526=$r16, var748=$r17, var1419=$r19, var2699=$r18, var1904=$r20, var171=$r21, var3636=$r22, var1708=java.lang.Throwable}
; {org.apache.ibatis.ognl.ASTMap=var1826, r0=var400, org.apache.ibatis.ognl.OgnlContext=var1405, r2=var1069, java.lang.Object=var3587, r11=var944, $r1=var1475, null_type=var1942, java.lang.Exception=var2005, $r15=var856, org.apache.ibatis.ognl.OgnlException=var1569, $r16=var2526, $r17=var748, $r19=var1419, $r18=var2699, $r20=var1904, $r21=var171, $r22=var3636, java.lang.Throwable=var1708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTMap;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r11 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.ibatis.ognl.ASTMap: java.lang.String className>;	if $r1 != null goto $r3 = r0.<org.apache.ibatis.ognl.ASTMap: java.lang.String className>;	$r15 := @caughtexception;	$r16 = new org.apache.ibatis.ognl.OgnlException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Map implementor \'");	$r18 = r0.<org.apache.ibatis.ognl.ASTMap: java.lang.String className>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r15);	throw $r16
;block_num 2