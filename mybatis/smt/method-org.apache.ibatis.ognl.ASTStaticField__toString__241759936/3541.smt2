(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/602358304 (var1505) String)
(declare-fun fieldName/602358304 (var1505) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1505 var1505)
(declare-const var397 var1505) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTStaticField 
(assert (not (= var397 null-var1505)))
(define-const var1543 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1543)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1543!1 String)
(assert (= var1543!1 ""))
(assert true)
(define-const var3396 String (append/672562846 var1543!1 "@")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var1543!2 String)
(assert (= var1543!2 (str.++ var1543!1 "@")))
(define-const var680 String (className/602358304 var397)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className> 
(assert true)
(define-const var232 String (append/672562846 var3396 var680)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3396!1 String)
(assert (= var3396!1 (str.++ var3396 var680)))
(assert true)
(define-const var170 String (append/672562846 var232 "@")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var232!1 String)
(assert (= var232!1 (str.++ var232 "@")))
(define-const var722 String (fieldName/602358304 var397)) ; Statement: $r5 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String fieldName> 
(assert true)
(define-const var615 String (append/672562846 var170 var722)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var170!1 String)
(assert (= var170!1 (str.++ var170 var722)))
(assert true)
(define-const var960 String (toString/-2075883882 var615)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String), fieldName/602358304=([org.apache.ibatis.ognl.ASTStaticField], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1505=org.apache.ibatis.ognl.ASTStaticField, var397=r1, var1543=$r0, var3396=$r3, var680=$r2, var232=$r4, var170=$r6, var722=$r5, var615=$r7, var960=$r8}
; {org.apache.ibatis.ognl.ASTStaticField=var1505, r1=var397, $r0=var1543, $r3=var3396, $r2=var680, $r4=var232, $r6=var170, $r5=var722, $r7=var615, $r8=var960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTStaticField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r2 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String className>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r5 = r1.<org.apache.ibatis.ognl.ASTStaticField: java.lang.String fieldName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1