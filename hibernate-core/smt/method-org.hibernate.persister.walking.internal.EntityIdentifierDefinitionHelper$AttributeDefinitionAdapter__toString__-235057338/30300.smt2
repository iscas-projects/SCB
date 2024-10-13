(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1807519815 (var1295) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1295 var1295)
(declare-const var2354 var1295) ; Statement: r1 := @this: org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter 
(assert (not (= var2354 null-var1295)))
(define-const var3677 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3677)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3677!1 String)
(assert (= var3677!1 ""))
(assert true)
(define-const var1880 String (append/672562846 var3677!1 "<identifier-property:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<identifier-property:") 
(declare-const var3677!2 String)
(assert (= var3677!2 (str.++ var3677!1 "<identifier-property:")))
(assert true)
(define-const var542 String (getName/1807519815 var2354)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter: java.lang.String getName()>() 
(assert true)
(define-const var634 String (append/672562846 var1880 var542)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1880!1 String)
(assert (= var1880!1 (str.++ var1880 var542)))
(assert true)
(define-const var3528 String (append/672562846 var634 ">")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var634!1 String)
(assert (= var634!1 (str.++ var634 ">")))
(assert true)
(define-const var3011 String (toString/-2075883882 var3528)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1807519815=([org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1295=org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter, var2354=r1, var3677=$r0, var1880=$r3, var542=$r2, var634=$r4, var3528=$r5, var3011=$r6}
; {org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter=var1295, r1=var2354, $r0=var3677, $r3=var1880, $r2=var542, $r4=var634, $r5=var3528, $r6=var3011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<identifier-property:");	$r2 = virtualinvoke r1.<org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1