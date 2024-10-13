(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort var1096 0)
(declare-sort var3018 0)
(declare-sort var2166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3018-init () var3018)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2166) ClassObject)
(declare-fun cast-from-var1259-to-var2166 (var1259) var2166)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3018 String) void)
(declare-const null-var1259 var1259)
(declare-const null-var1096 var1096)
(declare-const var2358 var1259) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2358 null-var1259)))
(declare-const var1527 var1096) ; Statement: r8 := @parameter0: java.sql.CallableStatement 
(assert (not (= var1527 null-var1096)))
(define-const var1929 var3018 var3018-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var669 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var669)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var669!1 String)
(assert (= var669!1 ""))
(assert true)
(define-const var3957 ClassObject (getClass/1258963082 (cast-from-var1259-to-var2166 var2358))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1789 String (getName/-1958580599 var3957)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2038 String (append/672562846 var669!1 var1789)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var669!2 String)
(assert (= var669!2 (str.++ var669!1 var1789)))
(assert true)
(define-const var1696 String (append/672562846 var2038 " does not support resultsets via stored procedures")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures") 
(declare-const var2038!1 String)
(assert (= var2038!1 (str.++ var2038 " does not support resultsets via stored procedures")))
(assert true)
(define-const var1965 String (toString/-2075883882 var1696)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1929 var1965)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var1929!1 var3018)
(declare-const var1965!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3018-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1259-to-var2166=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1259=org.hibernate.dialect.Dialect, var2358=r2, var1096=java.sql.CallableStatement, var1527=r8, var3018=java.lang.UnsupportedOperationException, var1929=$r0, var669=$r1, var2166=java.lang.Object, var3957=$r3, var1789=$r4, var2038=$r5, var1696=$r6, var1965=$r7}
; {org.hibernate.dialect.Dialect=var1259, r2=var2358, java.sql.CallableStatement=var1096, r8=var1527, java.lang.UnsupportedOperationException=var3018, $r0=var1929, $r1=var669, java.lang.Object=var2166, $r3=var3957, $r4=var1789, $r5=var2038, $r6=var1696, $r7=var1965}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.sql.CallableStatement;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1