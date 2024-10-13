(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var473 0)
(declare-sort var2472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$logger/-865635880 (var279) var2472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2472_writeLine/83179921 (var2472 String) void)
(declare-const null-var279 var279)
(declare-const null-String String)
(declare-const var2520 var279) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1 
(assert (not (= var2520 null-var279)))
(declare-const var1722 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1722 null-String)))
(define-const var962 var2472 (val$logger/-865635880 var2520)) ; Statement: $r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger val$logger> 
(define-const var2869 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2869)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2869!1 String)
(assert (= var2869!1 ""))
(assert true)
(define-const var1551 String (append/672562846 var2869!1 "    ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2869!2 String)
(assert (= var2869!2 (str.++ var2869!1 "    ")))
(assert true)
(define-const var2873 String (append/672562846 var1551 var1722)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1551!1 String)
(assert (= var1551!1 (str.++ var1551 var1722)))
(assert true)
(define-const var7 String (toString/-2075883882 var2873)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2472_writeLine/83179921 var962 var7)) ; Statement: interfaceinvoke $r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r6) 

(declare-const var962!1 var2472)
(declare-const var7!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$logger/-865635880=([org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1], org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2472_writeLine/83179921=([org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, java.lang.String], void)}
; {var279=org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1, var2520=r0, var1722=r3, var473=null_type, var2472=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, var962=$r2, var2869=$r1, var1551=$r4, var2873=$r5, var7=$r6}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1=var279, r0=var2520, r3=var1722, null_type=var473, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger=var2472, $r2=var962, $r1=var2869, $r4=var1551, $r5=var2873, $r6=var7}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1;	r3 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger val$logger>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r6);	return
;block_num 1