(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var3716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3716) ClassObject)
(declare-fun cast-from-var1752-to-var3716 (var1752) var3716)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun formula/-1197146112 (var1752) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1752 var1752)
(declare-const var544 var1752) ; Statement: r1 := @this: org.hibernate.mapping.Formula 
(assert (not (= var544 null-var1752)))
(define-const var1627 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1627)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1627!1 String)
(assert (= var1627!1 ""))
(assert true)
(define-const var1276 ClassObject (getClass/1258963082 (cast-from-var1752-to-var3716 var544))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1358 String (getName/-1958580599 var1276)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1884 String (append/672562846 var1627!1 var1358)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1627!2 String)
(assert (= var1627!2 (str.++ var1627!1 var1358)))
(assert true)
(define-const var3063 String (append/672562846 var1884 "( ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ") 
(declare-const var1884!1 String)
(assert (= var1884!1 (str.++ var1884 "( ")))
(define-const var825 String (formula/-1197146112 var544)) ; Statement: $r5 = r1.<org.hibernate.mapping.Formula: java.lang.String formula> 
(assert true)
(define-const var2502 String (append/672562846 var3063 var825)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3063!1 String)
(assert (= var3063!1 (str.++ var3063 var825)))
(assert true)
(define-const var1192 String (append/672562846 var2502 " )")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var2502!1 String)
(assert (= var2502!1 (str.++ var2502 " )")))
(assert true)
(define-const var1913 String (toString/-2075883882 var1192)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1752-to-var3716=([org.hibernate.mapping.Formula], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), formula/-1197146112=([org.hibernate.mapping.Formula], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1752=org.hibernate.mapping.Formula, var544=r1, var1627=$r0, var3716=java.lang.Object, var1276=$r2, var1358=$r3, var1884=$r4, var3063=$r6, var825=$r5, var2502=$r7, var1192=$r8, var1913=$r9}
; {org.hibernate.mapping.Formula=var1752, r1=var544, $r0=var1627, java.lang.Object=var3716, $r2=var1276, $r3=var1358, $r4=var1884, $r6=var3063, $r5=var825, $r7=var2502, $r8=var1192, $r9=var1913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Formula;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ");	$r5 = r1.<org.hibernate.mapping.Formula: java.lang.String formula>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1