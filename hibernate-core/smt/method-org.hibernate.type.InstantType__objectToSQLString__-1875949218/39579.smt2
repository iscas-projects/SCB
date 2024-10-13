(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort var3120 0)
(declare-sort var2033 0)
(declare-sort var1939 0)
(declare-sort var936 0)
(declare-sort var3361 0)
(declare-sort var2364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var936_of/-1073278971 (String) var936)
(declare-fun var3361_ofInstant/-285959655 (var3120 var936) var3361)
(declare-fun format/-1646058768 (var1939 var2364) String)
(declare-fun cast-from-var3361-to-var2364 (var3361) var2364)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3307 var3307)
(declare-const null-var3120 var3120)
(declare-const null-var2033 var2033)
(declare-const var3307-FORMATTER var1939)
(declare-const var599 var3307) ; Statement: r10 := @this: org.hibernate.type.InstantType 
(assert (not (= var599 null-var3307)))
(declare-const var1895 var3120) ; Statement: r1 := @parameter0: java.time.Instant 
(assert (not (= var1895 null-var3120)))
(declare-const var3024 var2033) ; Statement: r11 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var3024 null-var2033)))
(define-const var1399 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1399)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1399!1 String)
(assert (= var1399!1 ""))
(assert true)
(define-const var3348 String (append/672562846 var1399!1 "{ts \u0027")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'") 
(declare-const var1399!2 String)
(assert (= var1399!2 (str.++ var1399!1 "{ts \u0027")))
(define-const var1143 var1939 var3307-FORMATTER) ; Statement: $r2 = <org.hibernate.type.InstantType: java.time.format.DateTimeFormatter FORMATTER> 
(define-const var2321 var936 (var936_of/-1073278971 "UTC")) ; Statement: $r3 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("UTC") 
(define-const var2204 var3361 (var3361_ofInstant/-285959655 var1895 var2321)) ; Statement: $r4 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime ofInstant(java.time.Instant,java.time.ZoneId)>(r1, $r3) 
(assert true)
(define-const var11 String (format/-1646058768 var1143 (cast-from-var3361-to-var2364 var2204))) ; Statement: $r5 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r4) 
(assert true)
(define-const var1438 String (append/672562846 var3348 var11)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3348!1 String)
(assert (= var3348!1 (str.++ var3348 var11)))
(assert true)
(define-const var2718 String (append/672562846 var1438 "\u0027}")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var1438!1 String)
(assert (= var1438!1 (str.++ var1438 "\u0027}")))
(assert true)
(define-const var2119 String (toString/-2075883882 var2718)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var936_of/-1073278971=([java.lang.String], java.time.ZoneId), var3361_ofInstant/-285959655=([java.time.Instant, java.time.ZoneId], java.time.ZonedDateTime), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var3361-to-var2364=([java.time.ZonedDateTime], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3307=org.hibernate.type.InstantType, var599=r10, var3120=java.time.Instant, var1895=r1, var2033=org.hibernate.dialect.Dialect, var3024=r11, var1399=$r0, var3348=$r6, var1939=java.time.format.DateTimeFormatter, var1143=$r2, var936=java.time.ZoneId, var2321=$r3, var3361=java.time.ZonedDateTime, var2204=$r4, var2364=java.time.temporal.TemporalAccessor, var11=$r5, var1438=$r7, var2718=$r8, var2119=$r9}
; {org.hibernate.type.InstantType=var3307, r10=var599, java.time.Instant=var3120, r1=var1895, org.hibernate.dialect.Dialect=var2033, r11=var3024, $r0=var1399, $r6=var3348, java.time.format.DateTimeFormatter=var1939, $r2=var1143, java.time.ZoneId=var936, $r3=var2321, java.time.ZonedDateTime=var3361, $r4=var2204, java.time.temporal.TemporalAccessor=var2364, $r5=var11, $r7=var1438, $r8=var2718, $r9=var2119}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.type.InstantType;	r1 := @parameter0: java.time.Instant;	r11 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'");	$r2 = <org.hibernate.type.InstantType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = staticinvoke <java.time.ZoneId: java.time.ZoneId of(java.lang.String)>("UTC");	$r4 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime ofInstant(java.time.Instant,java.time.ZoneId)>(r1, $r3);	$r5 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1