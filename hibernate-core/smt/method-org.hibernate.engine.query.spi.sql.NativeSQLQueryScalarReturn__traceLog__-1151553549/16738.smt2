(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2139 0)
(declare-sort var287 0)
(declare-sort var278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var287_writeLine/83179921 (var287 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnAlias/-2006819493 (var2139) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun type/-2006819493 (var2139) var278)
(declare-const null-var2139 var2139)
(declare-const null-var287 var287)
(declare-const null-var278 var278)
(declare-const var812 var2139) ; Statement: r2 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn 
(assert (not (= var812 null-var2139)))
(declare-const var496 var287) ; Statement: r0 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger 
(assert (not (= var496 null-var287)))
;(assert (var287_writeLine/83179921 var496 "Scalar[")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("Scalar[") 

(declare-const var496!1 var287)
(declare-const var381 String)
(define-const var556 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var556)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var556!1 String)
(assert (= var556!1 ""))
(assert true)
(define-const var823 String (append/672562846 var556!1 "    columnAlias=")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    columnAlias=") 
(declare-const var556!2 String)
(assert (= var556!2 (str.++ var556!1 "    columnAlias=")))
(define-const var1720 String (columnAlias/-2006819493 var812)) ; Statement: $r3 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
(assert true)
(define-const var3870 String (append/672562846 var823 var1720)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var823!1 String)
(assert (= var823!1 (str.++ var823 var1720)))
(assert true)
(define-const var543 String (append/672562846 var3870 ",")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3870!1 String)
(assert (= var3870!1 (str.++ var3870 ",")))
(assert true)
(define-const var859 String (toString/-2075883882 var543)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var287_writeLine/83179921 var496!1 var859)) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r7) 

(declare-const var496!2 var287)
(declare-const var859!1 String)
(define-const var908 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var908)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var908!1 String)
(assert (= var908!1 ""))
(assert true)
(define-const var2338 String (append/672562846 var908!1 "    type=")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    type=") 
(declare-const var908!2 String)
(assert (= var908!2 (str.++ var908!1 "    type=")))
(define-const var3142 var278 (type/-2006819493 var812)) ; Statement: $r9 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
 ; Statement: if $r9 != null goto $r10 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
(assert (not (not (= var3142 null-var278)))) ; Negate: Cond: $r9 != null  
(define-const var1976 String "<unknown>") ; Statement: $r15 = "<unknown>" 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2820 String (append/672562846 var2338 var1976)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2338!1 String)
(assert (= var2338!1 (str.++ var2338 var1976)))
(assert true)
(define-const var987 String (append/672562846 var2820 ",")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2820!1 String)
(assert (= var2820!1 (str.++ var2820 ",")))
(assert true)
(define-const var3538 String (toString/-2075883882 var987)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var287_writeLine/83179921 var496!2 var3538)) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r14) 

(declare-const var496!3 var287)
(declare-const var3538!1 String)
;(assert (var287_writeLine/83179921 var496!3 "]")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("]") 

(declare-const var496!4 var287)
(declare-const var439 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var287_writeLine/83179921=([org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnAlias/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), type/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], org.hibernate.type.Type)}
; {var2139=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var812=r2, var287=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, var496=r0, var381="Scalar[", var556=$r1, var823=$r4, var1720=$r3, var3870=$r5, var543=$r6, var859=$r7, var908=$r8, var2338=$r11, var278=org.hibernate.type.Type, var3142=$r9, var1976=$r15, var2820=$r12, var987=$r13, var3538=$r14, var439="]"}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var2139, r2=var812, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger=var287, r0=var496, "Scalar["=var381, $r1=var556, $r4=var823, $r3=var1720, $r5=var3870, $r6=var543, $r7=var859, $r8=var908, $r11=var2338, org.hibernate.type.Type=var278, $r9=var3142, $r15=var1976, $r12=var2820, $r13=var987, $r14=var3538, "]"=var439}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn;	r0 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger;	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("Scalar[");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    columnAlias=");	$r3 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r7);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    type=");	$r9 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	if $r9 != null goto $r10 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	$r15 = "<unknown>";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r14);	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("]");	return
;block_num 3