(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3720 0)
(declare-sort var144 0)
(declare-sort var1192 0)
(declare-sort var1582 0)
(declare-sort var2891 0)
(declare-sort var3498 0)
(declare-sort var2936 0)
(declare-sort var2132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentType/-1397948801 (var144) ClassObject)
(declare-fun getClass/1258963082 (var1192) ClassObject)
(declare-fun methodName/-1924383379 (var3720) String)
(declare-fun children/1926309034 (var2891) (Array Int var1582))
(declare-fun cast-from-var3720-to-var2891 (var3720) var2891)
(declare-fun var3720_getChildrenClasses/1159866740 (var144 (Array Int var1582)) (Array Int ClassObject))
(declare-fun var2936_getWriteMethod/-2035627250 (ClassObject String (Array Int ClassObject)) var3498)
(declare-fun var2132-init () var2132)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-388668559 (var2132 String) void)
(declare-const null-var3720 var3720)
(declare-const null-var144 var144)
(declare-const null-var1192 var1192)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3498 var3498)
(declare-const var3018 var3720) ; Statement: r3 := @this: org.apache.ibatis.ognl.ASTMethod 
(assert (not (= var3018 null-var3720)))
(declare-const var2816 var144) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2816 null-var144)))
(declare-const var1633 var1192) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1633 null-var1192)))
(assert true)
(define-const var2290 ClassObject (getCurrentType/-1397948801 var2816)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>() 
 ; Statement: if $r1 == null goto $r166 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var2290 null-ClassObject)) ; Cond: $r1 == null 
(assert true)
(define-const var1853 ClassObject (getClass/1258963082 var1633)) ; Statement: $r166 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(define-const var1911 String (methodName/-1924383379 var3018)) ; Statement: $r5 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName> 
(define-const var2650 (Array Int var1582) (children/1926309034 (cast-from-var3720-to-var2891 var3018))) ; Statement: $r4 = r3.<org.apache.ibatis.ognl.ASTMethod: org.apache.ibatis.ognl.Node[] children> 
(define-const var3958 (Array Int ClassObject) (var3720_getChildrenClasses/1159866740 var2816 var2650)) ; Statement: $r6 = staticinvoke <org.apache.ibatis.ognl.ASTMethod: java.lang.Class[] getChildrenClasses(org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node[])>(r0, $r4) 
(define-const var410 var3498 (var2936_getWriteMethod/-2035627250 var1853 var1911 var3958)) ; Statement: $r162 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method getWriteMethod(java.lang.Class,java.lang.String,java.lang.Class[])>($r166, $r5, $r6) 
 ; Statement: if $r162 != null goto r167 = "" 
(assert (not (not (= var410 null-var3498)))) ; Negate: Cond: $r162 != null  
(define-const var3093 var2132 var2132-init) ; Statement: $r156 = new org.apache.ibatis.ognl.enhance.UnsupportedCompilationException 
(define-const var1091 String String-init) ; Statement: $r157 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1091)) ; Statement: specialinvoke $r157.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1091!1 String)
(assert (= var1091!1 ""))
(assert true)
(define-const var3274 String (append/672562846 var1091!1 "Unable to determine setter method generation for ")) ; Statement: $r159 = virtualinvoke $r157.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine setter method generation for ") 
(declare-const var1091!2 String)
(assert (= var1091!2 (str.++ var1091!1 "Unable to determine setter method generation for ")))
(define-const var3682 String (methodName/-1924383379 var3018)) ; Statement: $r158 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName> 
(assert true)
(define-const var2593 String (append/672562846 var3274 var3682)) ; Statement: $r160 = virtualinvoke $r159.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r158) 
(declare-const var3274!1 String)
(assert (= var3274!1 (str.++ var3274 var3682)))
(assert true)
(define-const var1056 String (toString/-2075883882 var2593)) ; Statement: $r161 = virtualinvoke $r160.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-388668559 var3093 var1056)) ; Statement: specialinvoke $r156.<org.apache.ibatis.ognl.enhance.UnsupportedCompilationException: void <init>(java.lang.String)>($r161) 

