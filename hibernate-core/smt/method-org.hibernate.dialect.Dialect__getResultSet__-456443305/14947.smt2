(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var2683 0)
(declare-sort var1331 0)
(declare-sort var475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1331-init () var1331)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var475) ClassObject)
(declare-fun cast-from-var335-to-var475 (var335) var475)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1331 String) void)
(declare-const null-var335 var335)
(declare-const null-var2683 var2683)
(declare-const null-Int Int)
(declare-const var3602 var335) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3602 null-var335)))
(declare-const var1520 var2683) ; Statement: r8 := @parameter0: java.sql.CallableStatement 
(assert (not (= var1520 null-var2683)))
(declare-const var2659 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2659 null-Int)))
(define-const var246 var1331 var1331-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1606 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1606)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1606!1 String)
(assert (= var1606!1 ""))
(assert true)
(define-const var698 ClassObject (getClass/1258963082 (cast-from-var335-to-var475 var3602))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1709 String (getName/-1958580599 var698)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1456 String (append/672562846 var1606!1 var1709)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1606!2 String)
(assert (= var1606!2 (str.++ var1606!1 var1709)))
(assert true)
(define-const var1173 String (append/672562846 var1456 " does not support resultsets via stored procedures")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures") 
(declare-const var1456!1 String)
(assert (= var1456!1 (str.++ var1456 " does not support resultsets via stored procedures")))
(assert true)
(define-const var2577 String (toString/-2075883882 var1173)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var246 var2577)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var246!1 var1331)
(declare-const var2577!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1331-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var335-to-var475=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var335=org.hibernate.dialect.Dialect, var3602=r2, var2683=java.sql.CallableStatement, var1520=r8, var2659=i0, var1331=java.lang.UnsupportedOperationException, var246=$r0, var1606=$r1, var475=java.lang.Object, var698=$r3, var1709=$r4, var1456=$r5, var1173=$r6, var2577=$r7}
; {org.hibernate.dialect.Dialect=var335, r2=var3602, java.sql.CallableStatement=var2683, r8=var1520, i0=var2659, java.lang.UnsupportedOperationException=var1331, $r0=var246, $r1=var1606, java.lang.Object=var475, $r3=var698, $r4=var1709, $r5=var1456, $r6=var1173, $r7=var2577}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.sql.CallableStatement;	i0 := @parameter1: int;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1