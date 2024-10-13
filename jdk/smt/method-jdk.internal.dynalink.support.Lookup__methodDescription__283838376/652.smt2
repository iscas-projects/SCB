(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1451 0)
(declare-sort var1320 0)
(declare-sort var3209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3209) String)
(declare-fun cast-from-var1320-to-var3209 (var1320) var3209)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var1320 var1320)
(declare-const var2837 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2837 null-ClassObject)))
(declare-const var2376 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2376 null-String)))
(declare-const var3639 var1320) ; Statement: r6 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var3639 null-var1320)))
(define-const var701 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var701)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var701!1 String)
(assert (= var701!1 ""))
(assert true)
(define-const var2396 String (getName/-1958580599 var2837)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1613 String (append/672562846 var701!1 var2396)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var701!2 String)
(assert (= var701!2 (str.++ var701!1 var2396)))
(assert true)
(define-const var266 String (append/672562846 var1613 "#")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1613!1 String)
(assert (= var1613!1 (str.++ var1613 "#")))
(assert true)
(define-const var1302 String (append/672562846 var266 var2376)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var266!1 String)
(assert (= var266!1 (str.++ var266 var2376)))
(assert true)
(define-const var3261 String (append/-1031950772 var1302 (cast-from-var1320-to-var3209 var3639))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var1302!1 String)
(assert (str.prefixof var1302 var1302!1))
(assert true)
(define-const var3177 String (toString/-2075883882 var3261)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1320-to-var3209=([java.lang.invoke.MethodType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2837=r1, var2376=r4, var1451=null_type, var1320=java.lang.invoke.MethodType, var3639=r6, var701=$r0, var2396=$r2, var1613=$r3, var266=$r5, var1302=$r7, var3209=java.lang.Object, var3261=$r8, var3177=$r9}
; {r1=var2837, r4=var2376, null_type=var1451, java.lang.invoke.MethodType=var1320, r6=var3639, $r0=var701, $r2=var2396, $r3=var1613, $r5=var266, $r7=var1302, java.lang.Object=var3209, $r8=var3261, $r9=var3177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.invoke.MethodType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1