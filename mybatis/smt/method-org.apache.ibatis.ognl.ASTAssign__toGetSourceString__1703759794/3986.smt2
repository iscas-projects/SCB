(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1310 0)
(declare-sort var612 0)
(declare-sort var1337 0)
(declare-sort var837 0)
(declare-sort var1478 0)
(declare-sort var3310 0)
(declare-sort var286 0)
(declare-sort var2406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var286!class ClassObject)
(declare-const var2406!class ClassObject)
(declare-fun children/1926309034 (var1478) (Array Int var837))
(declare-fun cast-from-var1310-to-var1478 (var1310) var1478)
(declare-fun var3310_toGetSourceString/-130953230 (var3310 var612 var1337) String)
(declare-fun cast-from-var837-to-var3310 (var837) var3310)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getClass/1258963082 (var1337) ClassObject)
(declare-fun cast-from-var837-to-var1337 (var837) var1337)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var1310 var1310)
(declare-const null-var612 var612)
(declare-const null-var1337 var1337)
(declare-const var2975 var1310) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTAssign 
(assert (not (= var2975 null-var1310)))
(declare-const var782 var612) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var782 null-var612)))
(declare-const var3194 var1337) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3194 null-var1337)))
(define-const var791 String "") ; Statement: r77 = "" 
(define-const var1978 (Array Int var837) (children/1926309034 (cast-from-var1310-to-var1478 var2975))) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var1085 var837 (select var1978 0)) ; Statement: $r4 = $r1[0] 
(define-const var1784 String (var3310_toGetSourceString/-130953230 (cast-from-var837-to-var3310 var1085) var782 var3194)) ; Statement: r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3) 
(define-const var3478 String "") ; Statement: r78 = "" 
(define-const var1486 (Array Int var837) (children/1926309034 (cast-from-var1310-to-var1478 var2975))) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var2413 var837 (select var1486 1)) ; Statement: $r7 = $r6[1] 
(define-const var2006 Bool true) ; Statement: $z0 = $r7 instanceof org.apache.ibatis.ognl.ASTProperty 
 ; Statement: if $z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (= (ite var2006 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1776 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1776)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1776!1 String)
(assert (= var1776!1 ""))
(assert true)
(define-const var1622 String (append/672562846 var1776!1 var3478)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r78) 
(declare-const var1776!2 String)
(assert (= var1776!2 (str.++ var1776!1 var3478)))
(define-const var340 (Array Int var837) (children/1926309034 (cast-from-var1310-to-var1478 var2975))) ; Statement: $r9 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var745 var837 (select var340 1)) ; Statement: $r10 = $r9[1] 
(define-const var2095 String (var3310_toGetSourceString/-130953230 (cast-from-var837-to-var3310 var745) var782 var3194)) ; Statement: $r11 = interfaceinvoke $r10.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3) 
(assert true)
(define-const var1774 String (append/672562846 var1622 var2095)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1622!1 String)
(assert (= var1622!1 (str.++ var1622 var2095)))
(assert true)
(define-const var3822 String (toString/-2075883882 var1774)) ; Statement: r79 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3085 ClassObject var286!class) ; Statement: $r17 = class "Lorg/apache/ibatis/ognl/ASTSequence;" 
(define-const var1002 (Array Int var837) (children/1926309034 (cast-from-var1310-to-var1478 var2975))) ; Statement: $r14 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var1771 var837 (select var1002 1)) ; Statement: $r15 = $r14[1] 
(assert true)
(define-const var1290 ClassObject (getClass/1258963082 (cast-from-var837-to-var1337 var1771))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3768 Bool (isAssignableFrom/-1028998700 var3085 var1290)) ; Statement: $z1 = virtualinvoke $r17.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r16) 
 ; Statement: if $z1 == 0 goto $r81 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(assert (= (ite var3768 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1833 (Array Int var837) (children/1926309034 (cast-from-var1310-to-var1478 var2975))) ; Statement: $r81 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var14 var837 (select var1833 1)) ; Statement: $r82 = $r81[1] 
(define-const var1556 Bool true) ; Statement: $z5 = $r82 instanceof org.apache.ibatis.ognl.NodeType 
 ; Statement: if $z5 == 0 goto $r83 = class "Lorg/apache/ibatis/ognl/enhance/OrderedReturn;" 
(assert (= (ite var1556 1 0) 0)) ; Cond: $z5 == 0 
(define-const var491 ClassObject var2406!class) ; Statement: $r83 = class "Lorg/apache/ibatis/ognl/enhance/OrderedReturn;" 
(define-const var2924 (Array Int var837) (children/1926309034 (cast-from-var1310-to-var1478 var2975))) ; Statement: $r84 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var3210 var837 (select var2924 0)) ; Statement: $r85 = $r84[0] 
(assert true)
(define-const var3385 ClassObject (getClass/1258963082 (cast-from-var837-to-var1337 var3210))) ; Statement: $r86 = virtualinvoke $r85.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2988 Bool (isAssignableFrom/-1028998700 var491 var3385)) ; Statement: $z6 = virtualinvoke $r83.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r86) 
 ; Statement: if $z6 == 0 goto return r77 
