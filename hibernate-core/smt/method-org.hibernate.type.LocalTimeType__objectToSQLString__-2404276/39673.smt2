(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var424 0)
(declare-sort var2324 0)
(declare-sort var1399 0)
(declare-sort var16 0)
(declare-sort var2971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1646058768 (var16 var2971) String)
(declare-fun cast-from-var2324-to-var2971 (var2324) var2971)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var424 var424)
(declare-const null-var2324 var2324)
(declare-const null-var1399 var1399)
(declare-const var424-FORMATTER var16)
(declare-const var3359 var424) ; Statement: r8 := @this: org.hibernate.type.LocalTimeType 
(assert (not (= var3359 null-var424)))
(declare-const var633 var2324) ; Statement: r1 := @parameter0: java.time.LocalTime 
(assert (not (= var633 null-var2324)))
(declare-const var1586 var1399) ; Statement: r9 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var1586 null-var1399)))
(define-const var603 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var603)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var603!1 String)
(assert (= var603!1 ""))
(assert true)
(define-const var2837 String (append/672562846 var603!1 "{t \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{t \'") 
(declare-const var603!2 String)
(assert (= var603!2 (str.++ var603!1 "{t \u0027")))
(define-const var3526 var16 var424-FORMATTER) ; Statement: $r2 = <org.hibernate.type.LocalTimeType: java.time.format.DateTimeFormatter FORMATTER> 
(assert true)
(define-const var1864 String (format/-1646058768 var3526 (cast-from-var2324-to-var2971 var633))) ; Statement: $r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1) 
(assert true)
(define-const var832 String (append/672562846 var2837 var1864)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2837!1 String)
(assert (= var2837!1 (str.++ var2837 var1864)))
(assert true)
(define-const var2458 String (append/672562846 var832 "\u0027}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var832!1 String)
(assert (= var832!1 (str.++ var832 "\u0027}")))
(assert true)
(define-const var2578 String (toString/-2075883882 var2458)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var2324-to-var2971=([java.time.LocalTime], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var424=org.hibernate.type.LocalTimeType, var3359=r8, var2324=java.time.LocalTime, var633=r1, var1399=org.hibernate.dialect.Dialect, var1586=r9, var603=$r0, var2837=$r4, var16=java.time.format.DateTimeFormatter, var3526=$r2, var2971=java.time.temporal.TemporalAccessor, var1864=$r3, var832=$r5, var2458=$r6, var2578=$r7}
; {org.hibernate.type.LocalTimeType=var424, r8=var3359, java.time.LocalTime=var2324, r1=var633, org.hibernate.dialect.Dialect=var1399, r9=var1586, $r0=var603, $r4=var2837, java.time.format.DateTimeFormatter=var16, $r2=var3526, java.time.temporal.TemporalAccessor=var2971, $r3=var1864, $r5=var832, $r6=var2458, $r7=var2578}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.LocalTimeType;	r1 := @parameter0: java.time.LocalTime;	r9 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{t \'");	$r2 = <org.hibernate.type.LocalTimeType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1