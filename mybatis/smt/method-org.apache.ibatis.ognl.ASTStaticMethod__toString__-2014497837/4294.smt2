(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1999 0)
(declare-sort var3226 0)
(declare-sort var2562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/1690391675 (var1999) String)
(declare-fun methodName/1690391675 (var1999) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun children/1926309034 (var2562) (Array Int var3226))
(declare-fun cast-from-var1999-to-var2562 (var1999) var2562)
(declare-const null-var1999 var1999)
(declare-const null-__Array__Int__var3226__ (Array Int var3226))
(declare-const var3842 var1999) ; Statement: r2 := @this: org.apache.ibatis.ognl.ASTStaticMethod 
(assert (not (= var3842 null-var1999)))
(define-const var2366 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var283 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var283)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var283!1 String)
(assert (= var283!1 ""))
(assert true)
(define-const var1131 String (append/672562846 var283!1 "@")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var283!2 String)
(assert (= var283!2 (str.++ var283!1 "@")))
(define-const var2480 String (className/1690391675 var3842)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String className> 
(assert true)
(define-const var330 String (append/672562846 var1131 var2480)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 var2480)))
(assert true)
(define-const var3858 String (append/672562846 var330 "@")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var330!1 String)
(assert (= var330!1 (str.++ var330 "@")))
(define-const var2994 String (methodName/1690391675 var3842)) ; Statement: $r6 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String methodName> 
(assert true)
(define-const var2182 String (append/672562846 var3858 var2994)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3858!1 String)
(assert (= var3858!1 (str.++ var3858 var2994)))
(assert true)
(define-const var2726 String (toString/-2075883882 var2182)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2366 var2726)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r9) 
(declare-const var2366!1 String)
(assert (= var2366!1 var2726))
(assert true)
;(assert (append/672562846 var2366!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2366!2 String)
(assert (= var2366!2 (str.++ var2366!1 "(")))
(define-const var381 (Array Int var3226) (children/1926309034 (cast-from-var1999-to-var2562 var3842))) ; Statement: $r10 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r10 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= var381 null-__Array__Int__var3226__)) ; Cond: $r10 == null 
(assert true)
;(assert (append/672562846 var2366!2 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2366!3 String)
(assert (= var2366!3 (str.++ var2366!2 ")")))
(assert true)
(define-const var483 String (toString/-2075883882 var2366!3)) ; Statement: $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/1690391675=([org.apache.ibatis.ognl.ASTStaticMethod], java.lang.String), methodName/1690391675=([org.apache.ibatis.ognl.ASTStaticMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1999-to-var2562=([org.apache.ibatis.ognl.ASTStaticMethod], org.apache.ibatis.ognl.SimpleNode)}
; {var1999=org.apache.ibatis.ognl.ASTStaticMethod, var3842=r2, var2366=$r0, var283=$r1, var1131=$r4, var2480=$r3, var330=$r5, var3858=$r7, var2994=$r6, var2182=$r8, var2726=$r9, var3226=org.apache.ibatis.ognl.Node, var2562=org.apache.ibatis.ognl.SimpleNode, var381=$r10, var483=$r15}
; {org.apache.ibatis.ognl.ASTStaticMethod=var1999, r2=var3842, $r0=var2366, $r1=var283, $r4=var1131, $r3=var2480, $r5=var330, $r7=var3858, $r6=var2994, $r8=var2182, $r9=var2726, org.apache.ibatis.ognl.Node=var3226, org.apache.ibatis.ognl.SimpleNode=var2562, $r10=var381, $r15=var483}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ASTStaticMethod;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r3 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String className>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r6 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: java.lang.String methodName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r9);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r10 = r2.<org.apache.ibatis.ognl.ASTStaticMethod: org.apache.ibatis.ognl.Node[] children>;	if $r10 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2