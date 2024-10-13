(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1981 0)
(declare-sort var3517 0)
(declare-sort var3610 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun style/-1851277361 (var1981) var3517)
(declare-fun append/-1031950772 (String var3610) String)
(declare-fun cast-from-var3517-to-var3610 (var3517) var3610)
(declare-fun association/-1851277361 (var1981) var712)
(declare-fun getRole/-1026992172 (var712) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1981 var1981)
(declare-const var3411 var1981) ; Statement: r1 := @this: org.hibernate.engine.profile.Fetch 
(assert (not (= var3411 null-var1981)))
(define-const var2592 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2592)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2592!1 String)
(assert (= var2592!1 ""))
(assert true)
(define-const var1369 String (append/672562846 var2592!1 "Fetch[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fetch[") 
(declare-const var2592!2 String)
(assert (= var2592!2 (str.++ var2592!1 "Fetch[")))
(define-const var2064 var3517 (style/-1851277361 var3411)) ; Statement: $r2 = r1.<org.hibernate.engine.profile.Fetch: org.hibernate.engine.profile.Fetch$Style style> 
(assert true)
(define-const var1233 String (append/-1031950772 var1369 (cast-from-var3517-to-var3610 var2064))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1369!1 String)
(assert (str.prefixof var1369 var1369!1))
(assert true)
(define-const var798 String (append/672562846 var1233 "{")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var1233!1 String)
(assert (= var1233!1 (str.++ var1233 "{")))
(define-const var708 var712 (association/-1851277361 var3411)) ; Statement: $r5 = r1.<org.hibernate.engine.profile.Fetch: org.hibernate.engine.profile.Association association> 
(assert true)
(define-const var1669 String (getRole/-1026992172 var708)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.engine.profile.Association: java.lang.String getRole()>() 
(assert true)
(define-const var2558 String (append/672562846 var798 var1669)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 var1669)))
(assert true)
(define-const var1685 String (append/672562846 var2558 "}]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(declare-const var2558!1 String)
(assert (= var2558!1 (str.++ var2558 "}]")))
(assert true)
(define-const var219 String (toString/-2075883882 var1685)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), style/-1851277361=([org.hibernate.engine.profile.Fetch], org.hibernate.engine.profile.Fetch$Style), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3517-to-var3610=([org.hibernate.engine.profile.Fetch$Style], java.lang.Object), association/-1851277361=([org.hibernate.engine.profile.Fetch], org.hibernate.engine.profile.Association), getRole/-1026992172=([org.hibernate.engine.profile.Association], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1981=org.hibernate.engine.profile.Fetch, var3411=r1, var2592=$r0, var1369=$r3, var3517=org.hibernate.engine.profile.Fetch$Style, var2064=$r2, var3610=java.lang.Object, var1233=$r4, var798=$r7, var712=org.hibernate.engine.profile.Association, var708=$r5, var1669=$r6, var2558=$r8, var1685=$r9, var219=$r10}
; {org.hibernate.engine.profile.Fetch=var1981, r1=var3411, $r0=var2592, $r3=var1369, org.hibernate.engine.profile.Fetch$Style=var3517, $r2=var2064, java.lang.Object=var3610, $r4=var1233, $r7=var798, org.hibernate.engine.profile.Association=var712, $r5=var708, $r6=var1669, $r8=var2558, $r9=var1685, $r10=var219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.profile.Fetch;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fetch[");	$r2 = r1.<org.hibernate.engine.profile.Fetch: org.hibernate.engine.profile.Fetch$Style style>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r5 = r1.<org.hibernate.engine.profile.Fetch: org.hibernate.engine.profile.Association association>;	$r6 = virtualinvoke $r5.<org.hibernate.engine.profile.Association: java.lang.String getRole()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1