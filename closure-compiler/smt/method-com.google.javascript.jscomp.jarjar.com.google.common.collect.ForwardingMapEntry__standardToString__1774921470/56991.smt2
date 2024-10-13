(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1622 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getKey/-736847284 (var1622) var1989)
(declare-fun append/-1031950772 (String var1989) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/-1298906502 (var1622) var1989)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1622 var1622)
(declare-const var85 var1622) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry 
(assert (not (= var85 null-var1622)))
(define-const var3272 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3272)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3272!1 String)
(assert (= var3272!1 ""))
(assert true)
(define-const var116 var1989 (getKey/-736847284 var85)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry: java.lang.Object getKey()>() 
(assert true)
(define-const var3323 String (append/-1031950772 var3272!1 var116)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3272!2 String)
(assert (str.prefixof var3272!1 var3272!2))
(assert true)
(define-const var1664 String (append/672562846 var3323 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3323!1 String)
(assert (= var3323!1 (str.++ var3323 "=")))
(assert true)
(define-const var2158 var1989 (getValue/-1298906502 var85)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry: java.lang.Object getValue()>() 
(assert true)
(define-const var506 String (append/-1031950772 var1664 var2158)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1664!1 String)
(assert (str.prefixof var1664 var1664!1))
(assert true)
(define-const var1094 String (toString/-2075883882 var506)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getKey/-736847284=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/-1298906502=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1622=com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry, var85=r1, var3272=$r0, var1989=java.lang.Object, var116=$r2, var3323=$r3, var1664=$r5, var2158=$r4, var506=$r6, var1094=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry=var1622, r1=var85, $r0=var3272, java.lang.Object=var1989, $r2=var116, $r3=var3323, $r5=var1664, $r4=var2158, $r6=var506, $r7=var1094}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry: java.lang.Object getKey()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ForwardingMapEntry: java.lang.Object getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1