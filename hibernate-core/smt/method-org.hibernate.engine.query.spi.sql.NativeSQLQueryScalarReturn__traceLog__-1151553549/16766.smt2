(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var187 0)
(declare-sort var515 0)
(declare-sort var1816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var515_writeLine/83179921 (var515 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnAlias/-2006819493 (var187) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun type/-2006819493 (var187) var1816)
(declare-fun var1816_getName/-1292724027 (var1816) String)
(declare-const null-var187 var187)
(declare-const null-var515 var515)
(declare-const null-var1816 var1816)
(declare-const var2057 var187) ; Statement: r2 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn 
(assert (not (= var2057 null-var187)))
(declare-const var952 var515) ; Statement: r0 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger 
(assert (not (= var952 null-var515)))
;(assert (var515_writeLine/83179921 var952 "Scalar[")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("Scalar[") 

(declare-const var952!1 var515)
(declare-const var3384 String)
(define-const var3731 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(assert true)
(define-const var2199 String (append/672562846 var3731!1 "    columnAlias=")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    columnAlias=") 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 "    columnAlias=")))
(define-const var1658 String (columnAlias/-2006819493 var2057)) ; Statement: $r3 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
(assert true)
(define-const var3386 String (append/672562846 var2199 var1658)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2199!1 String)
(assert (= var2199!1 (str.++ var2199 var1658)))
(assert true)
(define-const var237 String (append/672562846 var3386 ",")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3386!1 String)
(assert (= var3386!1 (str.++ var3386 ",")))
(assert true)
(define-const var1508 String (toString/-2075883882 var237)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var515_writeLine/83179921 var952!1 var1508)) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r7) 

(declare-const var952!2 var515)
(declare-const var1508!1 String)
(define-const var212 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var212)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var212!1 String)
(assert (= var212!1 ""))
(assert true)
(define-const var723 String (append/672562846 var212!1 "    type=")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    type=") 
(declare-const var212!2 String)
(assert (= var212!2 (str.++ var212!1 "    type=")))
(define-const var1343 var1816 (type/-2006819493 var2057)) ; Statement: $r9 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
 ; Statement: if $r9 != null goto $r10 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
(assert (not (= var1343 null-var1816))) ; Cond: $r9 != null 
(define-const var709 var1816 (type/-2006819493 var2057)) ; Statement: $r10 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
(define-const var1150 String (var1816_getName/-1292724027 var709)) ; Statement: $r15 = interfaceinvoke $r10.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2133 String (append/672562846 var723 var1150)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var723!1 String)
(assert (= var723!1 (str.++ var723 var1150)))
(assert true)
(define-const var3828 String (append/672562846 var2133 ",")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2133!1 String)
(assert (= var2133!1 (str.++ var2133 ",")))
(assert true)
(define-const var1199 String (toString/-2075883882 var3828)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var515_writeLine/83179921 var952!2 var1199)) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r14) 

(declare-const var952!3 var515)
(declare-const var1199!1 String)
;(assert (var515_writeLine/83179921 var952!3 "]")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("]") 

(declare-const var952!4 var515)
(declare-const var3846 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var515_writeLine/83179921=([org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnAlias/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), type/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], org.hibernate.type.Type), var1816_getName/-1292724027=([org.hibernate.type.Type], java.lang.String)}
; {var187=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var2057=r2, var515=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, var952=r0, var3384="Scalar[", var3731=$r1, var2199=$r4, var1658=$r3, var3386=$r5, var237=$r6, var1508=$r7, var212=$r8, var723=$r11, var1816=org.hibernate.type.Type, var1343=$r9, var709=$r10, var1150=$r15, var2133=$r12, var3828=$r13, var1199=$r14, var3846="]"}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var187, r2=var2057, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger=var515, r0=var952, "Scalar["=var3384, $r1=var3731, $r4=var2199, $r3=var1658, $r5=var3386, $r6=var237, $r7=var1508, $r8=var212, $r11=var723, org.hibernate.type.Type=var1816, $r9=var1343, $r10=var709, $r15=var1150, $r12=var2133, $r13=var3828, $r14=var1199, "]"=var3846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn;	r0 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger;	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("Scalar[");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    columnAlias=");	$r3 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r7);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    type=");	$r9 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	if $r9 != null goto $r10 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	$r10 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	$r15 = interfaceinvoke $r10.<org.hibernate.type.Type: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r14);	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("]");	return
;block_num 3