(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2407 0)
(declare-sort var2872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2407_getKey/-33423493 (var2407) var2872)
(declare-fun append/-1031950772 (String var2872) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2407_getValue/381491177 (var2407) var2872)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2407 var2407)
(declare-const var3834 var2407) ; Statement: r1 := @parameter0: java.util.Map$Entry 
(assert (not (= var3834 null-var2407)))
(define-const var2984 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2984)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2984!1 String)
(assert (= var2984!1 ""))
(define-const var1663 var2872 (var2407_getKey/-33423493 var3834)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(assert true)
(define-const var2281 String (append/-1031950772 var2984!1 var1663)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2984!2 String)
(assert (str.prefixof var2984!1 var2984!2))
(assert true)
(define-const var2587 String (append/672562846 var2281 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var2281!1 String)
(assert (= var2281!1 (str.++ var2281 "=")))
(define-const var2636 var2872 (var2407_getValue/381491177 var3834)) ; Statement: $r4 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>() 
(assert true)
(define-const var1160 String (append/-1031950772 var2587 var2636)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2587!1 String)
(assert (str.prefixof var2587 var2587!1))
(assert true)
(define-const var3330 String (toString/-2075883882 var1160)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2407_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2407_getValue/381491177=([java.util.Map$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2407=java.util.Map$Entry, var3834=r1, var2984=$r0, var2872=java.lang.Object, var1663=$r2, var2281=$r3, var2587=$r5, var2636=$r4, var1160=$r6, var3330=$r7}
; {java.util.Map$Entry=var2407, r1=var3834, $r0=var2984, java.lang.Object=var2872, $r2=var1663, $r3=var2281, $r5=var2587, $r4=var2636, $r6=var1160, $r7=var3330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Map$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1