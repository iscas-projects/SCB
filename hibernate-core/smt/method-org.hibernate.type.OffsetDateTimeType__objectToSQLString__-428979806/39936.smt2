(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var391 0)
(declare-sort var3998 0)
(declare-sort var2745 0)
(declare-sort var1455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1646058768 (var2745 var1455) String)
(declare-fun cast-from-var391-to-var1455 (var391) var1455)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1375 var1375)
(declare-const null-var391 var391)
(declare-const null-var3998 var3998)
(declare-const var1375-FORMATTER var2745)
(declare-const var2310 var1375) ; Statement: r8 := @this: org.hibernate.type.OffsetDateTimeType 
(assert (not (= var2310 null-var1375)))
(declare-const var1868 var391) ; Statement: r1 := @parameter0: java.time.OffsetDateTime 
(assert (not (= var1868 null-var391)))
(declare-const var2238 var3998) ; Statement: r9 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var2238 null-var3998)))
(define-const var1263 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1263)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1263!1 String)
(assert (= var1263!1 ""))
(assert true)
(define-const var620 String (append/672562846 var1263!1 "{ts \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'") 
(declare-const var1263!2 String)
(assert (= var1263!2 (str.++ var1263!1 "{ts \u0027")))
(define-const var3711 var2745 var1375-FORMATTER) ; Statement: $r2 = <org.hibernate.type.OffsetDateTimeType: java.time.format.DateTimeFormatter FORMATTER> 
(assert true)
(define-const var901 String (format/-1646058768 var3711 (cast-from-var391-to-var1455 var1868))) ; Statement: $r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1) 
(assert true)
(define-const var2761 String (append/672562846 var620 var901)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var620!1 String)
(assert (= var620!1 (str.++ var620 var901)))
(assert true)
(define-const var3010 String (append/672562846 var2761 "\u0027}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var2761!1 String)
(assert (= var2761!1 (str.++ var2761 "\u0027}")))
(assert true)
(define-const var2135 String (toString/-2075883882 var3010)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var391-to-var1455=([java.time.OffsetDateTime], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1375=org.hibernate.type.OffsetDateTimeType, var2310=r8, var391=java.time.OffsetDateTime, var1868=r1, var3998=org.hibernate.dialect.Dialect, var2238=r9, var1263=$r0, var620=$r4, var2745=java.time.format.DateTimeFormatter, var3711=$r2, var1455=java.time.temporal.TemporalAccessor, var901=$r3, var2761=$r5, var3010=$r6, var2135=$r7}
; {org.hibernate.type.OffsetDateTimeType=var1375, r8=var2310, java.time.OffsetDateTime=var391, r1=var1868, org.hibernate.dialect.Dialect=var3998, r9=var2238, $r0=var1263, $r4=var620, java.time.format.DateTimeFormatter=var2745, $r2=var3711, java.time.temporal.TemporalAccessor=var1455, $r3=var901, $r5=var2761, $r6=var3010, $r7=var2135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.OffsetDateTimeType;	r1 := @parameter0: java.time.OffsetDateTime;	r9 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'");	$r2 = <org.hibernate.type.OffsetDateTimeType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1