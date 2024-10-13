(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort var449 0)
(declare-sort var1790 0)
(declare-sort var1782 0)
(declare-sort var2036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun url/1565004875 (var3600) String)
(declare-fun connectionProps/1565004875 (var3600) var449)
(declare-fun makeConnection/1857976318 (var3600 String var449) var1790)
(declare-fun var1782-init () var1782)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1782 String) void)
(declare-fun cast-from-var1782-to-var2036 (var1782) var2036)
(declare-const null-var3600 var3600)
(declare-const null-var1790 var1790)
(declare-const var3710 var3600) ; Statement: r0 := @this: org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator 
(assert (not (= var3710 null-var3600)))
(define-const var3399 String (url/1565004875 var3710)) ; Statement: $r2 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.lang.String url> 
(define-const var2960 var449 (connectionProps/1565004875 var3710)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.util.Properties connectionProps> 
(assert true)
(define-const var798 var1790 (makeConnection/1857976318 var3710 var3399 var2960)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.sql.Connection makeConnection(java.lang.String,java.util.Properties)>($r2, $r1) 
 ; Statement: if r3 != null goto $r4 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.lang.Integer isolation> 
(assert (not (not (= var798 null-var1790)))) ; Negate: Cond: r3 != null  
(define-const var1083 var1782 var1782-init) ; Statement: $r44 = new org.hibernate.HibernateException 
(define-const var325 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var325)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var325!1 String)
(assert (= var325!1 ""))
(assert true)
(define-const var765 String (append/672562846 var325!1 "Unable to make JDBC Connection [")) ; Statement: $r13 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to make JDBC Connection [") 
(declare-const var325!2 String)
(assert (= var325!2 (str.++ var325!1 "Unable to make JDBC Connection [")))
(define-const var3429 String (url/1565004875 var3710)) ; Statement: $r12 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.lang.String url> 
(assert true)
(define-const var1022 String (append/672562846 var765 var3429)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var765!1 String)
(assert (= var765!1 (str.++ var765 var3429)))
(assert true)
(define-const var3783 String (append/672562846 var1022 "]")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1022!1 String)
(assert (= var1022!1 (str.++ var1022 "]")))
(assert true)
(define-const var1409 String (toString/-2075883882 var3783)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1083 var1409)) ; Statement: specialinvoke $r44.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r16) 

(declare-const var1083!1 var1782)
(declare-const var1409!1 String)
(define-const var3573 var2036 (cast-from-var1782-to-var2036 var1083!1)) ; Statement: $r48 = (java.lang.Throwable) $r44 
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {url/1565004875=([org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator], java.lang.String), connectionProps/1565004875=([org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator], java.util.Properties), makeConnection/1857976318=([org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator, java.lang.String, java.util.Properties], java.sql.Connection), var1782-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1782-to-var2036=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3600=org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator, var3710=r0, var3399=$r2, var449=java.util.Properties, var2960=$r1, var1790=java.sql.Connection, var798=r3, var1782=org.hibernate.HibernateException, var1083=$r44, var325=$r43, var765=$r13, var3429=$r12, var1022=$r14, var3783=$r15, var1409=$r16, var2036=java.lang.Throwable, var3573=$r48}
; {org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator=var3600, r0=var3710, $r2=var3399, java.util.Properties=var449, $r1=var2960, java.sql.Connection=var1790, r3=var798, org.hibernate.HibernateException=var1782, $r44=var1083, $r43=var325, $r13=var765, $r12=var3429, $r14=var1022, $r15=var3783, $r16=var1409, java.lang.Throwable=var2036, $r48=var3573}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator;	$r2 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.lang.String url>;	$r1 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.util.Properties connectionProps>;	r3 = virtualinvoke r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.sql.Connection makeConnection(java.lang.String,java.util.Properties)>($r2, $r1);	if r3 != null goto $r4 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.lang.Integer isolation>;	$r44 = new org.hibernate.HibernateException;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to make JDBC Connection [");	$r12 = r0.<org.hibernate.engine.jdbc.connections.internal.BasicConnectionCreator: java.lang.String url>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r44.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r16);	$r48 = (java.lang.Throwable) $r44;	throw $r48
;block_num 2