(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var381 0)
(declare-sort var2524 0)
(declare-sort var1530 0)
(declare-sort var3906 0)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/568060284 (var381) String)
(declare-fun var1530_lastIndexOfLetter/1941564316 (String) Int)
(declare-fun uniqueInteger/568060284 (var381) Int)
(declare-fun var3906_get/91882594 (Int) String)
(declare-fun toLowerCase/1946809429 (String var1025) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getMaxAliasLength/-1969849048 (var2524) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var381 var381)
(declare-const null-var2524 var2524)
(declare-const var1025-ROOT var1025)
(declare-const var2467 var381) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var2467 null-var381)))
(declare-const var1143 var2524) ; Statement: r5 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var1143 null-var2524)))
(define-const var864 String (name/568060284 var2467)) ; Statement: $r1 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(define-const var3691 Int (var1530_lastIndexOfLetter/1941564316 var864)) ; Statement: i0 = staticinvoke <org.hibernate.internal.util.StringHelper: int lastIndexOfLetter(java.lang.String)>($r1) 
(define-const var2368 Int (uniqueInteger/568060284 var2467)) ; Statement: $i1 = r0.<org.hibernate.mapping.Column: int uniqueInteger> 
(define-const var1106 String (var3906_get/91882594 var2368)) ; Statement: r2 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i1) 
(define-const var3374 String (name/568060284 var2467)) ; Statement: $r4 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(define-const var1694 var1025 var1025-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1735 String (toLowerCase/1946809429 var3374 var1694)) ; Statement: r13 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var2622 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if i0 != $i20 goto $i3 = virtualinvoke r13.<java.lang.String: int length()>() 
(assert (not (= var3691 var2622))) ; Cond: i0 != $i20 
(assert true)
(define-const var3220 Int (length/-134980193 var1735)) ; Statement: $i3 = virtualinvoke r13.<java.lang.String: int length()>() 
(define-const var1682 Int (+ var3691 1)) ; Statement: $i2 = i0 + 1 
 ; Statement: if $i3 <= $i2 goto $r14 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (<= var3220 var1682)) ; Cond: $i3 <= $i2 
(define-const var2821 String (name/568060284 var2467)) ; Statement: $r14 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true)
(define-const var518 Int (length/-134980193 var2821)) ; Statement: $i15 = virtualinvoke $r14.<java.lang.String: int length()>() 
(assert true)
(define-const var448 Int (length/-134980193 var1106)) ; Statement: $i16 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3281 Int (+ var518 var448)) ; Statement: $i17 = $i15 + $i16 
(assert true)
(define-const var3710 Int (getMaxAliasLength/-1969849048 var1143)) ; Statement: $i18 = virtualinvoke r5.<org.hibernate.dialect.Dialect: int getMaxAliasLength()>() 
 ; Statement: if $i17 > $i18 goto $z2 = 0 
(assert (> var3281 var3710)) ; Cond: $i17 > $i18 
(define-const var3504 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $r20 = new java.lang.StringBuilder 
(assert (not (= (ite var3504 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1156 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1156)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1156!1 String)
(assert (= var1156!1 ""))
(assert true)
(define-const var2515 String (append/672562846 var1156!1 var1735)) ; Statement: $r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var1156!2 String)
(assert (= var1156!2 (str.++ var1156!1 var1735)))
(assert true)
(define-const var2367 String (append/672562846 var2515 var1106)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2515!1 String)
(assert (= var2515!1 (str.++ var2515 var1106)))
(assert true)
(define-const var1116 String (toString/-2075883882 var2367)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {name/568060284=([org.hibernate.mapping.Column], java.lang.String), var1530_lastIndexOfLetter/1941564316=([java.lang.String], int), uniqueInteger/568060284=([org.hibernate.mapping.Column], int), var3906_get/91882594=([int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), getMaxAliasLength/-1969849048=([org.hibernate.dialect.Dialect], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var381=org.hibernate.mapping.Column, var2467=r0, var2524=org.hibernate.dialect.Dialect, var1143=r5, var864=$r1, var1530=org.hibernate.internal.util.StringHelper, var3691=i0, var2368=$i1, var3906=org.hibernate.loader.internal.AliasConstantsHelper, var1106=r2, var3374=$r4, var1025=java.util.Locale, var1694=$r3, var1735=r13, var2622=$i20, var3220=$i3, var1682=$i2, var2821=$r14, var518=$i15, var448=$i16, var3281=$i17, var3710=$i18, var3504=$z2, var1156=$r20, var2515=$r16, var2367=$r17, var1116=$r18}
; {org.hibernate.mapping.Column=var381, r0=var2467, org.hibernate.dialect.Dialect=var2524, r5=var1143, $r1=var864, org.hibernate.internal.util.StringHelper=var1530, i0=var3691, $i1=var2368, org.hibernate.loader.internal.AliasConstantsHelper=var3906, r2=var1106, $r4=var3374, java.util.Locale=var1025, $r3=var1694, r13=var1735, $i20=var2622, $i3=var3220, $i2=var1682, $r14=var2821, $i15=var518, $i16=var448, $i17=var3281, $i18=var3710, $z2=var3504, $r20=var1156, $r16=var2515, $r17=var2367, $r18=var1116}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	r5 := @parameter0: org.hibernate.dialect.Dialect;	$r1 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	i0 = staticinvoke <org.hibernate.internal.util.StringHelper: int lastIndexOfLetter(java.lang.String)>($r1);	$i1 = r0.<org.hibernate.mapping.Column: int uniqueInteger>;	r2 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i1);	$r4 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	r13 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$i20 = (int) -1;	if i0 != $i20 goto $i3 = virtualinvoke r13.<java.lang.String: int length()>();	$i3 = virtualinvoke r13.<java.lang.String: int length()>();	$i2 = i0 + 1;	if $i3 <= $i2 goto $r14 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r14 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$i15 = virtualinvoke $r14.<java.lang.String: int length()>();	$i16 = virtualinvoke r2.<java.lang.String: int length()>();	$i17 = $i15 + $i16;	$i18 = virtualinvoke r5.<org.hibernate.dialect.Dialect: int getMaxAliasLength()>();	if $i17 > $i18 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 6