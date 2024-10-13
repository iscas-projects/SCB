(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-703916800 (var2264) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2264 var2264)
(declare-const null-String String)
(declare-const var3121 var2264) ; Statement: r1 := @this: org.hibernate.dialect.SybaseASE157Dialect 
(assert (not (= var3121 null-var2264)))
(declare-const var1306 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1306 null-String)))
(define-const var3534 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3534)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3534!1 String)
(assert (= var3534!1 ""))
(assert true)
(define-const var1827 String (getForUpdateString/-703916800 var3121)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.SybaseASE157Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var394 String (append/672562846 var3534!1 var1827)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3534!2 String)
(assert (= var3534!2 (str.++ var3534!1 var1827)))
(assert true)
(define-const var1703 String (append/672562846 var394 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var394!1 String)
(assert (= var394!1 (str.++ var394 " of ")))
(assert true)
(define-const var3766 String (append/672562846 var1703 var1306)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 var1306)))
(assert true)
(define-const var2984 String (toString/-2075883882 var3766)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-703916800=([org.hibernate.dialect.SybaseASE157Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2264=org.hibernate.dialect.SybaseASE157Dialect, var3121=r1, var1306=r4, var2693=null_type, var3534=$r0, var1827=$r2, var394=$r3, var1703=$r5, var3766=$r6, var2984=$r7}
; {org.hibernate.dialect.SybaseASE157Dialect=var2264, r1=var3121, r4=var1306, null_type=var2693, $r0=var3534, $r2=var1827, $r3=var394, $r5=var1703, $r6=var3766, $r7=var2984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.SybaseASE157Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.SybaseASE157Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1