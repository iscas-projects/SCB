(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2317 0)
(declare-sort var3808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1469451909 (var2317) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ascending/-1469451909 (var2317) Bool)
(declare-fun nullPrecedence/-1469451909 (var2317) var3808)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2317 var2317)
(declare-const null-var3808 var3808)
(declare-const var2757 var2317) ; Statement: r1 := @this: org.hibernate.criterion.Order 
(assert (not (= var2757 null-var2317)))
(define-const var392 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var392)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var392!1 String)
(assert (= var392!1 ""))
(define-const var28 String (propertyName/-1469451909 var2757)) ; Statement: $r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName> 
(assert true)
(define-const var2255 String (append/672562846 var392!1 var28)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var392!2 String)
(assert (= var392!2 (str.++ var392!1 var28)))
(assert true)
(define-const var1861 String (append/-1166366385 var2255 32)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2255!1 String)
(assert (str.prefixof var2255 var2255!1))
(define-const var173 Bool (ascending/-1469451909 var2757)) ; Statement: $z0 = r1.<org.hibernate.criterion.Order: boolean ascending> 
 ; Statement: if $z0 == 0 goto $r16 = "desc" 
(assert (not (= (ite var173 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1138 String "asc") ; Statement: $r16 = "asc" 
 ; Statement: goto [?= $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2515 String (append/672562846 var1861 var1138)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1861!1 String)
(assert (= var1861!1 (str.++ var1861 var1138)))
(define-const var2569 var3808 (nullPrecedence/-1469451909 var2757)) ; Statement: $r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence> 
 ; Statement: if $r5 == null goto $r17 = "" 
(assert (= var2569 null-var3808)) ; Cond: $r5 == null 
(define-const var1499 String "") ; Statement: $r17 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1021 String (append/672562846 var2515 var1499)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2515!1 String)
(assert (= var2515!1 (str.++ var2515 var1499)))
(assert true)
(define-const var183 String (toString/-2075883882 var1021)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1469451909=([org.hibernate.criterion.Order], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ascending/-1469451909=([org.hibernate.criterion.Order], boolean), nullPrecedence/-1469451909=([org.hibernate.criterion.Order], org.hibernate.NullPrecedence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2317=org.hibernate.criterion.Order, var2757=r1, var392=$r0, var28=$r2, var2255=$r3, var1861=$r4, var173=$z0, var1138=$r16, var2515=$r6, var3808=org.hibernate.NullPrecedence, var2569=$r5, var1499=$r17, var1021=$r7, var183=$r8}
; {org.hibernate.criterion.Order=var2317, r1=var2757, $r0=var392, $r2=var28, $r3=var2255, $r4=var1861, $z0=var173, $r16=var1138, $r6=var2515, org.hibernate.NullPrecedence=var3808, $r5=var2569, $r17=var1499, $r7=var1021, $r8=var183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.Order;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = r1.<org.hibernate.criterion.Order: boolean ascending>;	if $z0 == 0 goto $r16 = "desc";	$r16 = "asc";	goto [?= $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)];	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence>;	if $r5 == null goto $r17 = "";	$r17 = "";	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5