(assert (= (ite var2988 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return r77 
(check-sat)
(get-model)
(get-unsat-core)
; {children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1310-to-var1478=([org.apache.ibatis.ognl.ASTAssign], org.apache.ibatis.ognl.SimpleNode), var3310_toGetSourceString/-130953230=([org.apache.ibatis.ognl.JavaSource, org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.String), cast-from-var837-to-var3310=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.JavaSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var837-to-var1337=([org.apache.ibatis.ognl.Node], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var1310=org.apache.ibatis.ognl.ASTAssign, var2975=r0, var612=org.apache.ibatis.ognl.OgnlContext, var782=r2, var1337=java.lang.Object, var3194=r3, var791=r77, var837=org.apache.ibatis.ognl.Node, var1478=org.apache.ibatis.ognl.SimpleNode, var1978=$r1, var1085=$r4, var3310=org.apache.ibatis.ognl.JavaSource, var1784=r5, var3478=r78, var1486=$r6, var2413=$r7, var2006=$z0, var1776=$r8, var1622=$r12, var340=$r9, var745=$r10, var2095=$r11, var1774=$r13, var3822=r79, var286=org.apache.ibatis.ognl.ASTSequence, var3085=$r17, var1002=$r14, var1771=$r15, var1290=$r16, var3768=$z1, var1833=$r81, var14=$r82, var1556=$z5, var2406=org.apache.ibatis.ognl.enhance.OrderedReturn, var491=$r83, var2924=$r84, var3210=$r85, var3385=$r86, var2988=$z6}
; {org.apache.ibatis.ognl.ASTAssign=var1310, r0=var2975, org.apache.ibatis.ognl.OgnlContext=var612, r2=var782, java.lang.Object=var1337, r3=var3194, r77=var791, org.apache.ibatis.ognl.Node=var837, org.apache.ibatis.ognl.SimpleNode=var1478, $r1=var1978, $r4=var1085, org.apache.ibatis.ognl.JavaSource=var3310, r5=var1784, r78=var3478, $r6=var1486, $r7=var2413, $z0=var2006, $r8=var1776, $r12=var1622, $r9=var340, $r10=var745, $r11=var2095, $r13=var1774, r79=var3822, org.apache.ibatis.ognl.ASTSequence=var286, $r17=var3085, $r14=var1002, $r15=var1771, $r16=var1290, $z1=var3768, $r81=var1833, $r82=var14, $z5=var1556, org.apache.ibatis.ognl.enhance.OrderedReturn=var2406, $r83=var491, $r84=var2924, $r85=var3210, $r86=var3385, $z6=var2988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTAssign;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	r77 = "";	$r1 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r4 = $r1[0];	r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3);	r78 = "";	$r6 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[1];	$z0 = $r7 instanceof org.apache.ibatis.ognl.ASTProperty;	if $z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r78);	$r9 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r10 = $r9[1];	$r11 = interfaceinvoke $r10.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	r79 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = class "Lorg/apache/ibatis/ognl/ASTSequence;";	$r14 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r15 = $r14[1];	$r16 = virtualinvoke $r15.<java.lang.Object: java.lang.Class getClass()>();	$z1 = virtualinvoke $r17.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r16);	if $z1 == 0 goto $r81 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r81 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r82 = $r81[1];	$z5 = $r82 instanceof org.apache.ibatis.ognl.NodeType;	if $z5 == 0 goto $r83 = class "Lorg/apache/ibatis/ognl/enhance/OrderedReturn;";	$r83 = class "Lorg/apache/ibatis/ognl/enhance/OrderedReturn;";	$r84 = r0.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r85 = $r84[0];	$r86 = virtualinvoke $r85.<java.lang.Object: java.lang.Class getClass()>();	$z6 = virtualinvoke $r83.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r86);	if $z6 == 0 goto return r77;	return r77
;block_num 5