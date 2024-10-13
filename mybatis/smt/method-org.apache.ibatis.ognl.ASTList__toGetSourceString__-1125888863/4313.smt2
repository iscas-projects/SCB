(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3892 0)
(declare-sort var1549 0)
(declare-sort var1582 0)
(declare-sort var2413 0)
(declare-sort var1980 0)
(declare-sort var15 0)
(declare-sort var3803 0)
(declare-sort var1591 0)
(declare-sort var3957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var15!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun parent/1926309034 (var1980) var2413)
(declare-fun cast-from-var3892-to-var1980 (var3892) var1980)
(declare-fun setCurrentType/-350497431 (var1549 ClassObject) void)
(declare-fun setCurrentAccessor/563071030 (var1549 ClassObject) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3957_castToRuntime/315756906 (var3803) var1591)
(declare-const null-var3892 var3892)
(declare-const null-var1549 var1549)
(declare-const null-var1582 var1582)
(declare-const null-var3803 var3803)
(declare-const var1014 var3892) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTList 
(assert (not (= var1014 null-var3892)))
(declare-const var1497 var1549) ; Statement: r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1497 null-var1549)))
(declare-const var3413 var1582) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var3413 null-var1582)))
(define-const var2610 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2610)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2610!1 String)
(assert (= var2610!1 ""))
(define-const var3639 var2413 (parent/1926309034 (cast-from-var3892-to-var1980 var1014))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTList: org.apache.ibatis.ognl.Node parent> 
(define-const var2089 Bool true) ; Statement: $z0 = $r2 instanceof org.apache.ibatis.ognl.ASTCtor 
 ; Statement: if $z0 == 0 goto $z15 = 0 
(assert (= (ite var2089 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2263 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var103 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var1802 Bool var103) ; Statement: z1 = $z14 
(assert true)
;(assert (setCurrentType/-350497431 var1497 var15!class)) ; Statement: virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>(class "Ljava/util/List;") 

(declare-const var1497!1 var1549)
(declare-const var2524 ClassObject)
(assert true)
;(assert (setCurrentAccessor/563071030 var1497!1 var15!class)) ; Statement: virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;") 

(declare-const var1497!2 var1549)
(declare-const var2524!1 ClassObject)
 ; Statement: if $z15 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ") 
(assert (not (= (ite var2263 1 0) 0))) ; Cond: $z15 != 0 
(assert true)
;(assert (append/672562846 var2610!1 "{ ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ") 
(declare-const var2610!2 String)
(assert (= var2610!2 (str.++ var2610!1 "{ ")))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2376 var3803) ; Statement: $r86 := @caughtexception 
(assert (not (= var2376 null-var3803)))
(define-const var1853 var1591 (var3957_castToRuntime/315756906 var2376)) ; Statement: $r87 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r86) 
 ; Statement: throw $r87 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var3892-to-var1980=([org.apache.ibatis.ognl.ASTList], org.apache.ibatis.ognl.SimpleNode), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3957_castToRuntime/315756906=([java.lang.Throwable], java.lang.RuntimeException)}
; {var3892=org.apache.ibatis.ognl.ASTList, var1014=r1, var1549=org.apache.ibatis.ognl.OgnlContext, var1497=r3, var1582=java.lang.Object, var3413=r9, var2610=$r0, var2413=org.apache.ibatis.ognl.Node, var1980=org.apache.ibatis.ognl.SimpleNode, var3639=$r2, var2089=$z0, var2263=$z15, var103=$z14, var1802=z1, var15=java.util.List, var2524=class "Ljava/util/List;", var3803=java.lang.Throwable, var2376=$r86, var1591=java.lang.RuntimeException, var3957=org.apache.ibatis.ognl.OgnlOps, var1853=$r87}
; {org.apache.ibatis.ognl.ASTList=var3892, r1=var1014, org.apache.ibatis.ognl.OgnlContext=var1549, r3=var1497, java.lang.Object=var1582, r9=var3413, $r0=var2610, org.apache.ibatis.ognl.Node=var2413, org.apache.ibatis.ognl.SimpleNode=var1980, $r2=var3639, $z0=var2089, $z15=var2263, $z14=var103, z1=var1802, java.util.List=var15, class "Ljava/util/List;"=var2524, java.lang.Throwable=var3803, $r86=var2376, java.lang.RuntimeException=var1591, org.apache.ibatis.ognl.OgnlOps=var3957, $r87=var1853}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTList;	r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTList: org.apache.ibatis.ognl.Node parent>;	$z0 = $r2 instanceof org.apache.ibatis.ognl.ASTCtor;	if $z0 == 0 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z1 = $z14;	virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>(class "Ljava/util/List;");	virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;");	if $z15 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ");	$r86 := @caughtexception;	$r87 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r86);	throw $r87
;block_num 5