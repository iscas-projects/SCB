(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3575 0)
(declare-sort var1170 0)
(declare-sort var1030 0)
(declare-sort var2620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1170) ClassObject)
(declare-fun cast-from-var3575-to-var1170 (var3575) var1170)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTable/2028539592 (var3575) var1030)
(declare-fun getName/-1669825851 (var1030) String)
(declare-fun getColumns/401315641 (var3575) var2620)
(declare-fun append/-1031950772 (String var1170) String)
(declare-fun cast-from-var2620-to-var1170 (var2620) var1170)
(declare-fun name/148941059 (var3575) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3575 var3575)
(declare-const var178 var3575) ; Statement: r1 := @this: org.hibernate.mapping.Constraint 
(assert (not (= var178 null-var3575)))
(define-const var2477 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2477)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2477!1 String)
(assert (= var2477!1 ""))
(assert true)
(define-const var2692 ClassObject (getClass/1258963082 (cast-from-var3575-to-var1170 var178))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1717 String (getName/-1958580599 var2692)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1758 String (append/672562846 var2477!1 var1717)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2477!2 String)
(assert (= var2477!2 (str.++ var2477!1 var1717)))
(assert true)
(define-const var635 String (append/-1166366385 var1758 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1758!1 String)
(assert (str.prefixof var1758 var1758!1))
(assert true)
(define-const var2849 var1030 (getTable/2028539592 var178)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.mapping.Constraint: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var1803 String (getName/-1669825851 var2849)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
(define-const var1524 String (append/672562846 var635 var1803)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var635!1 String)
(assert (= var635!1 (str.++ var635 var1803)))
(assert true)
(define-const var1858 var2620 (getColumns/401315641 var178)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.mapping.Constraint: java.util.List getColumns()>() 
(assert true)
(define-const var1744 String (append/-1031950772 var1524 (cast-from-var2620-to-var1170 var1858))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1524!1 String)
(assert (str.prefixof var1524 var1524!1))
(assert true)
(define-const var3543 String (append/672562846 var1744 ") as ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") as ") 
(declare-const var1744!1 String)
(assert (= var1744!1 (str.++ var1744 ") as ")))
(define-const var2657 String (name/148941059 var178)) ; Statement: $r11 = r1.<org.hibernate.mapping.Constraint: java.lang.String name> 
(assert true)
(define-const var1966 String (append/672562846 var3543 var2657)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3543!1 String)
(assert (= var3543!1 (str.++ var3543 var2657)))
(assert true)
(define-const var660 String (toString/-2075883882 var1966)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3575-to-var1170=([org.hibernate.mapping.Constraint], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), getColumns/401315641=([org.hibernate.mapping.Constraint], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2620-to-var1170=([java.util.List], java.lang.Object), name/148941059=([org.hibernate.mapping.Constraint], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3575=org.hibernate.mapping.Constraint, var178=r1, var2477=$r0, var1170=java.lang.Object, var2692=$r2, var1717=$r3, var1758=$r4, var635=$r7, var1030=org.hibernate.mapping.Table, var2849=$r5, var1803=$r6, var1524=$r9, var2620=java.util.List, var1858=$r8, var1744=$r10, var3543=$r12, var2657=$r11, var1966=$r13, var660=$r14}
; {org.hibernate.mapping.Constraint=var3575, r1=var178, $r0=var2477, java.lang.Object=var1170, $r2=var2692, $r3=var1717, $r4=var1758, $r7=var635, org.hibernate.mapping.Table=var1030, $r5=var2849, $r6=var1803, $r9=var1524, java.util.List=var2620, $r8=var1858, $r10=var1744, $r12=var3543, $r11=var2657, $r13=var1966, $r14=var660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Constraint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.mapping.Constraint: org.hibernate.mapping.Table getTable()>();	$r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: java.lang.String getName()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke r1.<org.hibernate.mapping.Constraint: java.util.List getColumns()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") as ");	$r11 = r1.<org.hibernate.mapping.Constraint: java.lang.String name>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1