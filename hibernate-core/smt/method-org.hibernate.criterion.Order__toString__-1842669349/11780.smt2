(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var1624 0)
(declare-sort var1873 0)
(declare-sort var1062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1469451909 (var335) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ascending/-1469451909 (var335) Bool)
(declare-fun nullPrecedence/-1469451909 (var335) var1624)
(declare-fun name/1633728430 (var1873) String)
(declare-fun cast-from-var1624-to-var1873 (var1624) var1873)
(declare-fun toLowerCase/1946809429 (String var1062) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var335 var335)
(declare-const null-var1624 var1624)
(declare-const var1062-ROOT var1062)
(declare-const var875 var335) ; Statement: r1 := @this: org.hibernate.criterion.Order 
(assert (not (= var875 null-var335)))
(define-const var288 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var288)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var288!1 String)
(assert (= var288!1 ""))
(define-const var1910 String (propertyName/-1469451909 var875)) ; Statement: $r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName> 
(assert true)
(define-const var983 String (append/672562846 var288!1 var1910)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var288!2 String)
(assert (= var288!2 (str.++ var288!1 var1910)))
(assert true)
(define-const var3944 String (append/-1166366385 var983 32)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var983!1 String)
(assert (str.prefixof var983 var983!1))
(define-const var3718 Bool (ascending/-1469451909 var875)) ; Statement: $z0 = r1.<org.hibernate.criterion.Order: boolean ascending> 
 ; Statement: if $z0 == 0 goto $r16 = "desc" 
(assert (not (= (ite var3718 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3631 String "asc") ; Statement: $r16 = "asc" 
 ; Statement: goto [?= $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2205 String (append/672562846 var3944 var3631)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3944!1 String)
(assert (= var3944!1 (str.++ var3944 var3631)))
(define-const var542 var1624 (nullPrecedence/-1469451909 var875)) ; Statement: $r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence> 
 ; Statement: if $r5 == null goto $r17 = "" 
(assert (not (= var542 null-var1624))) ; Negate: Cond: $r5 == null  
(define-const var3880 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3880)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3880!1 String)
(assert (= var3880!1 ""))
(assert true)
(define-const var17 String (append/-1166366385 var3880!1 32)) ; Statement: $r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3880!2 String)
(assert (str.prefixof var3880!1 var3880!2))
(define-const var307 var1624 (nullPrecedence/-1469451909 var875)) ; Statement: $r10 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence> 
(assert true)
(define-const var2107 String (name/1633728430 (cast-from-var1624-to-var1873 var307))) ; Statement: $r12 = virtualinvoke $r10.<org.hibernate.NullPrecedence: java.lang.String name()>() 
(define-const var1141 var1062 var1062-ROOT) ; Statement: $r11 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3082 String (toLowerCase/1946809429 var2107 var1141)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r11) 
(assert true)
(define-const var1763 String (append/672562846 var17 var3082)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var17!1 String)
(assert (= var17!1 (str.++ var17 var3082)))
(assert true)
(define-const var1200 String (toString/-2075883882 var1763)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1340 String (append/672562846 var2205 var1200)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2205!1 String)
(assert (= var2205!1 (str.++ var2205 var1200)))
(assert true)
(define-const var2732 String (toString/-2075883882 var1340)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1469451909=([org.hibernate.criterion.Order], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ascending/-1469451909=([org.hibernate.criterion.Order], boolean), nullPrecedence/-1469451909=([org.hibernate.criterion.Order], org.hibernate.NullPrecedence), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1624-to-var1873=([org.hibernate.NullPrecedence], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var335=org.hibernate.criterion.Order, var875=r1, var288=$r0, var1910=$r2, var983=$r3, var3944=$r4, var3718=$z0, var3631=$r16, var2205=$r6, var1624=org.hibernate.NullPrecedence, var542=$r5, var3880=$r9, var17=$r14, var307=$r10, var1873=java.lang.Enum, var2107=$r12, var1062=java.util.Locale, var1141=$r11, var3082=$r13, var1763=$r15, var1200=$r17, var1340=$r7, var2732=$r8}
; {org.hibernate.criterion.Order=var335, r1=var875, $r0=var288, $r2=var1910, $r3=var983, $r4=var3944, $z0=var3718, $r16=var3631, $r6=var2205, org.hibernate.NullPrecedence=var1624, $r5=var542, $r9=var3880, $r14=var17, $r10=var307, java.lang.Enum=var1873, $r12=var2107, java.util.Locale=var1062, $r11=var1141, $r13=var3082, $r15=var1763, $r17=var1200, $r7=var1340, $r8=var2732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.criterion.Order;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.Order: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = r1.<org.hibernate.criterion.Order: boolean ascending>;	if $z0 == 0 goto $r16 = "desc";	$r16 = "asc";	goto [?= $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)];	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r5 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence>;	if $r5 == null goto $r17 = "";	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r10 = r1.<org.hibernate.criterion.Order: org.hibernate.NullPrecedence nullPrecedence>;	$r12 = virtualinvoke $r10.<org.hibernate.NullPrecedence: java.lang.String name()>();	$r11 = <java.util.Locale: java.util.Locale ROOT>;	$r13 = virtualinvoke $r12.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r11);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5