(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var996 0)
(declare-sort var2594 0)
(declare-sort var3764 0)
(declare-sort var2658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3764-init () (Array Int var3764))
(declare-fun render/-241411902 (var996) String)
(declare-fun cast-from-String-to-var3764 (String) var3764)
(declare-fun String_format/-647569892 (var2594 String (Array Int var3764)) String)
(declare-fun <init>/-790357943 (var2658 String) void)
(declare-fun cast-from-var743-to-var2658 (var743) var2658)
(declare-fun tableName/1687555293 (var743) var996)
(declare-const null-var743 var743)
(declare-const null-var996 var996)
(declare-const var2594-ENGLISH var2594)
(declare-const null-__Array__Int__var3764__ (Array Int var3764))
(declare-const var3784 var743) ; Statement: r0 := @this: org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException 
(assert (not (= var3784 null-var743)))
(declare-const var1719 var996) ; Statement: r2 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1719 null-var996)))
(define-const var724 var2594 var2594-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2442 (Array Int var3764) arr-var3764-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var2763 String (render/-241411902 var1719)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(declare-const var2442!1 (Array Int var3764))
(assert (not (= var2442!1 null-__Array__Int__var3764__)))
(assert (= (select var2442!1 0) (cast-from-String-to-var3764 var2763))) ; Statement: $r1[0] = $r4 
(define-const var2808 String (String_format/-647569892 var724 "Table with that name [%s] already associated with entity" var2442!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "Table with that name [%s] already associated with entity", $r1) 
(assert true)
;(assert (<init>/-790357943 (cast-from-var743-to-var2658 var3784) var2808)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var3784!1 var743)
(declare-const var2808!1 String)
(declare-const var3784!2 var743)
(assert (not (= var3784!2 null-var743)))
(assert (= (tableName/1687555293 var3784!2) var1719)) ; Statement: r0.<org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException: org.hibernate.boot.model.naming.Identifier tableName> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3764-init=([], java.lang.Object[]), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), cast-from-String-to-var3764=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var743-to-var2658=([org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException], org.hibernate.HibernateException), tableName/1687555293=([org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException], org.hibernate.boot.model.naming.Identifier)}
; {var743=org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException, var3784=r0, var996=org.hibernate.boot.model.naming.Identifier, var1719=r2, var2594=java.util.Locale, var724=$r3, var3764=java.lang.Object, var2442=$r1, var2763=$r4, var2808=$r5, var2658=org.hibernate.HibernateException}
; {org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException=var743, r0=var3784, org.hibernate.boot.model.naming.Identifier=var996, r2=var1719, java.util.Locale=var2594, $r3=var724, java.lang.Object=var3764, $r1=var2442, $r4=var2763, $r5=var2808, org.hibernate.HibernateException=var2658}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException;	r2 := @parameter0: org.hibernate.boot.model.naming.Identifier;	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r1 = newarray (java.lang.Object)[1];	$r4 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	$r1[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "Table with that name [%s] already associated with entity", $r1);	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	r0.<org.hibernate.boot.spi.InFlightMetadataCollector$DuplicateSecondaryTableException: org.hibernate.boot.model.naming.Identifier tableName> = r2;	return
;block_num 1