(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3938 0)
(declare-sort var589 0)
(declare-sort var1123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun criteria/181445796 (var3938) var589)
(declare-fun toString/-522406933 (var1123) String)
(declare-fun cast-from-var589-to-var1123 (var589) var1123)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3938 var3938)
(declare-const var3329 var3938) ; Statement: r1 := @this: org.hibernate.criterion.DetachedCriteria 
(assert (not (= var3329 null-var3938)))
(define-const var187 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var187)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var187!1 String)
(assert (= var187!1 ""))
(assert true)
(define-const var2873 String (append/672562846 var187!1 "DetachableCriteria(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DetachableCriteria(") 
(declare-const var187!2 String)
(assert (= var187!2 (str.++ var187!1 "DetachableCriteria(")))
(define-const var1579 var589 (criteria/181445796 var3329)) ; Statement: $r2 = r1.<org.hibernate.criterion.DetachedCriteria: org.hibernate.Criteria criteria> 
(assert true)
(define-const var605 String (toString/-522406933 (cast-from-var589-to-var1123 var1579))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3137 String (append/672562846 var2873 var605)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2873!1 String)
(assert (= var2873!1 (str.++ var2873 var605)))
(assert true)
(define-const var491 String (append/-1166366385 var3137 41)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3137!1 String)
(assert (str.prefixof var3137 var3137!1))
(assert true)
(define-const var3381 String (toString/-2075883882 var491)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), criteria/181445796=([org.hibernate.criterion.DetachedCriteria], org.hibernate.Criteria), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var589-to-var1123=([org.hibernate.Criteria], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3938=org.hibernate.criterion.DetachedCriteria, var3329=r1, var187=$r0, var2873=$r4, var589=org.hibernate.Criteria, var1579=$r2, var1123=java.lang.Object, var605=$r3, var3137=$r5, var491=$r6, var3381=$r7}
; {org.hibernate.criterion.DetachedCriteria=var3938, r1=var3329, $r0=var187, $r4=var2873, org.hibernate.Criteria=var589, $r2=var1579, java.lang.Object=var1123, $r3=var605, $r5=var3137, $r6=var491, $r7=var3381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.DetachedCriteria;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DetachableCriteria(");	$r2 = r1.<org.hibernate.criterion.DetachedCriteria: org.hibernate.Criteria criteria>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1