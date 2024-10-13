(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1682 0)
(declare-sort var1882 0)
(declare-sort var1453 0)
(declare-sort var590 0)
(declare-sort var2324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateFormats/1648625650 (var1682) var1882)
(declare-fun var1882_get/-1216255739 (var1882 Int) var1453)
(declare-fun cast-from-var1453-to-var590 (var1453) var590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var590-to-var2324 (var590) var2324)
(declare-fun toPattern/-1065589675 (var2324) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1682 var1682)
(declare-const var2622 var1682) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter 
(assert (not (= var2622 null-var1682)))
(define-const var3453 var1882 (dateFormats/1648625650 var2622)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats> 
(define-const var2242 var1453 (var1882_get/-1216255739 var3453 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var259 var590 (cast-from-var1453-to-var590 var2242)) ; Statement: r3 = (java.text.DateFormat) $r2 
(define-const var2778 Bool false) ; Statement: $z0 = r3 instanceof java.text.SimpleDateFormat 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= (ite var2778 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var293 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var293)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var293!1 String)
(assert (= var293!1 ""))
(assert true)
(define-const var1759 String (append/672562846 var293!1 "DefaultDateTypeAdapter(")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(") 
(declare-const var293!2 String)
(assert (= var293!2 (str.++ var293!1 "DefaultDateTypeAdapter(")))
(define-const var3059 var2324 (cast-from-var590-to-var2324 var259)) ; Statement: $r12 = (java.text.SimpleDateFormat) r3 
(assert true)
(define-const var2102 String (toPattern/-1065589675 var3059)) ; Statement: $r13 = virtualinvoke $r12.<java.text.SimpleDateFormat: java.lang.String toPattern()>() 
(assert true)
(define-const var2935 String (append/672562846 var1759 var2102)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1759!1 String)
(assert (= var1759!1 (str.++ var1759 var2102)))
(assert true)
(define-const var3497 String (append/-1166366385 var2935 41)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2935!1 String)
(assert (str.prefixof var2935 var2935!1))
(assert true)
(define-const var3281 String (toString/-2075883882 var3497)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {dateFormats/1648625650=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter], java.util.List), var1882_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1453-to-var590=([java.lang.Object], java.text.DateFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var590-to-var2324=([java.text.DateFormat], java.text.SimpleDateFormat), toPattern/-1065589675=([java.text.SimpleDateFormat], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1682=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter, var2622=r0, var1882=java.util.List, var3453=$r1, var1453=java.lang.Object, var2242=$r2, var590=java.text.DateFormat, var259=r3, var2778=$z0, var293=$r11, var1759=$r14, var2324=java.text.SimpleDateFormat, var3059=$r12, var2102=$r13, var2935=$r15, var3497=$r16, var3281=$r17}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter=var1682, r0=var2622, java.util.List=var1882, $r1=var3453, java.lang.Object=var1453, $r2=var2242, java.text.DateFormat=var590, r3=var259, $z0=var2778, $r11=var293, $r14=var1759, java.text.SimpleDateFormat=var2324, $r12=var3059, $r13=var2102, $r15=var2935, $r16=var3497, $r17=var3281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.text.DateFormat) $r2;	$z0 = r3 instanceof java.text.SimpleDateFormat;	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(");	$r12 = (java.text.SimpleDateFormat) r3;	$r13 = virtualinvoke $r12.<java.text.SimpleDateFormat: java.lang.String toPattern()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2