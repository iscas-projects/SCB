(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3698 0)
(declare-sort var3258 0)
(declare-sort var53 0)
(declare-sort var2829 0)
(declare-sort var3264 0)
(declare-sort var970 0)
(declare-sort var3703 0)
(declare-sort var3127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentType/-1397948801 (var3258) ClassObject)
(declare-fun methodName/-1924383379 (var3698) String)
(declare-fun children/1926309034 (var3264) (Array Int var2829))
(declare-fun cast-from-var3698-to-var3264 (var3698) var3264)
(declare-fun var3698_getChildrenClasses/1159866740 (var3258 (Array Int var2829)) (Array Int ClassObject))
(declare-fun var3703_getWriteMethod/-2035627250 (ClassObject String (Array Int ClassObject)) var970)
(declare-fun var3127-init () var3127)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-388668559 (var3127 String) void)
(declare-const null-var3698 var3698)
(declare-const null-var3258 var3258)
(declare-const null-var53 var53)
(declare-const null-ClassObject ClassObject)
(declare-const null-var970 var970)
(declare-const var2926 var3698) ; Statement: r3 := @this: org.apache.ibatis.ognl.ASTMethod 
(assert (not (= var2926 null-var3698)))
(declare-const var3713 var3258) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3713 null-var3258)))
(declare-const var3495 var53) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3495 null-var53)))
(assert true)
(define-const var1441 ClassObject (getCurrentType/-1397948801 var3713)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>() 
 ; Statement: if $r1 == null goto $r166 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var1441 null-ClassObject))) ; Negate: Cond: $r1 == null  
(assert true)
(define-const var1898 ClassObject (getCurrentType/-1397948801 var3713)) ; Statement: $r166 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>() 
 ; Statement: goto [?= $r5 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>] 
(assert true) ; Non Conditional
(define-const var801 String (methodName/-1924383379 var2926)) ; Statement: $r5 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName> 
(define-const var2387 (Array Int var2829) (children/1926309034 (cast-from-var3698-to-var3264 var2926))) ; Statement: $r4 = r3.<org.apache.ibatis.ognl.ASTMethod: org.apache.ibatis.ognl.Node[] children> 
(define-const var1590 (Array Int ClassObject) (var3698_getChildrenClasses/1159866740 var3713 var2387)) ; Statement: $r6 = staticinvoke <org.apache.ibatis.ognl.ASTMethod: java.lang.Class[] getChildrenClasses(org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node[])>(r0, $r4) 
(define-const var3789 var970 (var3703_getWriteMethod/-2035627250 var1898 var801 var1590)) ; Statement: $r162 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method getWriteMethod(java.lang.Class,java.lang.String,java.lang.Class[])>($r166, $r5, $r6) 
 ; Statement: if $r162 != null goto r167 = "" 
(assert (not (not (= var3789 null-var970)))) ; Negate: Cond: $r162 != null  
(define-const var3302 var3127 var3127-init) ; Statement: $r156 = new org.apache.ibatis.ognl.enhance.UnsupportedCompilationException 
(define-const var1596 String String-init) ; Statement: $r157 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1596)) ; Statement: specialinvoke $r157.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1596!1 String)
(assert (= var1596!1 ""))
(assert true)
(define-const var28 String (append/672562846 var1596!1 "Unable to determine setter method generation for ")) ; Statement: $r159 = virtualinvoke $r157.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine setter method generation for ") 
(declare-const var1596!2 String)
(assert (= var1596!2 (str.++ var1596!1 "Unable to determine setter method generation for ")))
(define-const var3120 String (methodName/-1924383379 var2926)) ; Statement: $r158 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName> 
(assert true)
(define-const var863 String (append/672562846 var28 var3120)) ; Statement: $r160 = virtualinvoke $r159.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r158) 
(declare-const var28!1 String)
(assert (= var28!1 (str.++ var28 var3120)))
(assert true)
(define-const var3272 String (toString/-2075883882 var863)) ; Statement: $r161 = virtualinvoke $r160.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-388668559 var3302 var3272)) ; Statement: specialinvoke $r156.<org.apache.ibatis.ognl.enhance.UnsupportedCompilationException: void <init>(java.lang.String)>($r161) 

