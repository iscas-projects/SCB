(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2818 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/1200338758 (var2818) var1148)
(declare-fun append/-1031950772 (String var1148) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1200338758 (var2818) var1148)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2818 var2818)
(declare-const var3906 var2818) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node 
(assert (not (= var3906 null-var2818)))
(define-const var2659 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2659)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2659!1 String)
(assert (= var2659!1 ""))
(define-const var1491 var1148 (key/1200338758 var3906)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object key> 
(assert true)
(define-const var3117 String (append/-1031950772 var2659!1 var1491)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2659!2 String)
(assert (str.prefixof var2659!1 var2659!2))
(assert true)
(define-const var750 String (append/672562846 var3117 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3117!1 String)
(assert (= var3117!1 (str.++ var3117 "=")))
(define-const var1003 var1148 (value/1200338758 var3906)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object value> 
(assert true)
(define-const var3854 String (append/-1031950772 var750 var1003)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var750!1 String)
(assert (str.prefixof var750 var750!1))
(assert true)
(define-const var1066 String (toString/-2075883882 var3854)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/1200338758=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1200338758=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2818=com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node, var3906=r1, var2659=$r0, var1148=java.lang.Object, var1491=$r2, var3117=$r3, var750=$r5, var1003=$r4, var3854=$r6, var1066=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node=var2818, r1=var3906, $r0=var2659, java.lang.Object=var1148, $r2=var1491, $r3=var3117, $r5=var750, $r4=var1003, $r6=var3854, $r7=var1066}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object key>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1