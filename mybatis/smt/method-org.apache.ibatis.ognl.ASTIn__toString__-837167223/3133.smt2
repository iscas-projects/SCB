(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var883 0)
(declare-sort var238 0)
(declare-sort var753 0)
(declare-sort var1601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun children/1926309034 (var753) (Array Int var238))
(declare-fun cast-from-var883-to-var753 (var883) var753)
(declare-fun append/-1031950772 (String var1601) String)
(declare-fun cast-from-var238-to-var1601 (var238) var1601)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var883 var883)
(declare-const var984 var883) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTIn 
(assert (not (= var984 null-var883)))
(define-const var1002 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1002)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1002!1 String)
(assert (= var1002!1 ""))
(define-const var2348 (Array Int var238) (children/1926309034 (cast-from-var883-to-var753 var984))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTIn: org.apache.ibatis.ognl.Node[] children> 
(define-const var2065 var238 (select var2348 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var307 String (append/-1031950772 var1002!1 (cast-from-var238-to-var1601 var2065))) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1002!2 String)
(assert (str.prefixof var1002!1 var1002!2))
(assert true)
(define-const var97 String (append/672562846 var307 " in ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var307!1 String)
(assert (= var307!1 (str.++ var307 " in ")))
(define-const var3951 (Array Int var238) (children/1926309034 (cast-from-var883-to-var753 var984))) ; Statement: $r5 = r1.<org.apache.ibatis.ognl.ASTIn: org.apache.ibatis.ognl.Node[] children> 
(define-const var2096 var238 (select var3951 1)) ; Statement: $r6 = $r5[1] 
(assert true)
(define-const var2444 String (append/-1031950772 var97 (cast-from-var238-to-var1601 var2096))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var97!1 String)
(assert (str.prefixof var97 var97!1))
(assert true)
(define-const var2647 String (toString/-2075883882 var2444)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var883-to-var753=([org.apache.ibatis.ognl.ASTIn], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var238-to-var1601=([org.apache.ibatis.ognl.Node], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var883=org.apache.ibatis.ognl.ASTIn, var984=r1, var1002=$r0, var238=org.apache.ibatis.ognl.Node, var753=org.apache.ibatis.ognl.SimpleNode, var2348=$r2, var2065=$r3, var1601=java.lang.Object, var307=$r4, var97=$r7, var3951=$r5, var2096=$r6, var2444=$r8, var2647=$r9}
; {org.apache.ibatis.ognl.ASTIn=var883, r1=var984, $r0=var1002, org.apache.ibatis.ognl.Node=var238, org.apache.ibatis.ognl.SimpleNode=var753, $r2=var2348, $r3=var2065, java.lang.Object=var1601, $r4=var307, $r7=var97, $r5=var3951, $r6=var2096, $r8=var2444, $r9=var2647}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTIn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTIn: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r5 = r1.<org.apache.ibatis.ognl.ASTIn: org.apache.ibatis.ognl.Node[] children>;	$r6 = $r5[1];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1