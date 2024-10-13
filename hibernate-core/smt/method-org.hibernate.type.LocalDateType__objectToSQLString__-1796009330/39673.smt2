(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3694 0)
(declare-sort var3660 0)
(declare-sort var1502 0)
(declare-sort var1380 0)
(declare-sort var2931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1646058768 (var1380 var2931) String)
(declare-fun cast-from-var3660-to-var2931 (var3660) var2931)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3694 var3694)
(declare-const null-var3660 var3660)
(declare-const null-var1502 var1502)
(declare-const var3694-FORMATTER var1380)
(declare-const var2665 var3694) ; Statement: r8 := @this: org.hibernate.type.LocalDateType 
(assert (not (= var2665 null-var3694)))
(declare-const var2142 var3660) ; Statement: r1 := @parameter0: java.time.LocalDate 
(assert (not (= var2142 null-var3660)))
(declare-const var602 var1502) ; Statement: r9 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var602 null-var1502)))
(define-const var859 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var859)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var859!1 String)
(assert (= var859!1 ""))
(assert true)
(define-const var275 String (append/672562846 var859!1 "{d \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{d \'") 
(declare-const var859!2 String)
(assert (= var859!2 (str.++ var859!1 "{d \u0027")))
(define-const var2752 var1380 var3694-FORMATTER) ; Statement: $r2 = <org.hibernate.type.LocalDateType: java.time.format.DateTimeFormatter FORMATTER> 
(assert true)
(define-const var1351 String (format/-1646058768 var2752 (cast-from-var3660-to-var2931 var2142))) ; Statement: $r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1) 
(assert true)
(define-const var796 String (append/672562846 var275 var1351)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var275!1 String)
(assert (= var275!1 (str.++ var275 var1351)))
(assert true)
(define-const var288 String (append/672562846 var796 "\u0027}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}") 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 "\u0027}")))
(assert true)
(define-const var3474 String (toString/-2075883882 var288)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), format/-1646058768=([java.time.format.DateTimeFormatter, java.time.temporal.TemporalAccessor], java.lang.String), cast-from-var3660-to-var2931=([java.time.LocalDate], java.time.temporal.TemporalAccessor), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3694=org.hibernate.type.LocalDateType, var2665=r8, var3660=java.time.LocalDate, var2142=r1, var1502=org.hibernate.dialect.Dialect, var602=r9, var859=$r0, var275=$r4, var1380=java.time.format.DateTimeFormatter, var2752=$r2, var2931=java.time.temporal.TemporalAccessor, var1351=$r3, var796=$r5, var288=$r6, var3474=$r7}
; {org.hibernate.type.LocalDateType=var3694, r8=var2665, java.time.LocalDate=var3660, r1=var2142, org.hibernate.dialect.Dialect=var1502, r9=var602, $r0=var859, $r4=var275, java.time.format.DateTimeFormatter=var1380, $r2=var2752, java.time.temporal.TemporalAccessor=var2931, $r3=var1351, $r5=var796, $r6=var288, $r7=var3474}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.LocalDateType;	r1 := @parameter0: java.time.LocalDate;	r9 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{d \'");	$r2 = <org.hibernate.type.LocalDateType: java.time.format.DateTimeFormatter FORMATTER>;	$r3 = virtualinvoke $r2.<java.time.format.DateTimeFormatter: java.lang.String format(java.time.temporal.TemporalAccessor)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1