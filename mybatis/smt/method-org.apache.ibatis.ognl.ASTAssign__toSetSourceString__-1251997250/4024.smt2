(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1994 0)
(declare-sort var1090 0)
(declare-sort var2979 0)
(declare-sort var3306 0)
(declare-sort var1636 0)
(declare-sort var2998 0)
(declare-sort var2847 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var1636) (Array Int var3306))
(declare-fun cast-from-var1994-to-var1636 (var1994) var1636)
(declare-fun var2998_toSetSourceString/1208257022 (var2998 var1090 var2979) String)
(declare-fun cast-from-var3306-to-var2998 (var3306) var2998)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3694-init () var3694)
(declare-fun <init>/-388668559 (var3694 String) void)
(declare-const null-var1994 var1994)
(declare-const null-var1090 var1090)
(declare-const null-var2979 var2979)
(declare-const null-String String)
(declare-const var2922 var1994) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTAssign 
(assert (not (= var2922 null-var1994)))
(declare-const var3943 var1090) ; Statement: r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3943 null-var1090)))
(declare-const var1346 var2979) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1346 null-var2979)))
(define-const var198 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var198)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var198!1 String)
(assert (= var198!1 ""))
(assert true)
(define-const var3787 String (append/672562846 var198!1 "")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var198!2 String)
(assert (= var198!2 (str.++ var198!1 "")))
(define-const var545 (Array Int var3306) (children/1926309034 (cast-from-var1994-to-var1636 var2922))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var1244 var3306 (select var545 0)) ; Statement: $r5 = $r2[0] 
(define-const var3982 String (var2998_toSetSourceString/1208257022 (cast-from-var3306-to-var2998 var1244) var3943 var1346)) ; Statement: $r6 = interfaceinvoke $r5.<org.apache.ibatis.ognl.Node: java.lang.String toSetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r3, r4) 
(assert true)
(define-const var1696 String (append/672562846 var3787 var3982)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3787!1 String)
(assert (= var3787!1 (str.++ var3787 var3982)))
(assert true)
(define-const var1230 String (toString/-2075883882 var1696)) ; Statement: r53 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3096 (Array Int var3306) (children/1926309034 (cast-from-var1994-to-var1636 var2922))) ; Statement: $r9 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var3026 var3306 (select var3096 1)) ; Statement: $r10 = $r9[1] 
(define-const var1822 Bool true) ; Statement: $z0 = $r10 instanceof org.apache.ibatis.ognl.ASTProperty 
 ; Statement: if $z0 == 0 goto $r11 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(assert (= (ite var1822 1 0) 0)) ; Cond: $z0 == 0 
(define-const var870 (Array Int var3306) (children/1926309034 (cast-from-var1994-to-var1636 var2922))) ; Statement: $r11 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var3105 var3306 (select var870 1)) ; Statement: $r12 = $r11[1] 
(define-const var343 String (var2998_toSetSourceString/1208257022 (cast-from-var3306-to-var2998 var3105) var3943 var1346)) ; Statement: $r52 = interfaceinvoke $r12.<org.apache.ibatis.ognl.Node: java.lang.String toSetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r3, r4) 
(define-const var2968 String var343) ; Statement: r54 = $r52 
 ; Statement: if $r52 != null goto $r16 = class "Lorg/apache/ibatis/ognl/ASTSequence;" 
(assert (not (not (= var343 null-String)))) ; Negate: Cond: $r52 != null  
(define-const var842 var3694 var3694-init) ; Statement: $r43 = new org.apache.ibatis.ognl.enhance.UnsupportedCompilationException 
(assert true)
;(assert (<init>/-388668559 var842 "Value for assignment is null, can\u0027t enhance statement to bytecode.")) ; Statement: specialinvoke $r43.<org.apache.ibatis.ognl.enhance.UnsupportedCompilationException: void <init>(java.lang.String)>("Value for assignment is null, can\'t enhance statement to bytecode.") 

(declare-const var842!1 var3694)
(declare-const var2707 String)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1994-to-var1636=([org.apache.ibatis.ognl.ASTAssign], org.apache.ibatis.ognl.SimpleNode), var2998_toSetSourceString/1208257022=([org.apache.ibatis.ognl.JavaSource, org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.String), cast-from-var3306-to-var2998=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.JavaSource), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3694-init=([], org.apache.ibatis.ognl.enhance.UnsupportedCompilationException), <init>/-388668559=([org.apache.ibatis.ognl.enhance.UnsupportedCompilationException, java.lang.String], void)}
; {var1994=org.apache.ibatis.ognl.ASTAssign, var2922=r1, var1090=org.apache.ibatis.ognl.OgnlContext, var3943=r3, var2979=java.lang.Object, var1346=r4, var198=$r0, var3787=$r7, var3306=org.apache.ibatis.ognl.Node, var1636=org.apache.ibatis.ognl.SimpleNode, var545=$r2, var1244=$r5, var2998=org.apache.ibatis.ognl.JavaSource, var3982=$r6, var1696=$r8, var1230=r53, var3096=$r9, var3026=$r10, var1822=$z0, var870=$r11, var3105=$r12, var343=$r52, var2968=r54, var2847=null_type, var3694=org.apache.ibatis.ognl.enhance.UnsupportedCompilationException, var842=$r43, var2707="Value for assignment is null, can\'t enhance statement to bytecode."}
; {org.apache.ibatis.ognl.ASTAssign=var1994, r1=var2922, org.apache.ibatis.ognl.OgnlContext=var1090, r3=var3943, java.lang.Object=var2979, r4=var1346, $r0=var198, $r7=var3787, org.apache.ibatis.ognl.Node=var3306, org.apache.ibatis.ognl.SimpleNode=var1636, $r2=var545, $r5=var1244, org.apache.ibatis.ognl.JavaSource=var2998, $r6=var3982, $r8=var1696, r53=var1230, $r9=var3096, $r10=var3026, $z0=var1822, $r11=var870, $r12=var3105, $r52=var343, r54=var2968, null_type=var2847, org.apache.ibatis.ognl.enhance.UnsupportedCompilationException=var3694, $r43=var842, "Value for assignment is null, can\'t enhance statement to bytecode."=var2707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTAssign;	r3 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r4 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r2 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r5 = $r2[0];	$r6 = interfaceinvoke $r5.<org.apache.ibatis.ognl.Node: java.lang.String toSetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r3, r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	r53 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r10 = $r9[1];	$z0 = $r10 instanceof org.apache.ibatis.ognl.ASTProperty;	if $z0 == 0 goto $r11 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r11 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r12 = $r11[1];	$r52 = interfaceinvoke $r12.<org.apache.ibatis.ognl.Node: java.lang.String toSetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r3, r4);	r54 = $r52;	if $r52 != null goto $r16 = class "Lorg/apache/ibatis/ognl/ASTSequence;";	$r43 = new org.apache.ibatis.ognl.enhance.UnsupportedCompilationException;	specialinvoke $r43.<org.apache.ibatis.ognl.enhance.UnsupportedCompilationException: void <init>(java.lang.String)>("Value for assignment is null, can\'t enhance statement to bytecode.");	throw $r43
;block_num 3