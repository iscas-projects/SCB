(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var445 0)
(declare-sort var491 0)
(declare-sort var2130 0)
(declare-sort var444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun coerceToNumeric/-847887440 (var444 String var491 var2130) String)
(declare-fun cast-from-var1047-to-var444 (var1047) var444)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1047 var1047)
(declare-const null-String String)
(declare-const null-var491 var491)
(declare-const null-var2130 var2130)
(declare-const var3468 var1047) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTBitAnd 
(assert (not (= var3468 null-var1047)))
(declare-const var2255 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2255 null-String)))
(declare-const var3716 var491) ; Statement: r3 := @parameter1: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3716 null-var491)))
(declare-const var2520 var2130) ; Statement: r4 := @parameter2: org.apache.ibatis.ognl.Node 
(assert (not (= var2520 null-var2130)))
(define-const var1845 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1845)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1845!1 String)
(assert (= var1845!1 ""))
(assert true)
(define-const var3362 String (append/672562846 var1845!1 "(long)")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(long)") 
(declare-const var1845!2 String)
(assert (= var1845!2 (str.++ var1845!1 "(long)")))
(assert true)
(define-const var3412 String (coerceToNumeric/-847887440 (cast-from-var1047-to-var444 var3468) var2255 var3716 var2520)) ; Statement: $r5 = specialinvoke r1.<org.apache.ibatis.ognl.NumericExpression: java.lang.String coerceToNumeric(java.lang.String,org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node)>(r2, r3, r4) 
(assert true)
(define-const var2497 String (append/672562846 var3362 var3412)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3362!1 String)
(assert (= var3362!1 (str.++ var3362 var3412)))
(assert true)
(define-const var1717 String (toString/-2075883882 var2497)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), coerceToNumeric/-847887440=([org.apache.ibatis.ognl.NumericExpression, java.lang.String, org.apache.ibatis.ognl.OgnlContext, org.apache.ibatis.ognl.Node], java.lang.String), cast-from-var1047-to-var444=([org.apache.ibatis.ognl.ASTBitAnd], org.apache.ibatis.ognl.NumericExpression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1047=org.apache.ibatis.ognl.ASTBitAnd, var3468=r1, var2255=r2, var445=null_type, var491=org.apache.ibatis.ognl.OgnlContext, var3716=r3, var2130=org.apache.ibatis.ognl.Node, var2520=r4, var1845=$r0, var3362=$r6, var444=org.apache.ibatis.ognl.NumericExpression, var3412=$r5, var2497=$r7, var1717=$r8}
; {org.apache.ibatis.ognl.ASTBitAnd=var1047, r1=var3468, r2=var2255, null_type=var445, org.apache.ibatis.ognl.OgnlContext=var491, r3=var3716, org.apache.ibatis.ognl.Node=var2130, r4=var2520, $r0=var1845, $r6=var3362, org.apache.ibatis.ognl.NumericExpression=var444, $r5=var3412, $r7=var2497, $r8=var1717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTBitAnd;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: org.apache.ibatis.ognl.OgnlContext;	r4 := @parameter2: org.apache.ibatis.ognl.Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(long)");	$r5 = specialinvoke r1.<org.apache.ibatis.ognl.NumericExpression: java.lang.String coerceToNumeric(java.lang.String,org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node)>(r2, r3, r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1