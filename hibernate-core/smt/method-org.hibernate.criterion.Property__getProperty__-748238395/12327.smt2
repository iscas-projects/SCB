(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3229 0)
(declare-sort var3218 0)
(declare-sort var978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPropertyName/985749897 (var978) String)
(declare-fun cast-from-var3229-to-var978 (var3229) var978)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3229_forName/-1529871748 (String) var3229)
(declare-const null-var3229 var3229)
(declare-const null-String String)
(declare-const var1278 var3229) ; Statement: r1 := @this: org.hibernate.criterion.Property 
(assert (not (= var1278 null-var3229)))
(declare-const var663 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var663 null-String)))
(define-const var2262 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2262)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2262!1 String)
(assert (= var2262!1 ""))
(assert true)
(define-const var607 String (getPropertyName/985749897 (cast-from-var3229-to-var978 var1278))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.criterion.Property: java.lang.String getPropertyName()>() 
(assert true)
(define-const var2123 String (append/672562846 var2262!1 var607)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2262!2 String)
(assert (= var2262!2 (str.++ var2262!1 var607)))
(assert true)
(define-const var3553 String (append/-1166366385 var2123 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2123!1 String)
(assert (str.prefixof var2123 var2123!1))
(assert true)
(define-const var2235 String (append/672562846 var3553 var663)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3553!1 String)
(assert (= var3553!1 (str.++ var3553 var663)))
(assert true)
(define-const var3667 String (toString/-2075883882 var2235)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3049 var3229 (var3229_forName/-1529871748 var3667)) ; Statement: $r8 = staticinvoke <org.hibernate.criterion.Property: org.hibernate.criterion.Property forName(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPropertyName/985749897=([org.hibernate.criterion.PropertyProjection], java.lang.String), cast-from-var3229-to-var978=([org.hibernate.criterion.Property], org.hibernate.criterion.PropertyProjection), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3229_forName/-1529871748=([java.lang.String], org.hibernate.criterion.Property)}
; {var3229=org.hibernate.criterion.Property, var1278=r1, var663=r4, var3218=null_type, var2262=$r0, var978=org.hibernate.criterion.PropertyProjection, var607=$r2, var2123=$r3, var3553=$r5, var2235=$r6, var3667=$r7, var3049=$r8}
; {org.hibernate.criterion.Property=var3229, r1=var1278, r4=var663, null_type=var3218, $r0=var2262, org.hibernate.criterion.PropertyProjection=var978, $r2=var607, $r3=var2123, $r5=var3553, $r6=var2235, $r7=var3667, $r8=var3049}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.Property;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.criterion.Property: java.lang.String getPropertyName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.hibernate.criterion.Property: org.hibernate.criterion.Property forName(java.lang.String)>($r7);	return $r8
;block_num 1