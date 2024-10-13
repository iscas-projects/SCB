(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort var2965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1469451909 (var2014) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ascending/-1469451909 (var2014) Bool)
(declare-fun nullPrecedence/-1469451909 (var2014) var2965)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2014 var2014)
(declare-const null-var2965 var2965)
(declare-const var3941 var2014) ; Statement: r1 := @this: org.hibernate.criterion.Order 
(assert (not (= var3941 null-var2014)))
(define-const var2559 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2559)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2559!1 String)
(assert (= var2559!1 ""))
(define-const var131 String (propertyName/-1469451909 var3941)) ; Statement: $r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName> 
(assert true)
(define-const var116 String (append/672562846 var2559!1 var131)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2559!2 String)
(assert (= var2559!2 (str.++ var2559!1 var131)))
(assert true)
(define-const var533 String (append/-1166366385 var116 32)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var116!1 String)
(assert (str.prefixof var116 var116!1))
(define-const var3090 Bool (ascending/-1469451909 var3941)) ; Statement: $z0 = r1.<org.hibernate.criterion.Order: boolean ascending> 
 ; Statement: if $z0 == 0 goto $r16 = "desc" 
(assert (= (ite var3090 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2352 String "desc") ; Statement: $r16 = "desc" 
(assert true) ; Non Conditional
(assert true)
(define-const var532 String (append/672562846 var533 var2352)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var533!1 String)
(assert (= var533!1 (str.++ var533 var2352)))
(define-const var34 var2965 (nullPrecedence/-1469451909 var3941)) ; Statement: $r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence> 
 ; Statement: if $r5 == null goto $r17 = "" 
(assert (= var34 null-var2965)) ; Cond: $r5 == null 
(define-const var2773 String "") ; Statement: $r17 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2031 String (append/672562846 var532 var2773)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 var2773)))
(assert true)
(define-const var817 String (toString/-2075883882 var2031)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1469451909=([org.hibernate.criterion.Order], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ascending/-1469451909=([org.hibernate.criterion.Order], boolean), nullPrecedence/-1469451909=([org.hibernate.criterion.Order], org.hibernate.NullPrecedence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2014=org.hibernate.criterion.Order, var3941=r1, var2559=$r0, var131=$r2, var116=$r3, var533=$r4, var3090=$z0, var2352=$r16, var532=$r6, var2965=org.hibernate.NullPrecedence, var34=$r5, var2773=$r17, var2031=$r7, var817=$r8}
; {org.hibernate.criterion.Order=var2014, r1=var3941, $r0=var2559, $r2=var131, $r3=var116, $r4=var533, $z0=var3090, $r16=var2352, $r6=var532, org.hibernate.NullPrecedence=var2965, $r5=var34, $r17=var2773, $r7=var2031, $r8=var817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.Order;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = r1.<org.hibernate.criterion.Order: boolean ascending>;	if $z0 == 0 goto $r16 = "desc";	$r16 = "desc";	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence>;	if $r5 == null goto $r17 = "";	$r17 = "";	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5