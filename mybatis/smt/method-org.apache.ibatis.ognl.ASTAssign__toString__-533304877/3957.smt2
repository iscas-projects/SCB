(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3459 0)
(declare-sort var3181 0)
(declare-sort var3398 0)
(declare-sort var2649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun children/1926309034 (var3398) (Array Int var3181))
(declare-fun cast-from-var3459-to-var3398 (var3459) var3398)
(declare-fun append/-1031950772 (String var2649) String)
(declare-fun cast-from-var3181-to-var2649 (var3181) var2649)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3459 var3459)
(declare-const var1119 var3459) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTAssign 
(assert (not (= var1119 null-var3459)))
(define-const var3895 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3895)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3895!1 String)
(assert (= var3895!1 ""))
(define-const var136 (Array Int var3181) (children/1926309034 (cast-from-var3459-to-var3398 var1119))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var3859 var3181 (select var136 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var2252 String (append/-1031950772 var3895!1 (cast-from-var3181-to-var2649 var3859))) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3895!2 String)
(assert (str.prefixof var3895!1 var3895!2))
(assert true)
(define-const var2510 String (append/672562846 var2252 " = ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var2252!1 String)
(assert (= var2252!1 (str.++ var2252 " = ")))
(define-const var1042 (Array Int var3181) (children/1926309034 (cast-from-var3459-to-var3398 var1119))) ; Statement: $r5 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children> 
(define-const var764 var3181 (select var1042 1)) ; Statement: $r6 = $r5[1] 
(assert true)
(define-const var3335 String (append/-1031950772 var2510 (cast-from-var3181-to-var2649 var764))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2510!1 String)
(assert (str.prefixof var2510 var2510!1))
(assert true)
(define-const var3631 String (toString/-2075883882 var3335)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var3459-to-var3398=([org.apache.ibatis.ognl.ASTAssign], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3181-to-var2649=([org.apache.ibatis.ognl.Node], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3459=org.apache.ibatis.ognl.ASTAssign, var1119=r1, var3895=$r0, var3181=org.apache.ibatis.ognl.Node, var3398=org.apache.ibatis.ognl.SimpleNode, var136=$r2, var3859=$r3, var2649=java.lang.Object, var2252=$r4, var2510=$r7, var1042=$r5, var764=$r6, var3335=$r8, var3631=$r9}
; {org.apache.ibatis.ognl.ASTAssign=var3459, r1=var1119, $r0=var3895, org.apache.ibatis.ognl.Node=var3181, org.apache.ibatis.ognl.SimpleNode=var3398, $r2=var136, $r3=var3859, java.lang.Object=var2649, $r4=var2252, $r7=var2510, $r5=var1042, $r6=var764, $r8=var3335, $r9=var3631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTAssign;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r5 = r1.<org.apache.ibatis.ognl.ASTAssign: org.apache.ibatis.ognl.Node[] children>;	$r6 = $r5[1];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1