(declare-const var3093!1 var2132)
(declare-const var1056!1 String)
 ; Statement: throw $r156 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentType/-1397948801=([org.apache.ibatis.ognl.OgnlContext], java.lang.Class), getClass/1258963082=([java.lang.Object], java.lang.Class), methodName/-1924383379=([org.apache.ibatis.ognl.ASTMethod], java.lang.String), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var3720-to-var2891=([org.apache.ibatis.ognl.ASTMethod], org.apache.ibatis.ognl.SimpleNode), var3720_getChildrenClasses/1159866740=([org.apache.ibatis.ognl.OgnlContext, org.apache.ibatis.ognl.Node[]], java.lang.Class[]), var2936_getWriteMethod/-2035627250=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var2132-init=([], org.apache.ibatis.ognl.enhance.UnsupportedCompilationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-388668559=([org.apache.ibatis.ognl.enhance.UnsupportedCompilationException, java.lang.String], void)}
; {var3720=org.apache.ibatis.ognl.ASTMethod, var3018=r3, var144=org.apache.ibatis.ognl.OgnlContext, var2816=r0, var1192=java.lang.Object, var1633=r2, var2290=$r1, var1853=$r166, var1911=$r5, var1582=org.apache.ibatis.ognl.Node, var2891=org.apache.ibatis.ognl.SimpleNode, var2650=$r4, var3958=$r6, var3498=java.lang.reflect.Method, var2936=org.apache.ibatis.ognl.OgnlRuntime, var410=$r162, var2132=org.apache.ibatis.ognl.enhance.UnsupportedCompilationException, var3093=$r156, var1091=$r157, var3274=$r159, var3682=$r158, var2593=$r160, var1056=$r161}
; {org.apache.ibatis.ognl.ASTMethod=var3720, r3=var3018, org.apache.ibatis.ognl.OgnlContext=var144, r0=var2816, java.lang.Object=var1192, r2=var1633, $r1=var2290, $r166=var1853, $r5=var1911, org.apache.ibatis.ognl.Node=var1582, org.apache.ibatis.ognl.SimpleNode=var2891, $r4=var2650, $r6=var3958, java.lang.reflect.Method=var3498, org.apache.ibatis.ognl.OgnlRuntime=var2936, $r162=var410, org.apache.ibatis.ognl.enhance.UnsupportedCompilationException=var2132, $r156=var3093, $r157=var1091, $r159=var3274, $r158=var3682, $r160=var2593, $r161=var1056}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.ognl.ASTMethod;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r2 := @parameter1: java.lang.Object;	$r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>();	if $r1 == null goto $r166 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r166 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r5 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>;	$r4 = r3.<org.apache.ibatis.ognl.ASTMethod: org.apache.ibatis.ognl.Node[] children>;	$r6 = staticinvoke <org.apache.ibatis.ognl.ASTMethod: java.lang.Class[] getChildrenClasses(org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node[])>(r0, $r4);	$r162 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method getWriteMethod(java.lang.Class,java.lang.String,java.lang.Class[])>($r166, $r5, $r6);	if $r162 != null goto r167 = "";	$r156 = new org.apache.ibatis.ognl.enhance.UnsupportedCompilationException;	$r157 = new java.lang.StringBuilder;	specialinvoke $r157.<java.lang.StringBuilder: void <init>()>();	$r159 = virtualinvoke $r157.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine setter method generation for ");	$r158 = r3.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>;	$r160 = virtualinvoke $r159.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r158);	$r161 = virtualinvoke $r160.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r156.<org.apache.ibatis.ognl.enhance.UnsupportedCompilationException: void <init>(java.lang.String)>($r161);	throw $r156
;block_num 4