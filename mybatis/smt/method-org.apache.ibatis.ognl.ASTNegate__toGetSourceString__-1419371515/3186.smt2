(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1092 0)
(declare-sort var1026 0)
(declare-sort var403 0)
(declare-sort var3914 0)
(declare-sort var1295 0)
(declare-sort var1553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun children/1926309034 (var1295) (Array Int var3914))
(declare-fun cast-from-var1092-to-var1295 (var1092) var1295)
(declare-fun var1553_toGetSourceString/-130953230 (var1553 var1026 var403) String)
(declare-fun cast-from-var3914-to-var1553 (var3914) var1553)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1092 var1092)
(declare-const null-var1026 var1026)
(declare-const null-var403 var403)
(declare-const var37 var1092) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTNegate 
(assert (not (= var37 null-var1092)))
(declare-const var1695 var1026) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1695 null-var1026)))
(declare-const var2485 var403) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2485 null-var403)))
(define-const var1521 (Array Int var3914) (children/1926309034 (cast-from-var1092-to-var1295 var37))) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var1143 var3914 (select var1521 0)) ; Statement: $r4 = $r1[0] 
(define-const var2863 String (var1553_toGetSourceString/-130953230 (cast-from-var3914-to-var1553 var1143) var1695 var2485)) ; Statement: r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3) 
(define-const var2219 (Array Int var3914) (children/1926309034 (cast-from-var1092-to-var1295 var37))) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var1932 var3914 (select var2219 0)) ; Statement: $r7 = $r6[0] 
(define-const var1994 Bool true) ; Statement: $z0 = $r7 instanceof org.apache.ibatis.ognl.ASTNegate 
 ; Statement: if $z0 != 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1994 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2583 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2583)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2583!1 String)
(assert (= var2583!1 ""))
(assert true)
(define-const var1196 String (append/672562846 var2583!1 "-")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2583!2 String)
(assert (= var2583!2 (str.++ var2583!1 "-")))
(assert true)
(define-const var3493 String (append/672562846 var1196 var2863)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1196!1 String)
(assert (= var1196!1 (str.++ var1196 var2863)))
(assert true)
(define-const var1896 String (toString/-2075883882 var3493)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1092-to-var1295=([org.apache.ibatis.ognl.ASTNegate], org.apache.ibatis.ognl.SimpleNode), var1553_toGetSourceString/-130953230=([org.apache.ibatis.ognl.JavaSource, org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.String), cast-from-var3914-to-var1553=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.JavaSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1092=org.apache.ibatis.ognl.ASTNegate, var37=r0, var1026=org.apache.ibatis.ognl.OgnlContext, var1695=r2, var403=java.lang.Object, var2485=r3, var3914=org.apache.ibatis.ognl.Node, var1295=org.apache.ibatis.ognl.SimpleNode, var1521=$r1, var1143=$r4, var1553=org.apache.ibatis.ognl.JavaSource, var2863=r5, var2219=$r6, var1932=$r7, var1994=$z0, var2583=$r13, var1196=$r14, var3493=$r15, var1896=$r16}
; {org.apache.ibatis.ognl.ASTNegate=var1092, r0=var37, org.apache.ibatis.ognl.OgnlContext=var1026, r2=var1695, java.lang.Object=var403, r3=var2485, org.apache.ibatis.ognl.Node=var3914, org.apache.ibatis.ognl.SimpleNode=var1295, $r1=var1521, $r4=var1143, org.apache.ibatis.ognl.JavaSource=var1553, r5=var2863, $r6=var2219, $r7=var1932, $z0=var1994, $r13=var2583, $r14=var1196, $r15=var3493, $r16=var1896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTNegate;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children>;	$r4 = $r1[0];	r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3);	$r6 = r0.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[0];	$z0 = $r7 instanceof org.apache.ibatis.ognl.ASTNegate;	if $z0 != 0 goto $r8 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2