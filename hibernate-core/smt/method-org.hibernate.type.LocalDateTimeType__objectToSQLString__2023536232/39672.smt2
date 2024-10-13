(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1749 0)
(declare-sort var152 0)
(declare-sort var2359 0)
(declare-sort var2637 0)
(declare-sort var2349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1646058768 (var2637 var2349) String)
(declare-fun cast-from-var152-to-var2349 (var152) var2349)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1749 var1749)
(declare-const null-var152 var152)
(declare-const null-var2359 var2359)
(declare-const var1749-FORMATTER var2637)
(declare-const var3567 var1749) ; Statement: r8 := @this: org.hibernate.type.LocalDateTimeType 
(assert (not (= var3567 null-var1749)))
(declare-const var1364 var152) ; Statement: r1 := @parameter0: java.time.LocalDateTime 
(assert (not (= var1364 null-var152)))
(declare-const var2428 var2359) ; Statement: r9 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var2428 null-var2359)))
(define-const var1594 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1594)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1594!1 String)
(assert (= var1594!1 ""))
(assert true)
(define-const var3122 String (append/672562846 var1594!1 "{ts \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'") 
(declare-const var1594!2 String)
(assert (= var1594!2 (str.++ var1594!1 "{ts \u0027")))
(define-const var2829 var2637 var1749-FORMATTER) ; Statement: $r2 = <org.hibernate.type.LocalDateTimeType: java.time.format.DateTimeFormatter FORMATTER> 
(assert true)
(define-const var3308 String (format/-1646058768 var2829 (cast-from-var152-to-var2349 var1364))) ; Statement: $r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1) 
(assert true)
(define-const var3794 String (append/672562846 var3122 var3308)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3122!1 String)
(assert (= var3122!1 (str.++ var3122 var3308)))
(assert true)
(define-const var3751 String (append/672562846 var3794 "\u0027}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var3794!1 String)
(assert (= var3794!1 (str.++ var3794 "\u0027}")))
(assert true)
(define-const var2174 String (toString/-2075883882 var3751)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var152-to-var2349=([java.time.LocalDateTime], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1749=org.hibernate.type.LocalDateTimeType, var3567=r8, var152=java.time.LocalDateTime, var1364=r1, var2359=org.hibernate.dialect.Dialect, var2428=r9, var1594=$r0, var3122=$r4, var2637=java.time.format.DateTimeFormatter, var2829=$r2, var2349=java.time.temporal.TemporalAccessor, var3308=$r3, var3794=$r5, var3751=$r6, var2174=$r7}
; {org.hibernate.type.LocalDateTimeType=var1749, r8=var3567, java.time.LocalDateTime=var152, r1=var1364, org.hibernate.dialect.Dialect=var2359, r9=var2428, $r0=var1594, $r4=var3122, java.time.format.DateTimeFormatter=var2637, $r2=var2829, java.time.temporal.TemporalAccessor=var2349, $r3=var3308, $r5=var3794, $r6=var3751, $r7=var2174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.LocalDateTimeType;	r1 := @parameter0: java.time.LocalDateTime;	r9 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ts \'");	$r2 = <org.hibernate.type.LocalDateTimeType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1