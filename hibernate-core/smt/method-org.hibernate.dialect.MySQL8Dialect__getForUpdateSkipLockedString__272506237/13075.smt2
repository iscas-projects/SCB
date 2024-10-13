(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var3772 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1003225655 (var755) String)
(declare-fun cast-from-var486-to-var755 (var486) var755)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var486 var486)
(declare-const null-String String)
(declare-const var1418 var486) ; Statement: r1 := @this: org.hibernate.dialect.MySQL8Dialect 
(assert (not (= var1418 null-var486)))
(declare-const var2156 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2156 null-String)))
(define-const var171 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var171)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var171!1 String)
(assert (= var171!1 ""))
(assert true)
(define-const var86 String (getForUpdateString/-1003225655 (cast-from-var486-to-var755 var1418))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var3064 String (append/672562846 var171!1 var86)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var171!2 String)
(assert (= var171!2 (str.++ var171!1 var86)))
(assert true)
(define-const var1610 String (append/672562846 var3064 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 " of ")))
(assert true)
(define-const var1942 String (append/672562846 var1610 var2156)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1610!1 String)
(assert (= var1610!1 (str.++ var1610 var2156)))
(assert true)
(define-const var1190 String (append/672562846 var1942 " skip locked")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked") 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 " skip locked")))
(assert true)
(define-const var281 String (toString/-2075883882 var1190)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1003225655=([org.hibernate.dialect.MySQLDialect], java.lang.String), cast-from-var486-to-var755=([org.hibernate.dialect.MySQL8Dialect], org.hibernate.dialect.MySQLDialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var486=org.hibernate.dialect.MySQL8Dialect, var1418=r1, var2156=r4, var3772=null_type, var171=$r0, var755=org.hibernate.dialect.MySQLDialect, var86=$r2, var3064=$r3, var1610=$r5, var1942=$r6, var1190=$r7, var281=$r8}
; {org.hibernate.dialect.MySQL8Dialect=var486, r1=var1418, r4=var2156, null_type=var3772, $r0=var171, org.hibernate.dialect.MySQLDialect=var755, $r2=var86, $r3=var3064, $r5=var1610, $r6=var1942, $r7=var1190, $r8=var281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MySQL8Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1