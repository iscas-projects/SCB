(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$key/428725452 (var1020) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1020 var1020)
(declare-const var2970 var1020) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty$5 
(assert (not (= var2970 null-var1020)))
(define-const var2134 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2134)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2134!1 String)
(assert (= var2134!1 ""))
(assert true)
(define-const var78 String (append/672562846 var2134!1 "Field change callback for ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field change callback for ") 
(declare-const var2134!2 String)
(assert (= var2134!2 (str.++ var2134!1 "Field change callback for ")))
(define-const var1999 String (val$key/428725452 var2970)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$5: java.lang.String val$key> 
(assert true)
(define-const var1415 String (append/672562846 var78 var1999)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var78!1 String)
(assert (= var78!1 (str.++ var78 var1999)))
(assert true)
(define-const var459 String (append/672562846 var1415 " triggered ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" triggered ") 
(declare-const var1415!1 String)
(assert (= var1415!1 (str.++ var1415 " triggered ")))
(assert true)
(define-const var286 String (toString/-2075883882 var459)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$key/428725452=([jdk.nashorn.internal.runtime.AccessorProperty$5], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1020=jdk.nashorn.internal.runtime.AccessorProperty$5, var2970=r1, var2134=$r0, var78=$r3, var1999=$r2, var1415=$r4, var459=$r5, var286=$r6}
; {jdk.nashorn.internal.runtime.AccessorProperty$5=var1020, r1=var2970, $r0=var2134, $r3=var78, $r2=var1999, $r4=var1415, $r5=var459, $r6=var286}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty$5;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field change callback for ");	$r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$5: java.lang.String val$key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" triggered ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1