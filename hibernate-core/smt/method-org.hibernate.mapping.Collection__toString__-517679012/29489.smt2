(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2807 0)
(declare-sort var953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var953) ClassObject)
(declare-fun cast-from-var2807-to-var953 (var2807) var953)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getRole/-486327642 (var2807) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2807 var2807)
(declare-const var3453 var2807) ; Statement: r1 := @this: org.hibernate.mapping.Collection 
(assert (not (= var3453 null-var2807)))
(define-const var801 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var801)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var801!1 String)
(assert (= var801!1 ""))
(assert true)
(define-const var3289 ClassObject (getClass/1258963082 (cast-from-var2807-to-var953 var3453))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2052 String (getName/-1958580599 var3289)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var285 String (append/672562846 var801!1 var2052)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var801!2 String)
(assert (= var801!2 (str.++ var801!1 var2052)))
(assert true)
(define-const var2174 String (append/-1166366385 var285 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var285!1 String)
(assert (str.prefixof var285 var285!1))
(assert true)
(define-const var1390 String (getRole/-486327642 var3453)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.mapping.Collection: java.lang.String getRole()>() 
(assert true)
(define-const var513 String (append/672562846 var2174 var1390)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2174!1 String)
(assert (= var2174!1 (str.++ var2174 var1390)))
(assert true)
(define-const var2123 String (append/-1166366385 var513 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var513!1 String)
(assert (str.prefixof var513 var513!1))
(assert true)
(define-const var3740 String (toString/-2075883882 var2123)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2807-to-var953=([org.hibernate.mapping.Collection], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2807=org.hibernate.mapping.Collection, var3453=r1, var801=$r0, var953=java.lang.Object, var3289=$r2, var2052=$r3, var285=$r4, var2174=$r6, var1390=$r5, var513=$r7, var2123=$r8, var3740=$r9}
; {org.hibernate.mapping.Collection=var2807, r1=var3453, $r0=var801, java.lang.Object=var953, $r2=var3289, $r3=var2052, $r4=var285, $r6=var2174, $r5=var1390, $r7=var513, $r8=var2123, $r9=var3740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Collection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.mapping.Collection: java.lang.String getRole()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1