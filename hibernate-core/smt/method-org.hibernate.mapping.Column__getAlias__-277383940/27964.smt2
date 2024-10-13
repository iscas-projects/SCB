(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2834 0)
(declare-sort var799 0)
(declare-sort var2639 0)
(declare-sort var3437 0)
(declare-sort var584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/568060284 (var2834) String)
(declare-fun var2639_lastIndexOfLetter/1941564316 (String) Int)
(declare-fun uniqueInteger/568060284 (var2834) Int)
(declare-fun var3437_get/91882594 (Int) String)
(declare-fun toLowerCase/1946809429 (String var584) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getMaxAliasLength/-1969849048 (var799) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2834 var2834)
(declare-const null-var799 var799)
(declare-const var584-ROOT var584)
(declare-const var365 var2834) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var365 null-var2834)))
(declare-const var1200 var799) ; Statement: r5 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var1200 null-var799)))
(define-const var1912 String (name/568060284 var365)) ; Statement: $r1 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(define-const var1601 Int (var2639_lastIndexOfLetter/1941564316 var1912)) ; Statement: i0 = staticinvoke <org.hibernate.internal.util.StringHelper: int lastIndexOfLetter(java.lang.String)>($r1) 
(define-const var2552 Int (uniqueInteger/568060284 var365)) ; Statement: $i1 = r0.<org.hibernate.mapping.Column: int uniqueInteger> 
(define-const var2118 String (var3437_get/91882594 var2552)) ; Statement: r2 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i1) 
(define-const var1449 String (name/568060284 var365)) ; Statement: $r4 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(define-const var912 var584 var584-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var969 String (toLowerCase/1946809429 var1449 var912)) ; Statement: r13 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var489 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if i0 != $i20 goto $i3 = virtualinvoke r13.<java.lang.String: int length()>() 
(assert (not (not (= var1601 var489)))) ; Negate: Cond: i0 != $i20  
(define-const var969!1 String "column") ; Statement: r13 = "column" 
 ; Statement: goto [?= $r14 = r0.<org.hibernate.mapping.Column: java.lang.String name>] 
(assert true) ; Non Conditional
(define-const var3703 String (name/568060284 var365)) ; Statement: $r14 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true)
(define-const var3082 Int (length/-134980193 var3703)) ; Statement: $i15 = virtualinvoke $r14.<java.lang.String: int length()>() 
(assert true)
(define-const var1646 Int (length/-134980193 var2118)) ; Statement: $i16 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2868 Int (+ var3082 var1646)) ; Statement: $i17 = $i15 + $i16 
(assert true)
(define-const var2580 Int (getMaxAliasLength/-1969849048 var1200)) ; Statement: $i18 = virtualinvoke r5.<org.hibernate.dialect.Dialect: int getMaxAliasLength()>() 
 ; Statement: if $i17 > $i18 goto $z2 = 0 
(assert (> var2868 var2580)) ; Cond: $i17 > $i18 
(define-const var2828 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $r20 = new java.lang.StringBuilder 
(assert (not (= (ite var2828 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2786 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2786)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2786!1 String)
(assert (= var2786!1 ""))
(assert true)
(define-const var1197 String (append/672562846 var2786!1 var969!1)) ; Statement: $r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var2786!2 String)
(assert (= var2786!2 (str.++ var2786!1 var969!1)))
(assert true)
(define-const var441 String (append/672562846 var1197 var2118)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1197!1 String)
(assert (= var1197!1 (str.++ var1197 var2118)))
(assert true)
(define-const var1817 String (toString/-2075883882 var441)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {name/568060284=([org.hibernate.mapping.Column], java.lang.String), var2639_lastIndexOfLetter/1941564316=([java.lang.String], int), uniqueInteger/568060284=([org.hibernate.mapping.Column], int), var3437_get/91882594=([int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), getMaxAliasLength/-1969849048=([org.hibernate.dialect.Dialect], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2834=org.hibernate.mapping.Column, var365=r0, var799=org.hibernate.dialect.Dialect, var1200=r5, var1912=$r1, var2639=org.hibernate.internal.util.StringHelper, var1601=i0, var2552=$i1, var3437=org.hibernate.loader.internal.AliasConstantsHelper, var2118=r2, var1449=$r4, var584=java.util.Locale, var912=$r3, var969=r13, var489=$i20, var3703=$r14, var3082=$i15, var1646=$i16, var2868=$i17, var2580=$i18, var2828=$z2, var2786=$r20, var1197=$r16, var441=$r17, var1817=$r18}
; {org.hibernate.mapping.Column=var2834, r0=var365, org.hibernate.dialect.Dialect=var799, r5=var1200, $r1=var1912, org.hibernate.internal.util.StringHelper=var2639, i0=var1601, $i1=var2552, org.hibernate.loader.internal.AliasConstantsHelper=var3437, r2=var2118, $r4=var1449, java.util.Locale=var584, $r3=var912, r13=var969, $i20=var489, $r14=var3703, $i15=var3082, $i16=var1646, $i17=var2868, $i18=var2580, $z2=var2828, $r20=var2786, $r16=var1197, $r17=var441, $r18=var1817}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	r5 := @parameter0: org.hibernate.dialect.Dialect;	$r1 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	i0 = staticinvoke <org.hibernate.internal.util.StringHelper: int lastIndexOfLetter(java.lang.String)>($r1);	$i1 = r0.<org.hibernate.mapping.Column: int uniqueInteger>;	r2 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i1);	$r4 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	r13 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$i20 = (int) -1;	if i0 != $i20 goto $i3 = virtualinvoke r13.<java.lang.String: int length()>();	r13 = "column";	goto [?= $r14 = r0.<org.hibernate.mapping.Column: java.lang.String name>];	$r14 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$i15 = virtualinvoke $r14.<java.lang.String: int length()>();	$i16 = virtualinvoke r2.<java.lang.String: int length()>();	$i17 = $i15 + $i16;	$i18 = virtualinvoke r5.<org.hibernate.dialect.Dialect: int getMaxAliasLength()>();	if $i17 > $i18 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 6