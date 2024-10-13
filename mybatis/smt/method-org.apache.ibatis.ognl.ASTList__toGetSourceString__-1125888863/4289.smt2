(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var587 0)
(declare-sort var232 0)
(declare-sort var1965 0)
(declare-sort var338 0)
(declare-sort var659 0)
(declare-sort var3147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3147!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun parent/1926309034 (var659) var338)
(declare-fun cast-from-var587-to-var659 (var587) var659)
(declare-fun setCurrentType/-350497431 (var232 ClassObject) void)
(declare-fun setCurrentAccessor/563071030 (var232 ClassObject) void)
(declare-fun jjtGetNumChildren/-748122913 (var659) Int)
(declare-const null-var587 var587)
(declare-const null-var232 var232)
(declare-const null-var1965 var1965)
(declare-const var3207 var587) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTList 
(assert (not (= var3207 null-var587)))
(declare-const var2008 var232) ; Statement: r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2008 null-var232)))
(declare-const var2669 var1965) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var2669 null-var1965)))
(define-const var1317 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1317)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1317!1 String)
(assert (= var1317!1 ""))
(define-const var13 var338 (parent/1926309034 (cast-from-var587-to-var659 var3207))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTList: org.apache.ibatis.ognl.Node parent> 
(define-const var1255 Bool true) ; Statement: $z0 = $r2 instanceof org.apache.ibatis.ognl.ASTCtor 
 ; Statement: if $z0 == 0 goto $z15 = 0 
(assert (= (ite var1255 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3530 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var2083 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var456 Bool var2083) ; Statement: z1 = $z14 
(assert true)
;(assert (setCurrentType/-350497431 var2008 var3147!class)) ; Statement: virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>(class "Ljava/util/List;") 

(declare-const var2008!1 var232)
(declare-const var2503 ClassObject)
(assert true)
;(assert (setCurrentAccessor/563071030 var2008!1 var3147!class)) ; Statement: virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;") 

(declare-const var2008!2 var232)
(declare-const var2503!1 ClassObject)
 ; Statement: if $z15 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ") 
(assert (not (not (= (ite var3530 1 0) 0)))) ; Negate: Cond: $z15 != 0  
(assert true)
(define-const var1785 Int (jjtGetNumChildren/-748122913 (cast-from-var587-to-var659 var3207))) ; Statement: $i1 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTList: int jjtGetNumChildren()>() 
 ; Statement: if $i1 >= 1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("java.util.Arrays.asList( new Object[] ") 
(assert (not (>= var1785 1))) ; Negate: Cond: $i1 >= 1  
 ; Statement: return "java.util.Arrays.asList( new Object[0])" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var587-to-var659=([org.apache.ibatis.ognl.ASTList], org.apache.ibatis.ognl.SimpleNode), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), jjtGetNumChildren/-748122913=([org.apache.ibatis.ognl.SimpleNode], int)}
; {var587=org.apache.ibatis.ognl.ASTList, var3207=r1, var232=org.apache.ibatis.ognl.OgnlContext, var2008=r3, var1965=java.lang.Object, var2669=r9, var1317=$r0, var338=org.apache.ibatis.ognl.Node, var659=org.apache.ibatis.ognl.SimpleNode, var13=$r2, var1255=$z0, var3530=$z15, var2083=$z14, var456=z1, var3147=java.util.List, var2503=class "Ljava/util/List;", var1785=$i1}
; {org.apache.ibatis.ognl.ASTList=var587, r1=var3207, org.apache.ibatis.ognl.OgnlContext=var232, r3=var2008, java.lang.Object=var1965, r9=var2669, $r0=var1317, org.apache.ibatis.ognl.Node=var338, org.apache.ibatis.ognl.SimpleNode=var659, $r2=var13, $z0=var1255, $z15=var3530, $z14=var2083, z1=var456, java.util.List=var3147, class "Ljava/util/List;"=var2503, $i1=var1785}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTList;	r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTList: org.apache.ibatis.ognl.Node parent>;	$z0 = $r2 instanceof org.apache.ibatis.ognl.ASTCtor;	if $z0 == 0 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z1 = $z14;	virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>(class "Ljava/util/List;");	virtualinvoke r3.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;");	if $z15 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ");	$i1 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTList: int jjtGetNumChildren()>();	if $i1 >= 1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("java.util.Arrays.asList( new Object[] ");	return "java.util.Arrays.asList( new Object[0])"
;block_num 5