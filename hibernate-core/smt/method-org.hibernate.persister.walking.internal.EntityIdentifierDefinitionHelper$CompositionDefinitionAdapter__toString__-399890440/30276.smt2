(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1807519815 (var794) String)
(declare-fun cast-from-var1327-to-var794 (var1327) var794)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1327 var1327)
(declare-const var2765 var1327) ; Statement: r1 := @this: org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter 
(assert (not (= var2765 null-var1327)))
(define-const var977 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var977)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var977!1 String)
(assert (= var977!1 ""))
(assert true)
(define-const var193 String (append/672562846 var977!1 "<identifier-property:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<identifier-property:") 
(declare-const var977!2 String)
(assert (= var977!2 (str.++ var977!1 "<identifier-property:")))
(assert true)
(define-const var2375 String (getName/1807519815 (cast-from-var1327-to-var794 var2765))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter: java.lang.String getName()>() 
(assert true)
(define-const var1890 String (append/672562846 var193 var2375)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 var2375)))
(assert true)
(define-const var1819 String (append/672562846 var1890 ">")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1890!1 String)
(assert (= var1890!1 (str.++ var1890 ">")))
(assert true)
(define-const var57 String (toString/-2075883882 var1819)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1807519815=([org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter], java.lang.String), cast-from-var1327-to-var794=([org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter], org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1327=org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter, var2765=r1, var977=$r0, var193=$r3, var794=org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter, var2375=$r2, var1890=$r4, var1819=$r5, var57=$r6}
; {org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter=var1327, r1=var2765, $r0=var977, $r3=var193, org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$AttributeDefinitionAdapter=var794, $r2=var2375, $r4=var1890, $r5=var1819, $r6=var57}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<identifier-property:");	$r2 = virtualinvoke r1.<org.hibernate.persister.walking.internal.EntityIdentifierDefinitionHelper$CompositionDefinitionAdapter: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1