(declare-const var3302!1 var3127)
(declare-const var3272!1 String)
 ; Statement: throw $r156 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentType/-1397948801=([org.apache.ibatis.ognl.OgnlContext], java.lang.Class), methodName/-1924383379=([org.apache.ibatis.ognl.ASTMethod], java.lang.String), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var3698-to-var3264=([org.apache.ibatis.ognl.ASTMethod], org.apache.ibatis.ognl.SimpleNode), var3698_getChildrenClasses/1159866740=([org.apache.ibatis.ognl.OgnlContext, org.apache.ibatis.ognl.Node[]], java.lang.Class[]), var3703_getWriteMethod/-2035627250=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var3127-init=([], org.apache.ibatis.ognl.enhance.UnsupportedCompilationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-388668559=([org.apache.ibatis.ognl.enhance.UnsupportedCompilationException, java.lang.String], void)}
; {var3698=org.apache.ibatis.ognl.ASTMethod, var2926=r3, var3258=org.apache.ibatis.ognl.OgnlContext, var3713=r0, var53=java.lang.Object, var3495=r2, var1441=$r1, var1898=$r166, var801=$r5, var2829=org.apache.ibatis.ognl.Node, var3264=org.apache.ibatis.ognl.SimpleNode, var2387=$r4, var1590=$r6, var970=java.lang.reflect.Method, var3703=org.apache.ibatis.ognl.OgnlRuntime, var3789=$r162, var3127=org.apache.ibatis.ognl.enhance.UnsupportedCompilationException, var3302=$r156, var1596=$r157, var28=$r159, var3120=$r158, var863=$r160, var3272=$r161}
; {org.apache.ibatis.ognl.ASTMethod=var3698, r3=var2926, org.apache.ibatis.ognl.OgnlContext=var3258, r0=var3713, java.lang.Object=var53, r2=var3495, $r1=var1441, $r166=var1898, $r5=var801, org.apache.ibatis.ognl.Node=var2829, org.apache.ibatis.ognl.SimpleNode=var3264, $r4=var2387, $r6=var1590, java.lang.reflect.Method=var970, org.apache.ibatis.ognl.OgnlRuntime=var3703, $r162=var3789, org.apache.ibatis.ognl.enhance.UnsupportedCompilationException=var3127, $r156=var3302, $r157=var1596, $r159=var28, $r158=var3120, $r160=var863, $r161=var3272}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.ognl.ASTMethod;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r2 := @parameter1: java.lang.Object;	$r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>();	if $r1 == null goto $r166 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r166 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>();	goto [?= $r5 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>];	$r5 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>;	$r4 = r3.<org.apache.ibatis.ognl.ASTMethod: org.apache.ibatis.ognl.Node[] children>;	$r6 = staticinvoke <org.apache.ibatis.ognl.ASTMethod: java.lang.Class[] getChildrenClasses(org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node[])>(r0, $r4);	$r162 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method getWriteMethod(java.lang.Class,java.lang.String,java.lang.Class[])>($r166, $r5, $r6);	if $r162 != null goto r167 = "";	$r156 = new org.apache.ibatis.ognl.enhance.UnsupportedCompilationException;	$r157 = new java.lang.StringBuilder;	specialinvoke $r157.<java.lang.StringBuilder: void <init>()>();	$r159 = virtualinvoke $r157.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine setter method generation for ");	$r158 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>;	$r160 = virtualinvoke $r159.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r158);	$r161 = virtualinvoke $r160.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r156.<org.apache.ibatis.ognl.enhance.UnsupportedCompilationException: void <init>(java.lang.String)>($r161);	throw $r156
;block_num 4