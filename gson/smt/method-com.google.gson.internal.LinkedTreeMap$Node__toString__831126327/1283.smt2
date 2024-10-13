(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3100 0)
(declare-sort var1186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/1049469911 (var3100) var1186)
(declare-fun append/-1031950772 (String var1186) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1049469911 (var3100) var1186)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3100 var3100)
(declare-const var2406 var3100) ; Statement: r1 := @this: com.google.gson.internal.LinkedTreeMap$Node 
(assert (not (= var2406 null-var3100)))
(define-const var2113 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2113)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2113!1 String)
(assert (= var2113!1 ""))
(define-const var1903 var1186 (key/1049469911 var2406)) ; Statement: $r2 = r1.<com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object key> 
(assert true)
(define-const var3111 String (append/-1031950772 var2113!1 var1903)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2113!2 String)
(assert (str.prefixof var2113!1 var2113!2))
(assert true)
(define-const var3539 String (append/672562846 var3111 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3111!1 String)
(assert (= var3111!1 (str.++ var3111 "=")))
(define-const var2741 var1186 (value/1049469911 var2406)) ; Statement: $r4 = r1.<com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object value> 
(assert true)
(define-const var2691 String (append/-1031950772 var3539 var2741)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3539!1 String)
(assert (str.prefixof var3539 var3539!1))
(assert true)
(define-const var3826 String (toString/-2075883882 var2691)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/1049469911=([com.google.gson.internal.LinkedTreeMap$Node], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1049469911=([com.google.gson.internal.LinkedTreeMap$Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3100=com.google.gson.internal.LinkedTreeMap$Node, var2406=r1, var2113=$r0, var1186=java.lang.Object, var1903=$r2, var3111=$r3, var3539=$r5, var2741=$r4, var2691=$r6, var3826=$r7}
; {com.google.gson.internal.LinkedTreeMap$Node=var3100, r1=var2406, $r0=var2113, java.lang.Object=var1186, $r2=var1903, $r3=var3111, $r5=var3539, $r4=var2741, $r6=var2691, $r7=var3826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.LinkedTreeMap$Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object key>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = r1.<com.google.gson.internal.LinkedTreeMap$Node: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1