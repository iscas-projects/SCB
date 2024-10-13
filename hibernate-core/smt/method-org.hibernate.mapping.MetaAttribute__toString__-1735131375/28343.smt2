(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var2093 0)
(declare-sort var2375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1365672655 (var1707) String)
(declare-fun values/-1365672655 (var1707) var2093)
(declare-fun append/-1031950772 (String var2375) String)
(declare-fun cast-from-var2093-to-var2375 (var2093) var2375)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1707 var1707)
(declare-const var2014 var1707) ; Statement: r1 := @this: org.hibernate.mapping.MetaAttribute 
(assert (not (= var2014 null-var1707)))
(define-const var2937 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2937)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2937!1 String)
(assert (= var2937!1 ""))
(assert true)
(define-const var2229 String (append/672562846 var2937!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2937!2 String)
(assert (= var2937!2 (str.++ var2937!1 "[")))
(define-const var1024 String (name/-1365672655 var2014)) ; Statement: $r2 = r1.<org.hibernate.mapping.MetaAttribute: java.lang.String name> 
(assert true)
(define-const var2691 String (append/672562846 var2229 var1024)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2229!1 String)
(assert (= var2229!1 (str.++ var2229 var1024)))
(assert true)
(define-const var398 String (append/672562846 var2691 "=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var2691!1 String)
(assert (= var2691!1 (str.++ var2691 "=")))
(define-const var1098 var2093 (values/-1365672655 var2014)) ; Statement: $r5 = r1.<org.hibernate.mapping.MetaAttribute: java.util.List values> 
(assert true)
(define-const var2241 String (append/-1031950772 var398 (cast-from-var2093-to-var2375 var1098))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var398!1 String)
(assert (str.prefixof var398 var398!1))
(assert true)
(define-const var149 String (append/672562846 var2241 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2241!1 String)
(assert (= var2241!1 (str.++ var2241 "]")))
(assert true)
(define-const var3868 String (toString/-2075883882 var149)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1365672655=([org.hibernate.mapping.MetaAttribute], java.lang.String), values/-1365672655=([org.hibernate.mapping.MetaAttribute], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2093-to-var2375=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1707=org.hibernate.mapping.MetaAttribute, var2014=r1, var2937=$r0, var2229=$r3, var1024=$r2, var2691=$r4, var398=$r6, var2093=java.util.List, var1098=$r5, var2375=java.lang.Object, var2241=$r7, var149=$r8, var3868=$r9}
; {org.hibernate.mapping.MetaAttribute=var1707, r1=var2014, $r0=var2937, $r3=var2229, $r2=var1024, $r4=var2691, $r6=var398, java.util.List=var2093, $r5=var1098, java.lang.Object=var2375, $r7=var2241, $r8=var149, $r9=var3868}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.MetaAttribute;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = r1.<org.hibernate.mapping.MetaAttribute: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r5 = r1.<org.hibernate.mapping.MetaAttribute: java.util.List values>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1