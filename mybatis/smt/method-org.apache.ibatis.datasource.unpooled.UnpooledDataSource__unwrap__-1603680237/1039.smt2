(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var3791 0)
(declare-sort var1323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3791-init () var3791)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1323) ClassObject)
(declare-fun cast-from-var3897-to-var1323 (var3897) var1323)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/551030747 (var3791 String) void)
(declare-const null-var3897 var3897)
(declare-const null-ClassObject ClassObject)
(declare-const var1519 var3897) ; Statement: r2 := @this: org.apache.ibatis.datasource.unpooled.UnpooledDataSource 
(assert (not (= var1519 null-var3897)))
(declare-const var2674 ClassObject) ; Statement: r8 := @parameter0: java.lang.Class 
(assert (not (= var2674 null-ClassObject)))
(define-const var765 var3791 var3791-init) ; Statement: $r0 = new java.sql.SQLException 
(define-const var2657 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2657)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2657!1 String)
(assert (= var2657!1 ""))
(assert true)
(define-const var572 ClassObject (getClass/1258963082 (cast-from-var3897-to-var1323 var1519))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var240 String (getName/-1958580599 var572)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1288 String (append/672562846 var2657!1 var240)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2657!2 String)
(assert (= var2657!2 (str.++ var2657!1 var240)))
(assert true)
(define-const var609 String (append/672562846 var1288 " is not a wrapper.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a wrapper.") 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 " is not a wrapper.")))
(assert true)
(define-const var2051 String (toString/-2075883882 var609)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/551030747 var765 var2051)) ; Statement: specialinvoke $r0.<java.sql.SQLException: void <init>(java.lang.String)>($r7) 

(declare-const var765!1 var3791)
(declare-const var2051!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3791-init=([], java.sql.SQLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3897-to-var1323=([org.apache.ibatis.datasource.unpooled.UnpooledDataSource], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/551030747=([java.sql.SQLException, java.lang.String], void)}
; {var3897=org.apache.ibatis.datasource.unpooled.UnpooledDataSource, var1519=r2, var2674=r8, var3791=java.sql.SQLException, var765=$r0, var2657=$r1, var1323=java.lang.Object, var572=$r3, var240=$r4, var1288=$r5, var609=$r6, var2051=$r7}
; {org.apache.ibatis.datasource.unpooled.UnpooledDataSource=var3897, r2=var1519, r8=var2674, java.sql.SQLException=var3791, $r0=var765, $r1=var2657, java.lang.Object=var1323, $r3=var572, $r4=var240, $r5=var1288, $r6=var609, $r7=var2051}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.datasource.unpooled.UnpooledDataSource;	r8 := @parameter0: java.lang.Class;	$r0 = new java.sql.SQLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a wrapper.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.sql.SQLException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1