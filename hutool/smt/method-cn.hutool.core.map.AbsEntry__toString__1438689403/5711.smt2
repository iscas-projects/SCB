(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2091 0)
(declare-sort var1697 0)
(declare-sort var2488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getKey/-33423493 (var2488) var1697)
(declare-fun cast-from-var2091-to-var2488 (var2091) var2488)
(declare-fun append/-1031950772 (String var1697) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/381491177 (var2488) var1697)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2091 var2091)
(declare-const var2914 var2091) ; Statement: r1 := @this: cn.hutool.core.map.AbsEntry 
(assert (not (= var2914 null-var2091)))
(define-const var3706 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3706)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3706!1 String)
(assert (= var3706!1 ""))
(assert true)
(define-const var363 var1697 (getKey/-33423493 (cast-from-var2091-to-var2488 var2914))) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.core.map.AbsEntry: java.lang.Object getKey()>() 
(assert true)
(define-const var2292 String (append/-1031950772 var3706!1 var363)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3706!2 String)
(assert (str.prefixof var3706!1 var3706!2))
(assert true)
(define-const var2430 String (append/672562846 var2292 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var2292!1 String)
(assert (= var2292!1 (str.++ var2292 "=")))
(assert true)
(define-const var925 var1697 (getValue/381491177 (cast-from-var2091-to-var2488 var2914))) ; Statement: $r4 = virtualinvoke r1.<cn.hutool.core.map.AbsEntry: java.lang.Object getValue()>() 
(assert true)
(define-const var1425 String (append/-1031950772 var2430 var925)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2430!1 String)
(assert (str.prefixof var2430 var2430!1))
(assert true)
(define-const var3690 String (toString/-2075883882 var1425)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2091-to-var2488=([cn.hutool.core.map.AbsEntry], java.util.Map$Entry), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/381491177=([java.util.Map$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2091=cn.hutool.core.map.AbsEntry, var2914=r1, var3706=$r0, var1697=java.lang.Object, var2488=java.util.Map$Entry, var363=$r2, var2292=$r3, var2430=$r5, var925=$r4, var1425=$r6, var3690=$r7}
; {cn.hutool.core.map.AbsEntry=var2091, r1=var2914, $r0=var3706, java.lang.Object=var1697, java.util.Map$Entry=var2488, $r2=var363, $r3=var2292, $r5=var2430, $r4=var925, $r6=var1425, $r7=var3690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.map.AbsEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.core.map.AbsEntry: java.lang.Object getKey()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = virtualinvoke r1.<cn.hutool.core.map.AbsEntry: java.lang.Object getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1