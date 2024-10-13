(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var641 0)
(declare-sort var185 0)
(declare-sort var508 0)
(declare-sort var3978 0)
(declare-sort var1019 0)
(declare-sort var612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var508!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var3978) Bool)
(declare-fun cast-from-var185-to-var3978 (var185) var3978)
(declare-fun var1019-init () var1019)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3978) ClassObject)
(declare-fun append/-1031950772 (String var3978) String)
(declare-fun cast-from-ClassObject-to-var3978 (ClassObject) var3978)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1019 String) void)
(declare-fun cast-from-var1019-to-var612 (var1019) var612)
(declare-const null-var641 var641)
(declare-const null-var185 var185)
(declare-const var3608 var641) ; Statement: r9 := @this: org.hibernate.jdbc.Expectations$BasicParamExpectation 
(assert (not (= var3608 null-var641)))
(declare-const var3502 var185) ; Statement: r0 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var3502 null-var185)))
(define-const var833 ClassObject var508!class) ; Statement: $r1 = class "Ljava/sql/CallableStatement;" 
(assert true)
(define-const var3260 Bool (isInstance/451912363 var833 (cast-from-var185-to-var3978 var3502))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = (java.sql.CallableStatement) r0 
(assert (not (not (= (ite var3260 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1268 var1019 var1019-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var2034 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2034)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2034!1 String)
(assert (= var2034!1 ""))
(assert true)
(define-const var1910 String (append/672562846 var2034!1 "BasicParamExpectation operates exclusively on CallableStatements : ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BasicParamExpectation operates exclusively on CallableStatements : ") 
(declare-const var2034!2 String)
(assert (= var2034!2 (str.++ var2034!1 "BasicParamExpectation operates exclusively on CallableStatements : ")))
(assert true)
(define-const var2359 ClassObject (getClass/1258963082 (cast-from-var185-to-var3978 var3502))) ; Statement: $r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1380 String (append/-1031950772 var1910 (cast-from-ClassObject-to-var3978 var2359))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1910!1 String)
(assert (str.prefixof var1910 var1910!1))
(assert true)
(define-const var3115 String (toString/-2075883882 var1380)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1268 var3115)) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8) 

(declare-const var1268!1 var1019)
(declare-const var3115!1 String)
(define-const var2898 var612 (cast-from-var1019-to-var612 var1268!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var185-to-var3978=([java.sql.PreparedStatement], java.lang.Object), var1019-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3978=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1019-to-var612=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var641=org.hibernate.jdbc.Expectations$BasicParamExpectation, var3608=r9, var185=java.sql.PreparedStatement, var3502=r0, var508=java.sql.CallableStatement, var833=$r1, var3978=java.lang.Object, var3260=$z0, var1019=org.hibernate.HibernateException, var1268=$r11, var2034=$r10, var1910=$r6, var2359=$r5, var1380=$r7, var3115=$r8, var612=java.lang.Throwable, var2898=$r12}
; {org.hibernate.jdbc.Expectations$BasicParamExpectation=var641, r9=var3608, java.sql.PreparedStatement=var185, r0=var3502, java.sql.CallableStatement=var508, $r1=var833, java.lang.Object=var3978, $z0=var3260, org.hibernate.HibernateException=var1019, $r11=var1268, $r10=var2034, $r6=var1910, $r5=var2359, $r7=var1380, $r8=var3115, java.lang.Throwable=var612, $r12=var2898}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.jdbc.Expectations$BasicParamExpectation;	r0 := @parameter0: java.sql.PreparedStatement;	$r1 = class "Ljava/sql/CallableStatement;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = (java.sql.CallableStatement) r0;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BasicParamExpectation operates exclusively on CallableStatements : ");	$r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2