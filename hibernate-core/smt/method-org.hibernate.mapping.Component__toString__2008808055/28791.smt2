(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3357 0)
(declare-sort var1920 0)
(declare-sort var2586 0)
(declare-sort var3463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1920) ClassObject)
(declare-fun cast-from-var3357-to-var1920 (var3357) var1920)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun properties/1659079959 (var3357) var2586)
(declare-fun toString/225271224 (var3463) String)
(declare-fun cast-from-var2586-to-var3463 (var2586) var3463)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3357 var3357)
(declare-const var3591 var3357) ; Statement: r1 := @this: org.hibernate.mapping.Component 
(assert (not (= var3591 null-var3357)))
(define-const var783 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var783)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var783!1 String)
(assert (= var783!1 ""))
(assert true)
(define-const var2115 ClassObject (getClass/1258963082 (cast-from-var3357-to-var1920 var3591))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var127 String (getName/-1958580599 var2115)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3082 String (append/672562846 var783!1 var127)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var783!2 String)
(assert (= var783!2 (str.++ var783!1 var127)))
(assert true)
(define-const var3827 String (append/-1166366385 var3082 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3082!1 String)
(assert (str.prefixof var3082 var3082!1))
(define-const var679 var2586 (properties/1659079959 var3591)) ; Statement: $r5 = r1.<org.hibernate.mapping.Component: java.util.ArrayList properties> 
(assert true)
(define-const var605 String (toString/225271224 (cast-from-var2586-to-var3463 var679))) ; Statement: $r6 = virtualinvoke $r5.<java.util.ArrayList: java.lang.String toString()>() 
(assert true)
(define-const var1692 String (append/672562846 var3827 var605)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3827!1 String)
(assert (= var3827!1 (str.++ var3827 var605)))
(assert true)
(define-const var3244 String (append/-1166366385 var1692 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1692!1 String)
(assert (str.prefixof var1692 var1692!1))
(assert true)
(define-const var3696 String (toString/-2075883882 var3244)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3357-to-var1920=([org.hibernate.mapping.Component], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), properties/1659079959=([org.hibernate.mapping.Component], java.util.ArrayList), toString/225271224=([java.util.AbstractCollection], java.lang.String), cast-from-var2586-to-var3463=([java.util.ArrayList], java.util.AbstractCollection), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3357=org.hibernate.mapping.Component, var3591=r1, var783=$r0, var1920=java.lang.Object, var2115=$r2, var127=$r3, var3082=$r4, var3827=$r7, var2586=java.util.ArrayList, var679=$r5, var3463=java.util.AbstractCollection, var605=$r6, var1692=$r8, var3244=$r9, var3696=$r10}
; {org.hibernate.mapping.Component=var3357, r1=var3591, $r0=var783, java.lang.Object=var1920, $r2=var2115, $r3=var127, $r4=var3082, $r7=var3827, java.util.ArrayList=var2586, $r5=var679, java.util.AbstractCollection=var3463, $r6=var605, $r8=var1692, $r9=var3244, $r10=var3696}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.util.AbstractCollection: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Component;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.mapping.Component: java.util.ArrayList properties>;	$r6 = virtualinvoke $r5.<java.util.ArrayList: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1