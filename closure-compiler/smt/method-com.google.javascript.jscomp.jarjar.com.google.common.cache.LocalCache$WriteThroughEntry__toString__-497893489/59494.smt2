(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1912 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getKey/1335738080 (var1912) var3859)
(declare-fun append/-1031950772 (String var3859) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/1885770254 (var1912) var3859)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1912 var1912)
(declare-const var1420 var1912) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry 
(assert (not (= var1420 null-var1912)))
(define-const var2663 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2663)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2663!1 String)
(assert (= var2663!1 ""))
(assert true)
(define-const var3442 var3859 (getKey/1335738080 var1420)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry: java.lang.Object getKey()>() 
(assert true)
(define-const var2313 String (append/-1031950772 var2663!1 var3442)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2663!2 String)
(assert (str.prefixof var2663!1 var2663!2))
(assert true)
(define-const var1264 String (append/672562846 var2313 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var2313!1 String)
(assert (= var2313!1 (str.++ var2313 "=")))
(assert true)
(define-const var3928 var3859 (getValue/1885770254 var1420)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry: java.lang.Object getValue()>() 
(assert true)
(define-const var685 String (append/-1031950772 var1264 var3928)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1264!1 String)
(assert (str.prefixof var1264 var1264!1))
(assert true)
(define-const var1033 String (toString/-2075883882 var685)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getKey/1335738080=([com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/1885770254=([com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1912=com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry, var1420=r1, var2663=$r0, var3859=java.lang.Object, var3442=$r2, var2313=$r3, var1264=$r5, var3928=$r4, var685=$r6, var1033=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry=var1912, r1=var1420, $r0=var2663, java.lang.Object=var3859, $r2=var3442, $r3=var2313, $r5=var1264, $r4=var3928, $r6=var685, $r7=var1033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry: java.lang.Object getKey()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.cache.LocalCache$WriteThroughEntry: java.lang.Object getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1