(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1933 0)
(declare-sort var3334 0)
(declare-sort var1914 0)
(declare-sort var1832 0)
(declare-sort var150 0)
(declare-sort var2973 0)
(declare-sort var644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun children/1926309034 (var150) (Array Int var1832))
(declare-fun cast-from-var1933-to-var150 (var1933) var150)
(declare-fun var2973_toGetSourceString/-130953230 (var2973 var3334 var1914) String)
(declare-fun cast-from-var1832-to-var2973 (var1832) var2973)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun coerceToNumeric/-847887440 (var644 String var3334 var1832) String)
(declare-fun cast-from-var1933-to-var644 (var1933) var644)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1933 var1933)
(declare-const null-var3334 var3334)
(declare-const null-var1914 var1914)
(declare-const var931 var1933) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTBitNegate 
(assert (not (= var931 null-var1933)))
(declare-const var3946 var3334) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3946 null-var3334)))
(declare-const var173 var1914) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var173 null-var1914)))
(define-const var1321 (Array Int var1832) (children/1926309034 (cast-from-var1933-to-var150 var931))) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var3503 var1832 (select var1321 0)) ; Statement: $r4 = $r1[0] 
(define-const var3269 String (var2973_toGetSourceString/-130953230 (cast-from-var1832-to-var2973 var3503) var3946 var173)) ; Statement: r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3) 
(define-const var1077 (Array Int var1832) (children/1926309034 (cast-from-var1933-to-var150 var931))) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var2344 var1832 (select var1077 0)) ; Statement: $r7 = $r6[0] 
(define-const var2598 Bool true) ; Statement: $z0 = $r7 instanceof org.apache.ibatis.ognl.ASTBitNegate 
 ; Statement: if $z0 != 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (not (= (ite var2598 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1455 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1455)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1455!1 String)
(assert (= var1455!1 ""))
(assert true)
(define-const var1765 String (append/672562846 var1455!1 "~(")) ; Statement: $r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~(") 
(declare-const var1455!2 String)
(assert (= var1455!2 (str.++ var1455!1 "~(")))
(define-const var2534 (Array Int var1832) (children/1926309034 (cast-from-var1933-to-var150 var931))) ; Statement: $r14 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var1901 var1832 (select var2534 0)) ; Statement: $r15 = $r14[0] 
(assert true)
(define-const var1295 String (coerceToNumeric/-847887440 (cast-from-var1933-to-var644 var931) var3269 var3946 var1901)) ; Statement: $r16 = specialinvoke r0.<org.apache.ibatis.ognl.NumericExpression: java.lang.String coerceToNumeric(java.lang.String,org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node)>(r5, r2, $r15) 
(assert true)
(define-const var1186 String (append/672562846 var1765 var1295)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1765!1 String)
(assert (= var1765!1 (str.++ var1765 var1295)))
(assert true)
(define-const var1213 String (append/672562846 var1186 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1186!1 String)
(assert (= var1186!1 (str.++ var1186 ")")))
(assert true)
(define-const var3067 String (toString/-2075883882 var1213)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1933-to-var150=([org.apache.ibatis.ognl.ASTBitNegate], org.apache.ibatis.ognl.SimpleNode), var2973_toGetSourceString/-130953230=([org.apache.ibatis.ognl.JavaSource, org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.String), cast-from-var1832-to-var2973=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.JavaSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), coerceToNumeric/-847887440=([org.apache.ibatis.ognl.NumericExpression, java.lang.String, org.apache.ibatis.ognl.OgnlContext, org.apache.ibatis.ognl.Node], java.lang.String), cast-from-var1933-to-var644=([org.apache.ibatis.ognl.ASTBitNegate], org.apache.ibatis.ognl.NumericExpression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1933=org.apache.ibatis.ognl.ASTBitNegate, var931=r0, var3334=org.apache.ibatis.ognl.OgnlContext, var3946=r2, var1914=java.lang.Object, var173=r3, var1832=org.apache.ibatis.ognl.Node, var150=org.apache.ibatis.ognl.SimpleNode, var1321=$r1, var3503=$r4, var2973=org.apache.ibatis.ognl.JavaSource, var3269=r5, var1077=$r6, var2344=$r7, var2598=$z0, var1455=$r13, var1765=$r17, var2534=$r14, var1901=$r15, var644=org.apache.ibatis.ognl.NumericExpression, var1295=$r16, var1186=$r18, var1213=$r19, var3067=$r20}
; {org.apache.ibatis.ognl.ASTBitNegate=var1933, r0=var931, org.apache.ibatis.ognl.OgnlContext=var3334, r2=var3946, java.lang.Object=var1914, r3=var173, org.apache.ibatis.ognl.Node=var1832, org.apache.ibatis.ognl.SimpleNode=var150, $r1=var1321, $r4=var3503, org.apache.ibatis.ognl.JavaSource=var2973, r5=var3269, $r6=var1077, $r7=var2344, $z0=var2598, $r13=var1455, $r17=var1765, $r14=var2534, $r15=var1901, org.apache.ibatis.ognl.NumericExpression=var644, $r16=var1295, $r18=var1186, $r19=var1213, $r20=var3067}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTBitNegate;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children>;	$r4 = $r1[0];	r5 = interfaceinvoke $r4.<org.apache.ibatis.ognl.Node: java.lang.String toGetSourceString(org.apache.ibatis.ognl.OgnlContext,java.lang.Object)>(r2, r3);	$r6 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[0];	$z0 = $r7 instanceof org.apache.ibatis.ognl.ASTBitNegate;	if $z0 != 0 goto $r8 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~(");	$r14 = r0.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children>;	$r15 = $r14[0];	$r16 = specialinvoke r0.<org.apache.ibatis.ognl.NumericExpression: java.lang.String coerceToNumeric(java.lang.String,org.apache.ibatis.ognl.OgnlContext,org.apache.ibatis.ognl.Node)>(r5, r2, $r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 2