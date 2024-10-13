(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var2958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2958) ClassObject)
(declare-fun cast-from-var3151-to-var2958 (var3151) var2958)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/787382506 (var3151) String)
(declare-fun query/787382506 (var3151) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3151 var3151)
(declare-const var2341 var3151) ; Statement: r1 := @this: org.hibernate.engine.spi.NamedQueryDefinition 
(assert (not (= var2341 null-var3151)))
(define-const var3841 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3841)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3841!1 String)
(assert (= var3841!1 ""))
(assert true)
(define-const var236 ClassObject (getClass/1258963082 (cast-from-var3151-to-var2958 var2341))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var450 String (getName/-1958580599 var236)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1010 String (append/672562846 var3841!1 var450)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3841!2 String)
(assert (= var3841!2 (str.++ var3841!1 var450)))
(assert true)
(define-const var52 String (append/-1166366385 var1010 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1010!1 String)
(assert (str.prefixof var1010 var1010!1))
(define-const var3278 String (name/787382506 var2341)) ; Statement: $r5 = r1.<org.hibernate.engine.spi.NamedQueryDefinition: java.lang.String name> 
(assert true)
(define-const var629 String (append/672562846 var52 var3278)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var52!1 String)
(assert (= var52!1 (str.++ var52 var3278)))
(assert true)
(define-const var2244 String (append/672562846 var629 " [")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var629!1 String)
(assert (= var629!1 (str.++ var629 " [")))
(define-const var2784 String (query/787382506 var2341)) ; Statement: $r8 = r1.<org.hibernate.engine.spi.NamedQueryDefinition: java.lang.String query> 
(assert true)
(define-const var754 String (append/672562846 var2244 var2784)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 var2784)))
(assert true)
(define-const var689 String (append/672562846 var754 "])")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("])") 
(declare-const var754!1 String)
(assert (= var754!1 (str.++ var754 "])")))
(assert true)
(define-const var566 String (toString/-2075883882 var689)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3151-to-var2958=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/787382506=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.String), query/787382506=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3151=org.hibernate.engine.spi.NamedQueryDefinition, var2341=r1, var3841=$r0, var2958=java.lang.Object, var236=$r2, var450=$r3, var1010=$r4, var52=$r6, var3278=$r5, var629=$r7, var2244=$r9, var2784=$r8, var754=$r10, var689=$r11, var566=$r12}
; {org.hibernate.engine.spi.NamedQueryDefinition=var3151, r1=var2341, $r0=var3841, java.lang.Object=var2958, $r2=var236, $r3=var450, $r4=var1010, $r6=var52, $r5=var3278, $r7=var629, $r9=var2244, $r8=var2784, $r10=var754, $r11=var689, $r12=var566}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.NamedQueryDefinition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.engine.spi.NamedQueryDefinition: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r8 = r1.<org.hibernate.engine.spi.NamedQueryDefinition: java.lang.String query>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("])");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1