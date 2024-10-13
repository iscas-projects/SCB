(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1410 0)
(declare-sort var40 0)
(declare-sort var1164 0)
(declare-sort var722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-784408160 (var1410) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun isArray/-784408160 (var1410) Bool)
(declare-fun children/1926309034 (var1164) (Array Int var40))
(declare-fun cast-from-var1410-to-var1164 (var1410) var1164)
(declare-fun append/-1031950772 (String var722) String)
(declare-fun cast-from-var40-to-var722 (var40) var722)
(declare-const null-var1410 var1410)
(declare-const var3349 var1410) ; Statement: r2 := @this: org.apache.ibatis.ognl.ASTCtor 
(assert (not (= var3349 null-var1410)))
(define-const var1262 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2794 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2794)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2794!1 String)
(assert (= var2794!1 ""))
(assert true)
(define-const var2012 String (append/672562846 var2794!1 "new ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ") 
(declare-const var2794!2 String)
(assert (= var2794!2 (str.++ var2794!1 "new ")))
(define-const var1128 String (className/-784408160 var3349)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className> 
(assert true)
(define-const var846 String (append/672562846 var2012 var1128)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2012!1 String)
(assert (= var2012!1 (str.++ var2012 var1128)))
(assert true)
(define-const var2057 String (toString/-2075883882 var846)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1262 var2057)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6) 
(declare-const var1262!1 String)
(assert (= var1262!1 var2057))
(define-const var1527 Bool (isArray/-784408160 var3349)) ; Statement: $z0 = r2.<org.apache.ibatis.ognl.ASTCtor: boolean isArray> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(assert (not (= (ite var1527 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3033 (Array Int var40) (children/1926309034 (cast-from-var1410-to-var1164 var3349))) ; Statement: $r12 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children> 
(define-const var2089 var40 (select var3033 0)) ; Statement: $r13 = $r12[0] 
(define-const var3869 Bool true) ; Statement: $z1 = $r13 instanceof org.apache.ibatis.ognl.ASTConst 
 ; Statement: if $z1 == 0 goto $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] ") 
(assert (not (= (ite var3869 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var847 String (append/672562846 var1262!1 "[")) ; Statement: $r19 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1262!2 String)
(assert (= var1262!2 (str.++ var1262!1 "[")))
(define-const var226 (Array Int var40) (children/1926309034 (cast-from-var1410-to-var1164 var3349))) ; Statement: $r17 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children> 
(define-const var1876 var40 (select var226 0)) ; Statement: $r18 = $r17[0] 
(assert true)
(define-const var700 String (append/-1031950772 var847 (cast-from-var40-to-var722 var1876))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var847!1 String)
(assert (str.prefixof var847 var847!1))
(assert true)
;(assert (append/672562846 var700 "]")) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var700!1 String)
(assert (= var700!1 (str.++ var700 "]")))
 ; Statement: goto [?= $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var103 String (toString/-2075883882 var1262!2)) ; Statement: $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-784408160=([org.apache.ibatis.ognl.ASTCtor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), isArray/-784408160=([org.apache.ibatis.ognl.ASTCtor], boolean), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1410-to-var1164=([org.apache.ibatis.ognl.ASTCtor], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var40-to-var722=([org.apache.ibatis.ognl.Node], java.lang.Object)}
; {var1410=org.apache.ibatis.ognl.ASTCtor, var3349=r2, var1262=$r0, var2794=$r1, var2012=$r4, var1128=$r3, var846=$r5, var2057=$r6, var1527=$z0, var40=org.apache.ibatis.ognl.Node, var1164=org.apache.ibatis.ognl.SimpleNode, var3033=$r12, var2089=$r13, var3869=$z1, var847=$r19, var226=$r17, var1876=$r18, var722=java.lang.Object, var700=$r20, var103=$r21}
; {org.apache.ibatis.ognl.ASTCtor=var1410, r2=var3349, $r0=var1262, $r1=var2794, $r4=var2012, $r3=var1128, $r5=var846, $r6=var2057, $z0=var1527, org.apache.ibatis.ognl.Node=var40, org.apache.ibatis.ognl.SimpleNode=var1164, $r12=var3033, $r13=var2089, $z1=var3869, $r19=var847, $r17=var226, $r18=var1876, java.lang.Object=var722, $r20=var700, $r21=var103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ASTCtor;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ");	$r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6);	$z0 = r2.<org.apache.ibatis.ognl.ASTCtor: boolean isArray>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r12 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children>;	$r13 = $r12[0];	$z1 = $r13 instanceof org.apache.ibatis.ognl.ASTConst;	if $z1 == 0 goto $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[] ");	$r19 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r17 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children>;	$r18 = $r17[0];	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	goto [?= $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 4