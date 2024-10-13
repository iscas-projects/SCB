(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1269 0)
(declare-sort var2185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/1556901649 (var1269) var2185)
(declare-fun append/-1031950772 (String var2185) String)
(declare-fun value/1556901649 (var1269) var2185)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1269 var1269)
(declare-const var2397 var1269) ; Statement: r1 := @this: cn.hutool.core.lang.Pair 
(assert (not (= var2397 null-var1269)))
(define-const var1429 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1429)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1429!1 String)
(assert (= var1429!1 ""))
(assert true)
(define-const var2451 String (append/672562846 var1429!1 "Pair [key=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pair [key=") 
(declare-const var1429!2 String)
(assert (= var1429!2 (str.++ var1429!1 "Pair [key=")))
(define-const var2577 var2185 (key/1556901649 var2397)) ; Statement: $r2 = r1.<cn.hutool.core.lang.Pair: java.lang.Object key> 
(assert true)
(define-const var3877 String (append/-1031950772 var2451 var2577)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2451!1 String)
(assert (str.prefixof var2451 var2451!1))
(assert true)
(define-const var946 String (append/672562846 var3877 ", value=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=") 
(declare-const var3877!1 String)
(assert (= var3877!1 (str.++ var3877 ", value=")))
(define-const var2258 var2185 (value/1556901649 var2397)) ; Statement: $r5 = r1.<cn.hutool.core.lang.Pair: java.lang.Object value> 
(assert true)
(define-const var316 String (append/-1031950772 var946 var2258)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var946!1 String)
(assert (str.prefixof var946 var946!1))
(assert true)
(define-const var1081 String (append/672562846 var316 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var316!1 String)
(assert (= var316!1 (str.++ var316 "]")))
(assert true)
(define-const var343 String (toString/-2075883882 var1081)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/1556901649=([cn.hutool.core.lang.Pair], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), value/1556901649=([cn.hutool.core.lang.Pair], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1269=cn.hutool.core.lang.Pair, var2397=r1, var1429=$r0, var2451=$r3, var2185=java.lang.Object, var2577=$r2, var3877=$r4, var946=$r6, var2258=$r5, var316=$r7, var1081=$r8, var343=$r9}
; {cn.hutool.core.lang.Pair=var1269, r1=var2397, $r0=var1429, $r3=var2451, java.lang.Object=var2185, $r2=var2577, $r4=var3877, $r6=var946, $r5=var2258, $r7=var316, $r8=var1081, $r9=var343}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.lang.Pair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pair [key=");	$r2 = r1.<cn.hutool.core.lang.Pair: java.lang.Object key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=");	$r5 = r1.<cn.hutool.core.lang.Pair: java.lang.Object value>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1