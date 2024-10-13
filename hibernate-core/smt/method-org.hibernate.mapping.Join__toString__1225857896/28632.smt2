(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort var3504 0)
(declare-sort var1222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3504) ClassObject)
(declare-fun cast-from-var2291-to-var3504 (var2291) var3504)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun table/-682998576 (var2291) var1222)
(declare-fun toString/-658590584 (var1222) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2291 var2291)
(declare-const var914 var2291) ; Statement: r1 := @this: org.hibernate.mapping.Join 
(assert (not (= var914 null-var2291)))
(define-const var2296 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2296)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2296!1 String)
(assert (= var2296!1 ""))
(assert true)
(define-const var2640 ClassObject (getClass/1258963082 (cast-from-var2291-to-var3504 var914))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3594 String (getName/-1958580599 var2640)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2214 String (append/672562846 var2296!1 var3594)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2296!2 String)
(assert (= var2296!2 (str.++ var2296!1 var3594)))
(assert true)
(define-const var502 String (append/-1166366385 var2214 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2214!1 String)
(assert (str.prefixof var2214 var2214!1))
(define-const var2825 var1222 (table/-682998576 var914)) ; Statement: $r5 = r1.<org.hibernate.mapping.Join: org.hibernate.mapping.Table table> 
(assert true)
(define-const var3939 String (toString/-658590584 var2825)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: java.lang.String toString()>() 
(assert true)
(define-const var1574 String (append/672562846 var502 var3939)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var502!1 String)
(assert (= var502!1 (str.++ var502 var3939)))
(assert true)
(define-const var1050 String (append/-1166366385 var1574 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1574!1 String)
(assert (str.prefixof var1574 var1574!1))
(assert true)
(define-const var2652 String (toString/-2075883882 var1050)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2291-to-var3504=([org.hibernate.mapping.Join], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), table/-682998576=([org.hibernate.mapping.Join], org.hibernate.mapping.Table), toString/-658590584=([org.hibernate.mapping.Table], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2291=org.hibernate.mapping.Join, var914=r1, var2296=$r0, var3504=java.lang.Object, var2640=$r2, var3594=$r3, var2214=$r4, var502=$r7, var1222=org.hibernate.mapping.Table, var2825=$r5, var3939=$r6, var1574=$r8, var1050=$r9, var2652=$r10}
; {org.hibernate.mapping.Join=var2291, r1=var914, $r0=var2296, java.lang.Object=var3504, $r2=var2640, $r3=var3594, $r4=var2214, $r7=var502, org.hibernate.mapping.Table=var1222, $r5=var2825, $r6=var3939, $r8=var1574, $r9=var1050, $r10=var2652}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.hibernate.mapping.Table: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Join;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.mapping.Join: org.hibernate.mapping.Table table>;	$r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1