(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var121 0)
(declare-sort var2002 0)
(declare-sort var1317 0)
(declare-sort var2645 0)
(declare-sort var2274 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun children/1926309034 (var2274) (Array Int var2645))
(declare-fun cast-from-var121-to-var2274 (var121) var2274)
(declare-fun var3565_toGetSourceString/-130953230 (var3565 var2002 var1317) String)
(declare-fun cast-from-var2645-to-var3565 (var2645) var3565)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var121 var121)
(declare-const null-var2002 var2002)
(declare-const null-var1317 var1317)
(declare-const var269 var121) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTBitNegate 
(assert (not (= var269 null-var121)))
(declare-const var120 var2002) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var120 null-var2002)))
(declare-const var306 var1317) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var306 null-var1317)))
(define-const var1433 (Array Int var2645) (children/1926309034 (cast-from-var121-to-var2274 var269))) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var3979 var2645 (select var1433 0)) ; Statement: $r4 = $r1[0] 
(define-const var2092 String (var3565_toGetSourceString/-130953230 (cast-from-var2645-to-var3565 var3979) var120 var306)) ; Statement: r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3) 
(define-const var3792 (Array Int var2645) (children/1926309034 (cast-from-var121-to-var2274 var269))) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var3981 var2645 (select var3792 0)) ; Statement: $r7 = $r6[0] 
(define-const var2469 Bool true) ; Statement: $z0 = $r7 instanceof org.apache.ibatis.ognl.ASTBitNegate 
 ; Statement: if $z0 != 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var2469 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1667 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1667)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1667!1 String)
(assert (= var1667!1 ""))
(assert true)
(define-const var3632 String (append/672562846 var1667!1 "~(")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~(") 
(declare-const var1667!2 String)
(assert (= var1667!2 (str.++ var1667!1 "~(")))
(assert true)
(define-const var164 String (append/672562846 var3632 var2092)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3632!1 String)
(assert (= var3632!1 (str.++ var3632 var2092)))
(assert true)
(define-const var3385 String (append/672562846 var164 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var164!1 String)
(assert (= var164!1 (str.++ var164 ")")))
(assert true)
(define-const var1112 String (toString/-2075883882 var3385)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var121-to-var2274=([org.apache.ibatis.ognl.ASTBitNegate], org.apache.ibatis.ognl.SimpleNode), var3565_toGetSourceString/-130953230=([org.apache.ibatis.ognl.JavaSource, org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.String), cast-from-var2645-to-var3565=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.JavaSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var121=org.apache.ibatis.ognl.ASTBitNegate, var269=r0, var2002=org.apache.ibatis.ognl.OgnlContext, var120=r2, var1317=java.lang.Object, var306=r3, var2645=org.apache.ibatis.ognl.Node, var2274=org.apache.ibatis.ognl.SimpleNode, var1433=$r1, var3979=$r4, var3565=org.apache.ibatis.ognl.JavaSource, var2092=r5, var3792=$r6, var3981=$r7, var2469=$z0, var1667=$r8, var3632=$r9, var164=$r10, var3385=$r11, var1112=$r12}
; {org.apache.ibatis.ognl.ASTBitNegate=var121, r0=var269, org.apache.ibatis.ognl.OgnlContext=var2002, r2=var120, java.lang.Object=var1317, r3=var306, org.apache.ibatis.ognl.Node=var2645, org.apache.ibatis.ognl.SimpleNode=var2274, $r1=var1433, $r4=var3979, org.apache.ibatis.ognl.JavaSource=var3565, r5=var2092, $r6=var3792, $r7=var3981, $z0=var2469, $r8=var1667, $r9=var3632, $r10=var164, $r11=var3385, $r12=var1112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTBitNegate;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children>;	$r4 = $r1[0];	r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3);	$r6 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[0];	$z0 = $r7 instanceof org.apache.ibatis.ognl.ASTBitNegate;	if $z0 != 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~(");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2