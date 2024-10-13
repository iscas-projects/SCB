(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var798 0)
(declare-sort var2800 0)
(declare-sort var859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-784408160 (var798) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun isArray/-784408160 (var798) Bool)
(declare-fun children/1926309034 (var859) (Array Int var2800))
(declare-fun cast-from-var798-to-var859 (var798) var859)
(declare-const null-var798 var798)
(declare-const null-__Array__Int__var2800__ (Array Int var2800))
(declare-const var1899 var798) ; Statement: r2 := @this: org.apache.ibatis.ognl.ASTCtor 
(assert (not (= var1899 null-var798)))
(define-const var2456 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1341 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1341)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1341!1 String)
(assert (= var1341!1 ""))
(assert true)
(define-const var3118 String (append/672562846 var1341!1 "new ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ") 
(declare-const var1341!2 String)
(assert (= var1341!2 (str.++ var1341!1 "new ")))
(define-const var13 String (className/-784408160 var1899)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className> 
(assert true)
(define-const var2920 String (append/672562846 var3118 var13)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 var13)))
(assert true)
(define-const var2418 String (toString/-2075883882 var2920)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2456 var2418)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6) 
(declare-const var2456!1 String)
(assert (= var2456!1 var2418))
(define-const var2254 Bool (isArray/-784408160 var1899)) ; Statement: $z0 = r2.<org.apache.ibatis.ognl.ASTCtor: boolean isArray> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(assert (= (ite var2254 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2456!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2456!2 String)
(assert (= var2456!2 (str.++ var2456!1 "(")))
(define-const var318 (Array Int var2800) (children/1926309034 (cast-from-var798-to-var859 var1899))) ; Statement: $r7 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= var318 null-__Array__Int__var2800__)) ; Cond: $r7 == null 
(assert true)
;(assert (append/672562846 var2456!2 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2456!3 String)
(assert (= var2456!3 (str.++ var2456!2 ")")))
(assert true) ; Non Conditional
(assert true)
(define-const var275 String (toString/-2075883882 var2456!3)) ; Statement: $r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-784408160=([org.apache.ibatis.ognl.ASTCtor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), isArray/-784408160=([org.apache.ibatis.ognl.ASTCtor], boolean), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var798-to-var859=([org.apache.ibatis.ognl.ASTCtor], org.apache.ibatis.ognl.SimpleNode)}
; {var798=org.apache.ibatis.ognl.ASTCtor, var1899=r2, var2456=$r0, var1341=$r1, var3118=$r4, var13=$r3, var2920=$r5, var2418=$r6, var2254=$z0, var2800=org.apache.ibatis.ognl.Node, var859=org.apache.ibatis.ognl.SimpleNode, var318=$r7, var275=$r21}
; {org.apache.ibatis.ognl.ASTCtor=var798, r2=var1899, $r0=var2456, $r1=var1341, $r4=var3118, $r3=var13, $r5=var2920, $r6=var2418, $z0=var2254, org.apache.ibatis.ognl.Node=var2800, org.apache.ibatis.ognl.SimpleNode=var859, $r7=var318, $r21=var275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ASTCtor;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new ");	$r3 = r2.<org.apache.ibatis.ognl.ASTCtor: java.lang.String className>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6);	$z0 = r2.<org.apache.ibatis.ognl.ASTCtor: boolean isArray>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r7 = r2.<org.apache.ibatis.ognl.ASTCtor: org.apache.ibatis.ognl.Node[] children>;	if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r21 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 4