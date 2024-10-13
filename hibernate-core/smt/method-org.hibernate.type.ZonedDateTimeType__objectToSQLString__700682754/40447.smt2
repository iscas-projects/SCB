(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1008 0)
(declare-sort var1592 0)
(declare-sort var450 0)
(declare-sort var1298 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1646058768 (var1298 var2158) String)
(declare-fun cast-from-var1592-to-var2158 (var1592) var2158)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1008 var1008)
(declare-const null-var1592 var1592)
(declare-const null-var450 var450)
(declare-const var1008-FORMATTER var1298)
(declare-const var924 var1008) ; Statement: r8 := @this: org.hibernate.type.ZonedDateTimeType 
(assert (not (= var924 null-var1008)))
(declare-const var1044 var1592) ; Statement: r1 := @parameter0: java.time.ZonedDateTime 
(assert (not (= var1044 null-var1592)))
(declare-const var2349 var450) ; Statement: r9 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var2349 null-var450)))
(define-const var1420 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1420)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1420!1 String)
(assert (= var1420!1 ""))
(assert true)
(define-const var1557 String (append/672562846 var1420!1 "{ts \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'") 
(declare-const var1420!2 String)
(assert (= var1420!2 (str.++ var1420!1 "{ts \u0027")))
(define-const var252 var1298 var1008-FORMATTER) ; Statement: $r2 = <org.hibernate.type.ZonedDateTimeType: java.time.format.DateTimeFormatter FORMATTER> 
(assert true)
(define-const var1367 String (format/-1646058768 var252 (cast-from-var1592-to-var2158 var1044))) ; Statement: $r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1) 
(assert true)
(define-const var2075 String (append/672562846 var1557 var1367)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1557!1 String)
(assert (= var1557!1 (str.++ var1557 var1367)))
(assert true)
(define-const var2890 String (append/672562846 var2075 "\u0027}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var2075!1 String)
(assert (= var2075!1 (str.++ var2075 "\u0027}")))
(assert true)
(define-const var3096 String (toString/-2075883882 var2890)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var1592-to-var2158=([java.time.ZonedDateTime], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1008=org.hibernate.type.ZonedDateTimeType, var924=r8, var1592=java.time.ZonedDateTime, var1044=r1, var450=org.hibernate.dialect.Dialect, var2349=r9, var1420=$r0, var1557=$r4, var1298=java.time.format.DateTimeFormatter, var252=$r2, var2158=java.time.temporal.TemporalAccessor, var1367=$r3, var2075=$r5, var2890=$r6, var3096=$r7}
; {org.hibernate.type.ZonedDateTimeType=var1008, r8=var924, java.time.ZonedDateTime=var1592, r1=var1044, org.hibernate.dialect.Dialect=var450, r9=var2349, $r0=var1420, $r4=var1557, java.time.format.DateTimeFormatter=var1298, $r2=var252, java.time.temporal.TemporalAccessor=var2158, $r3=var1367, $r5=var2075, $r6=var2890, $r7=var3096}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.ZonedDateTimeType;	r1 := @parameter0: java.time.ZonedDateTime;	r9 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'");	$r2 = <org.hibernate.type.ZonedDateTimeType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1