(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var2169 0)
(declare-sort var3489 0)
(declare-sort var2296 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1646058768 (var2296 var1375) String)
(declare-fun cast-from-var2169-to-var1375 (var2169) var1375)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var51 var51)
(declare-const null-var2169 var2169)
(declare-const null-var3489 var3489)
(declare-const var51-FORMATTER var2296)
(declare-const var1239 var51) ; Statement: r8 := @this: org.hibernate.type.OffsetTimeType 
(assert (not (= var1239 null-var51)))
(declare-const var1498 var2169) ; Statement: r1 := @parameter0: java.time.OffsetTime 
(assert (not (= var1498 null-var2169)))
(declare-const var1388 var3489) ; Statement: r9 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var1388 null-var3489)))
(define-const var3261 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3261)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3261!1 String)
(assert (= var3261!1 ""))
(assert true)
(define-const var1487 String (append/672562846 var3261!1 "{t \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{t \'") 
(declare-const var3261!2 String)
(assert (= var3261!2 (str.++ var3261!1 "{t \u0027")))
(define-const var125 var2296 var51-FORMATTER) ; Statement: $r2 = <org.hibernate.type.OffsetTimeType: java.time.format.DateTimeFormatter FORMATTER> 
(assert true)
(define-const var2153 String (format/-1646058768 var125 (cast-from-var2169-to-var1375 var1498))) ; Statement: $r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1) 
(assert true)
(define-const var400 String (append/672562846 var1487 var2153)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1487!1 String)
(assert (= var1487!1 (str.++ var1487 var2153)))
(assert true)
(define-const var3953 String (append/672562846 var400 "\u0027}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var400!1 String)
(assert (= var400!1 (str.++ var400 "\u0027}")))
(assert true)
(define-const var548 String (toString/-2075883882 var3953)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var2169-to-var1375=([java.time.OffsetTime], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var51=org.hibernate.type.OffsetTimeType, var1239=r8, var2169=java.time.OffsetTime, var1498=r1, var3489=org.hibernate.dialect.Dialect, var1388=r9, var3261=$r0, var1487=$r4, var2296=java.time.format.DateTimeFormatter, var125=$r2, var1375=java.time.temporal.TemporalAccessor, var2153=$r3, var400=$r5, var3953=$r6, var548=$r7}
; {org.hibernate.type.OffsetTimeType=var51, r8=var1239, java.time.OffsetTime=var2169, r1=var1498, org.hibernate.dialect.Dialect=var3489, r9=var1388, $r0=var3261, $r4=var1487, java.time.format.DateTimeFormatter=var2296, $r2=var125, java.time.temporal.TemporalAccessor=var1375, $r3=var2153, $r5=var400, $r6=var3953, $r7=var548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.OffsetTimeType;	r1 := @parameter0: java.time.OffsetTime;	r9 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{t \'");	$r2 = <org.hibernate.type.OffsetTimeType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1