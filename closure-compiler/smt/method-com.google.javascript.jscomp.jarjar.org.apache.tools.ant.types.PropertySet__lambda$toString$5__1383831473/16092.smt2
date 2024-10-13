(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2760 0)
(declare-sort var3641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2760_getKey/-33423493 (var2760) var3641)
(declare-fun cast-from-var3641-to-String (var3641) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2760_getValue/381491177 (var2760) var3641)
(declare-fun append/-1031950772 (String var3641) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2760 var2760)
(declare-const var1812 var2760) ; Statement: r1 := @parameter0: java.util.Map$Entry 
(assert (not (= var1812 null-var2760)))
(define-const var3362 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3362)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3362!1 String)
(assert (= var3362!1 ""))
(define-const var1359 var3641 (var2760_getKey/-33423493 var1812)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1113 String (cast-from-var3641-to-String var1359)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var3661 String (append/672562846 var3362!1 var1113)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3362!2 String)
(assert (= var3362!2 (str.++ var3362!1 var1113)))
(assert true)
(define-const var2815 String (append/672562846 var3661 "=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3661!1 String)
(assert (= var3661!1 (str.++ var3661 "=")))
(define-const var3847 var3641 (var2760_getValue/381491177 var1812)) ; Statement: $r5 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>() 
(assert true)
(define-const var1539 String (append/-1031950772 var2815 var3847)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2815!1 String)
(assert (str.prefixof var2815 var2815!1))
(assert true)
(define-const var3635 String (toString/-2075883882 var1539)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2760_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3641-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2760_getValue/381491177=([java.util.Map$Entry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2760=java.util.Map$Entry, var1812=r1, var3362=$r0, var3641=java.lang.Object, var1359=$r2, var1113=$r3, var3661=$r4, var2815=$r6, var3847=$r5, var1539=$r7, var3635=$r8}
; {java.util.Map$Entry=var2760, r1=var1812, $r0=var3362, java.lang.Object=var3641, $r2=var1359, $r3=var1113, $r4=var3661, $r6=var2815, $r5=var3847, $r7=var1539, $r8=var3635}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Map$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r3 = (java.lang.String) $r2;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r5 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1