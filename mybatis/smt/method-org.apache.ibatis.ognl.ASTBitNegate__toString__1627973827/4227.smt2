(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort var1004 0)
(declare-sort var2511 0)
(declare-sort var3996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var2511) (Array Int var1004))
(declare-fun cast-from-var2627-to-var2511 (var2627) var2511)
(declare-fun append/-1031950772 (String var3996) String)
(declare-fun cast-from-var1004-to-var3996 (var1004) var3996)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2627 var2627)
(declare-const var842 var2627) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTBitNegate 
(assert (not (= var842 null-var2627)))
(define-const var1815 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1815)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1815!1 String)
(assert (= var1815!1 ""))
(assert true)
(define-const var949 String (append/672562846 var1815!1 "~")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~") 
(declare-const var1815!2 String)
(assert (= var1815!2 (str.++ var1815!1 "~")))
(define-const var840 (Array Int var1004) (children/1926309034 (cast-from-var2627-to-var2511 var842))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var2896 var1004 (select var840 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var3308 String (append/-1031950772 var949 (cast-from-var1004-to-var3996 var2896))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var949!1 String)
(assert (str.prefixof var949 var949!1))
(assert true)
(define-const var1464 String (toString/-2075883882 var3308)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var2627-to-var2511=([org.apache.ibatis.ognl.ASTBitNegate], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1004-to-var3996=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2627=org.apache.ibatis.ognl.ASTBitNegate, var842=r1, var1815=$r0, var949=$r4, var1004=org.apache.ibatis.ognl.Node, var2511=org.apache.ibatis.ognl.SimpleNode, var840=$r2, var2896=$r3, var3996=java.lang.Object, var3308=$r5, var1464=$r6}
; {org.apache.ibatis.ognl.ASTBitNegate=var2627, r1=var842, $r0=var1815, $r4=var949, org.apache.ibatis.ognl.Node=var1004, org.apache.ibatis.ognl.SimpleNode=var2511, $r2=var840, $r3=var2896, java.lang.Object=var3996, $r5=var3308, $r6=var1464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTBitNegate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~");	$r2 = r1.<org.apache.ibatis.ognl.ASTBitNegate: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1