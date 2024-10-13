(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var779 0)
(declare-sort var1265 0)
(declare-sort var1092 0)
(declare-sort var2355 0)
(declare-sort var2376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun rootAlias/-46788054 (var779) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fetchModes/-46788054 (var779) var2355)
(declare-fun var2355_put/1464166817 (var2355 var2376 var2376) var2376)
(declare-fun cast-from-String-to-var2376 (String) var2376)
(declare-fun cast-from-var1092-to-var2376 (var1092) var2376)
(declare-const null-var779 var779)
(declare-const null-String String)
(declare-const null-var1092 var1092)
(declare-const var2183 var779) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl 
(assert (not (= var2183 null-var779)))
(declare-const var1568 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var1568 null-String)))
(declare-const var502 var1092) ; Statement: r7 := @parameter1: org.hibernate.FetchMode 
(assert (not (= var502 null-var1092)))
(define-const var1644 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1644)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1644!1 String)
(assert (= var1644!1 ""))
(define-const var2514 String (rootAlias/-46788054 var2183)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert true)
(define-const var1140 String (append/672562846 var1644!1 var2514)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1644!2 String)
(assert (= var1644!2 (str.++ var1644!1 var2514)))
(assert true)
(define-const var2098 String (append/672562846 var1140 ".")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1140!1 String)
(assert (= var1140!1 (str.++ var1140 ".")))
(assert true)
(define-const var3321 String (toString/-2075883882 var2098)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var874 String (rootAlias/-46788054 var2183)) ; Statement: $r6 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
 ; Statement: if $r6 == null goto $r12 = r1.<org.hibernate.internal.CriteriaImpl: java.util.Map fetchModes> 
(assert (= var874 null-String)) ; Cond: $r6 == null 
(define-const var276 var2355 (fetchModes/-46788054 var2183)) ; Statement: $r12 = r1.<org.hibernate.internal.CriteriaImpl: java.util.Map fetchModes> 
;(assert (var2355_put/1464166817 var276 (cast-from-String-to-var2376 var1568) (cast-from-var1092-to-var2376 var502))) ; Statement: interfaceinvoke $r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r11, r7) 

(declare-const var276!1 var2355)
(declare-const var1568!1 String)
(declare-const var502!1 var1092)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), rootAlias/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fetchModes/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.Map), var2355_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2376=([java.lang.String], java.lang.Object), cast-from-var1092-to-var2376=([org.hibernate.FetchMode], java.lang.Object)}
; {var779=org.hibernate.internal.CriteriaImpl, var2183=r1, var1568=r11, var1265=null_type, var1092=org.hibernate.FetchMode, var502=r7, var1644=$r0, var2514=$r2, var1140=$r3, var2098=$r4, var3321=r5, var874=$r6, var2355=java.util.Map, var276=$r12, var2376=java.lang.Object}
; {org.hibernate.internal.CriteriaImpl=var779, r1=var2183, r11=var1568, null_type=var1265, org.hibernate.FetchMode=var1092, r7=var502, $r0=var1644, $r2=var2514, $r3=var1140, $r4=var2098, r5=var3321, $r6=var874, java.util.Map=var2355, $r12=var276, java.lang.Object=var2376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl;	r11 := @parameter0: java.lang.String;	r7 := @parameter1: org.hibernate.FetchMode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	if $r6 == null goto $r12 = r1.<org.hibernate.internal.CriteriaImpl: java.util.Map fetchModes>;	$r12 = r1.<org.hibernate.internal.CriteriaImpl: java.util.Map fetchModes>;	interfaceinvoke $r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r11, r7);	return r1
;block_num 2