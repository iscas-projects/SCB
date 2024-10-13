(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var323 0)
(declare-sort var1896 0)
(declare-sort var3873 0)
(declare-sort var1135 0)
(declare-sort var3664 0)
(declare-sort var2351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun children/1926309034 (var3664) (Array Int var1135))
(declare-fun cast-from-var323-to-var3664 (var323) var3664)
(declare-fun var2351_toGetSourceString/-130953230 (var2351 var1896 var3873) String)
(declare-fun cast-from-var1135-to-var2351 (var1135) var2351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var323 var323)
(declare-const null-var1896 var1896)
(declare-const null-var3873 var3873)
(declare-const var2258 var323) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTNegate 
(assert (not (= var2258 null-var323)))
(declare-const var2196 var1896) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2196 null-var1896)))
(declare-const var582 var3873) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var582 null-var3873)))
(define-const var1406 (Array Int var1135) (children/1926309034 (cast-from-var323-to-var3664 var2258))) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var2312 var1135 (select var1406 0)) ; Statement: $r4 = $r1[0] 
(define-const var2389 String (var2351_toGetSourceString/-130953230 (cast-from-var1135-to-var2351 var2312) var2196 var582)) ; Statement: r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3) 
(define-const var107 (Array Int var1135) (children/1926309034 (cast-from-var323-to-var3664 var2258))) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var3150 var1135 (select var107 0)) ; Statement: $r7 = $r6[0] 
(define-const var1633 Bool true) ; Statement: $z0 = $r7 instanceof org.apache.ibatis.ognl.ASTNegate 
 ; Statement: if $z0 != 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var1633 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2766 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2766)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2766!1 String)
(assert (= var2766!1 ""))
(assert true)
(define-const var2902 String (append/672562846 var2766!1 "-(")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-(") 
(declare-const var2766!2 String)
(assert (= var2766!2 (str.++ var2766!1 "-(")))
(assert true)
(define-const var464 String (append/672562846 var2902 var2389)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2902!1 String)
(assert (= var2902!1 (str.++ var2902 var2389)))
(assert true)
(define-const var3338 String (append/672562846 var464 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var464!1 String)
(assert (= var464!1 (str.++ var464 ")")))
(assert true)
(define-const var1665 String (toString/-2075883882 var3338)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var323-to-var3664=([org.apache.ibatis.ognl.ASTNegate], org.apache.ibatis.ognl.SimpleNode), var2351_toGetSourceString/-130953230=([org.apache.ibatis.ognl.JavaSource, org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.String), cast-from-var1135-to-var2351=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.JavaSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var323=org.apache.ibatis.ognl.ASTNegate, var2258=r0, var1896=org.apache.ibatis.ognl.OgnlContext, var2196=r2, var3873=java.lang.Object, var582=r3, var1135=org.apache.ibatis.ognl.Node, var3664=org.apache.ibatis.ognl.SimpleNode, var1406=$r1, var2312=$r4, var2351=org.apache.ibatis.ognl.JavaSource, var2389=r5, var107=$r6, var3150=$r7, var1633=$z0, var2766=$r8, var2902=$r9, var464=$r10, var3338=$r11, var1665=$r12}
; {org.apache.ibatis.ognl.ASTNegate=var323, r0=var2258, org.apache.ibatis.ognl.OgnlContext=var1896, r2=var2196, java.lang.Object=var3873, r3=var582, org.apache.ibatis.ognl.Node=var1135, org.apache.ibatis.ognl.SimpleNode=var3664, $r1=var1406, $r4=var2312, org.apache.ibatis.ognl.JavaSource=var2351, r5=var2389, $r6=var107, $r7=var3150, $z0=var1633, $r8=var2766, $r9=var2902, $r10=var464, $r11=var3338, $r12=var1665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTNegate;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children>;	$r4 = $r1[0];	r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3);	$r6 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[0];	$z0 = $r7 instanceof org.apache.ibatis.ognl.ASTNegate;	if $z0 != 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-(");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2