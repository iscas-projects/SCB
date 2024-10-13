(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getKey/-776655887 (var3127) var1436)
(declare-fun append/-1031950772 (String var1436) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/-900268321 (var3127) var1436)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3127 var3127)
(declare-const var822 var3127) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry 
(assert (not (= var822 null-var3127)))
(define-const var2384 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2384)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2384!1 String)
(assert (= var2384!1 ""))
(assert true)
(define-const var2249 var1436 (getKey/-776655887 var822)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry: java.lang.Object getKey()>() 
(assert true)
(define-const var2650 String (append/-1031950772 var2384!1 var2249)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2384!2 String)
(assert (str.prefixof var2384!1 var2384!2))
(assert true)
(define-const var2744 String (append/672562846 var2650 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var2650!1 String)
(assert (= var2650!1 (str.++ var2650 "=")))
(assert true)
(define-const var3320 var1436 (getValue/-900268321 var822)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry: java.lang.Object getValue()>() 
(assert true)
(define-const var2718 String (append/-1031950772 var2744 var3320)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2744!1 String)
(assert (str.prefixof var2744 var2744!1))
(assert true)
(define-const var3682 String (toString/-2075883882 var2718)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getKey/-776655887=([com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/-900268321=([com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3127=com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry, var822=r1, var2384=$r0, var1436=java.lang.Object, var2249=$r2, var2650=$r3, var2744=$r5, var3320=$r4, var2718=$r6, var3682=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry=var3127, r1=var822, $r0=var2384, java.lang.Object=var1436, $r2=var2249, $r3=var2650, $r5=var2744, $r4=var3320, $r6=var2718, $r7=var3682}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry: java.lang.Object getKey()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractMapEntry: java.lang.Object getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1