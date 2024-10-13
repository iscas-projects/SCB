(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2378 0)
(declare-sort var2438 0)
(declare-sort var3978 0)
(declare-sort var562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1926309034 (var2378) Int)
(declare-fun append/-1031950772 (String var562) String)
(declare-fun cast-from-var2378-to-var562 (var2378) var562)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2378 var2378)
(declare-const null-String String)
(declare-const var3978-jjtNodeName (Array Int String))
(declare-const var160 var2378) ; Statement: r2 := @this: org.apache.ibatis.ognl.SimpleNode 
(assert (not (= var160 null-var2378)))
(declare-const var3657 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3657 null-String)))
(define-const var329 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var329)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var329!1 String)
(assert (= var329!1 ""))
(assert true)
(define-const var2920 String (append/672562846 var329!1 var3657)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var329!2 String)
(assert (= var329!2 (str.++ var329!1 var3657)))
(define-const var1574 (Array Int String) var3978-jjtNodeName) ; Statement: $r3 = <org.apache.ibatis.ognl.OgnlParserTreeConstants: java.lang.String[] jjtNodeName> 
(define-const var1766 Int (id/1926309034 var160)) ; Statement: $i0 = r2.<org.apache.ibatis.ognl.SimpleNode: int id> 
(define-const var3402 String (select var1574 var1766)) ; Statement: $r4 = $r3[$i0] 
(assert true)
(define-const var520 String (append/672562846 var2920 var3402)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2920!1 String)
(assert (= var2920!1 (str.++ var2920 var3402)))
(assert true)
(define-const var2464 String (append/672562846 var520 " ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var520!1 String)
(assert (= var520!1 (str.++ var520 " ")))
(assert true)
(define-const var2873 String (append/-1031950772 var2464 (cast-from-var2378-to-var562 var160))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2464!1 String)
(assert (str.prefixof var2464 var2464!1))
(assert true)
(define-const var1353 String (toString/-2075883882 var2873)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), id/1926309034=([org.apache.ibatis.ognl.SimpleNode], int), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2378-to-var562=([org.apache.ibatis.ognl.SimpleNode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2378=org.apache.ibatis.ognl.SimpleNode, var160=r2, var3657=r1, var2438=null_type, var329=$r0, var2920=$r5, var3978=org.apache.ibatis.ognl.OgnlParserTreeConstants, var1574=$r3, var1766=$i0, var3402=$r4, var520=$r6, var2464=$r7, var562=java.lang.Object, var2873=$r8, var1353=$r9}
; {org.apache.ibatis.ognl.SimpleNode=var2378, r2=var160, r1=var3657, null_type=var2438, $r0=var329, $r5=var2920, org.apache.ibatis.ognl.OgnlParserTreeConstants=var3978, $r3=var1574, $i0=var1766, $r4=var3402, $r6=var520, $r7=var2464, java.lang.Object=var562, $r8=var2873, $r9=var1353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.SimpleNode;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = <org.apache.ibatis.ognl.OgnlParserTreeConstants: java.lang.String[] jjtNodeName>;	$i0 = r2.<org.apache.ibatis.ognl.SimpleNode: int id>;	$r4 = $r3[$i0];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1