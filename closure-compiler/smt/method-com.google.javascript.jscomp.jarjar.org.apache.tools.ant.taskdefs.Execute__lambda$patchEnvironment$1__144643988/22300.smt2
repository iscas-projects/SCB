(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var3480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3384_getKey/-33423493 (var3384) var3480)
(declare-fun cast-from-var3480-to-String (var3480) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3384_getValue/381491177 (var3384) var3480)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3384 var3384)
(declare-const var944 var3384) ; Statement: r1 := @parameter0: java.util.Map$Entry 
(assert (not (= var944 null-var3384)))
(define-const var3125 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3125)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3125!1 String)
(assert (= var3125!1 ""))
(define-const var1795 var3480 (var3384_getKey/-33423493 var944)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3367 String (cast-from-var3480-to-String var1795)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var318 String (append/672562846 var3125!1 var3367)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3125!2 String)
(assert (= var3125!2 (str.++ var3125!1 var3367)))
(assert true)
(define-const var2745 String (append/672562846 var318 "=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var318!1 String)
(assert (= var318!1 (str.++ var318 "=")))
(define-const var1340 var3480 (var3384_getValue/381491177 var944)) ; Statement: $r5 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var3443 String (cast-from-var3480-to-String var1340)) ; Statement: $r6 = (java.lang.String) $r5 
(assert true)
(define-const var3811 String (append/672562846 var2745 var3443)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2745!1 String)
(assert (= var2745!1 (str.++ var2745 var3443)))
(assert true)
(define-const var1742 String (toString/-2075883882 var3811)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3384_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3480-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3384_getValue/381491177=([java.util.Map$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3384=java.util.Map$Entry, var944=r1, var3125=$r0, var3480=java.lang.Object, var1795=$r2, var3367=$r3, var318=$r4, var2745=$r7, var1340=$r5, var3443=$r6, var3811=$r8, var1742=$r9}
; {java.util.Map$Entry=var3384, r1=var944, $r0=var3125, java.lang.Object=var3480, $r2=var1795, $r3=var3367, $r4=var318, $r7=var2745, $r5=var1340, $r6=var3443, $r8=var3811, $r9=var1742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Map$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r3 = (java.lang.String) $r2;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r5 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>();	$r6 = (java.lang.String) $r5;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1