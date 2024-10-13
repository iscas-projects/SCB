(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2532 0)
(declare-sort var22 0)
(declare-sort var1672 0)
(declare-sort var3683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1469451909 (var2532) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ascending/-1469451909 (var2532) Bool)
(declare-fun nullPrecedence/-1469451909 (var2532) var22)
(declare-fun name/1633728430 (var1672) String)
(declare-fun cast-from-var22-to-var1672 (var22) var1672)
(declare-fun toLowerCase/1946809429 (String var3683) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2532 var2532)
(declare-const null-var22 var22)
(declare-const var3683-ROOT var3683)
(declare-const var3788 var2532) ; Statement: r1 := @this: org.hibernate.criterion.Order 
(assert (not (= var3788 null-var2532)))
(define-const var3983 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3983)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3983!1 String)
(assert (= var3983!1 ""))
(define-const var1823 String (propertyName/-1469451909 var3788)) ; Statement: $r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName> 
(assert true)
(define-const var386 String (append/672562846 var3983!1 var1823)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3983!2 String)
(assert (= var3983!2 (str.++ var3983!1 var1823)))
(assert true)
(define-const var887 String (append/-1166366385 var386 32)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var386!1 String)
(assert (str.prefixof var386 var386!1))
(define-const var497 Bool (ascending/-1469451909 var3788)) ; Statement: $z0 = r1.<org.hibernate.criterion.Order: boolean ascending> 
 ; Statement: if $z0 == 0 goto $r16 = "desc" 
(assert (= (ite var497 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2609 String "desc") ; Statement: $r16 = "desc" 
(assert true) ; Non Conditional
(assert true)
(define-const var3861 String (append/672562846 var887 var2609)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var887!1 String)
(assert (= var887!1 (str.++ var887 var2609)))
(define-const var2865 var22 (nullPrecedence/-1469451909 var3788)) ; Statement: $r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence> 
 ; Statement: if $r5 == null goto $r17 = "" 
(assert (not (= var2865 null-var22))) ; Negate: Cond: $r5 == null  
(define-const var985 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var985)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var985!1 String)
(assert (= var985!1 ""))
(assert true)
(define-const var3515 String (append/-1166366385 var985!1 32)) ; Statement: $r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var985!2 String)
(assert (str.prefixof var985!1 var985!2))
(define-const var1189 var22 (nullPrecedence/-1469451909 var3788)) ; Statement: $r10 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence> 
(assert true)
(define-const var1852 String (name/1633728430 (cast-from-var22-to-var1672 var1189))) ; Statement: $r12 = virtualinvoke $r10.<org.hibernate.NullPrecedence: java.lang.String name()>() 
(define-const var3823 var3683 var3683-ROOT) ; Statement: $r11 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var467 String (toLowerCase/1946809429 var1852 var3823)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r11) 
(assert true)
(define-const var898 String (append/672562846 var3515 var467)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3515!1 String)
(assert (= var3515!1 (str.++ var3515 var467)))
(assert true)
(define-const var2498 String (toString/-2075883882 var898)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1186 String (append/672562846 var3861 var2498)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3861!1 String)
(assert (= var3861!1 (str.++ var3861 var2498)))
(assert true)
(define-const var2761 String (toString/-2075883882 var1186)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1469451909=([org.hibernate.criterion.Order], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ascending/-1469451909=([org.hibernate.criterion.Order], boolean), nullPrecedence/-1469451909=([org.hibernate.criterion.Order], org.hibernate.NullPrecedence), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var22-to-var1672=([org.hibernate.NullPrecedence], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2532=org.hibernate.criterion.Order, var3788=r1, var3983=$r0, var1823=$r2, var386=$r3, var887=$r4, var497=$z0, var2609=$r16, var3861=$r6, var22=org.hibernate.NullPrecedence, var2865=$r5, var985=$r9, var3515=$r14, var1189=$r10, var1672=java.lang.Enum, var1852=$r12, var3683=java.util.Locale, var3823=$r11, var467=$r13, var898=$r15, var2498=$r17, var1186=$r7, var2761=$r8}
; {org.hibernate.criterion.Order=var2532, r1=var3788, $r0=var3983, $r2=var1823, $r3=var386, $r4=var887, $z0=var497, $r16=var2609, $r6=var3861, org.hibernate.NullPrecedence=var22, $r5=var2865, $r9=var985, $r14=var3515, $r10=var1189, java.lang.Enum=var1672, $r12=var1852, java.util.Locale=var3683, $r11=var3823, $r13=var467, $r15=var898, $r17=var2498, $r7=var1186, $r8=var2761}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.criterion.Order;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = r1.<org.hibernate.criterion.Order: boolean ascending>;	if $z0 == 0 goto $r16 = "desc";	$r16 = "desc";	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence>;	if $r5 == null goto $r17 = "";	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r10 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence>;	$r12 = virtualinvoke $r10.<org.hibernate.NullPrecedence: java.lang.String name()>();	$r11 = <java.util.Locale: java.util.Locale ROOT>;	$r13 = virtualinvoke $r12.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r11);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5