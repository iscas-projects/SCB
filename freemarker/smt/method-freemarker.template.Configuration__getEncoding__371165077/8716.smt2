(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2022 0)
(declare-sort var3254 0)
(declare-sort var2624 0)
(declare-sort var1306 0)
(declare-sort var474 0)
(declare-sort var3315 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun localeToCharsetMap/198980522 (var2022) var2624)
(declare-fun var1306_isEmpty/-1655013448 (var1306) Bool)
(declare-fun cast-from-var2624-to-var1306 (var2624) var1306)
(declare-fun var474_check/-951860758 (String var3315) void)
(declare-fun cast-from-var3254-to-var3315 (var3254) var3315)
(declare-fun toString/207920178 (var3254) String)
(declare-fun var1306_get/1088891777 (var1306 var3315) var3315)
(declare-fun cast-from-String-to-var3315 (String) var3315)
(declare-fun cast-from-var3315-to-String (var3315) String)
(declare-fun getVariant/1821738799 (var3254) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getLanguage/1066037614 (var3254) String)
(declare-const null-var2022 var2022)
(declare-const null-var3254 var3254)
(declare-const null-String String)
(declare-const var2426 var2022) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var2426 null-var2022)))
(declare-const var1867 var3254) ; Statement: r2 := @parameter0: java.util.Locale 
(assert (not (= var1867 null-var3254)))
(define-const var810 var2624 (localeToCharsetMap/198980522 var2426)) ; Statement: $r1 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(define-const var182 Bool (var1306_isEmpty/-1655013448 (cast-from-var2624-to-var1306 var810))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.concurrent.ConcurrentMap: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2) 
(assert (= (ite var182 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var474_check/-951860758 "locale" (cast-from-var3254-to-var3315 var1867))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2) 

(declare-const var2479 String)
(declare-const var1867!1 var3254)
(define-const var2420 var2624 (localeToCharsetMap/198980522 var2426)) ; Statement: $r3 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(assert true)
(define-const var495 String (toString/207920178 var1867!1)) ; Statement: $r4 = virtualinvoke r2.<java.util.Locale: java.lang.String toString()>() 
(define-const var3750 var3315 (var1306_get/1088891777 (cast-from-var2624-to-var1306 var2420) (cast-from-String-to-var3315 var495))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3264 String (cast-from-var3315-to-String var3750)) ; Statement: r18 = (java.lang.String) $r5 
 ; Statement: if r18 != null goto (branch) 
(assert (not (not (= var3264 null-String)))) ; Negate: Cond: r18 != null  
(assert true)
(define-const var198 String (getVariant/1821738799 var1867!1)) ; Statement: $r6 = virtualinvoke r2.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var557 Int (length/-134980193 var198)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(assert (<= var557 0)) ; Cond: $i0 <= 0 
(define-const var1620 var2624 (localeToCharsetMap/198980522 var2426)) ; Statement: $r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(assert true)
(define-const var544 String (getLanguage/1066037614 var1867!1)) ; Statement: $r21 = virtualinvoke r2.<java.util.Locale: java.lang.String getLanguage()>() 
(define-const var1428 var3315 (var1306_get/1088891777 (cast-from-var2624-to-var1306 var1620) (cast-from-String-to-var3315 var544))) ; Statement: $r22 = interfaceinvoke $r20.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r21) 
(define-const var135 String (cast-from-var3315-to-String var1428)) ; Statement: $r23 = (java.lang.String) $r22 
(define-const var3264!1 String var135) ; Statement: r18 = $r23 
 ; Statement: if $r23 == null goto (branch) 
(assert (= var135 null-String)) ; Cond: $r23 == null 
 ; Statement: if r18 == null goto $r24 = r0.<freemarker.template.Configuration: java.lang.String defaultEncoding> 
(assert (not (= var3264!1 null-String))) ; Negate: Cond: r18 == null  
(define-const var3985 String var3264!1) ; Statement: $r24 = r18 
 ; Statement: goto [?= return $r24] 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {localeToCharsetMap/198980522=([freemarker.template.Configuration], java.util.concurrent.ConcurrentMap), var1306_isEmpty/-1655013448=([java.util.Map], boolean), cast-from-var2624-to-var1306=([java.util.concurrent.ConcurrentMap], java.util.Map), var474_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-var3254-to-var3315=([java.util.Locale], java.lang.Object), toString/207920178=([java.util.Locale], java.lang.String), var1306_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3315=([java.lang.String], java.lang.Object), cast-from-var3315-to-String=([java.lang.Object], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), length/-134980193=([java.lang.String], int), getLanguage/1066037614=([java.util.Locale], java.lang.String)}
; {var2022=freemarker.template.Configuration, var2426=r0, var3254=java.util.Locale, var1867=r2, var2624=java.util.concurrent.ConcurrentMap, var810=$r1, var1306=java.util.Map, var182=$z0, var474=freemarker.template.utility.NullArgumentException, var3315=java.lang.Object, var2479="locale", var2420=$r3, var495=$r4, var3750=$r5, var3264=r18, var1647=null_type, var198=$r6, var557=$i0, var1620=$r20, var544=$r21, var1428=$r22, var135=$r23, var3985=$r24}
; {freemarker.template.Configuration=var2022, r0=var2426, java.util.Locale=var3254, r2=var1867, java.util.concurrent.ConcurrentMap=var2624, $r1=var810, java.util.Map=var1306, $z0=var182, freemarker.template.utility.NullArgumentException=var474, java.lang.Object=var3315, "locale"=var2479, $r3=var2420, $r4=var495, $r5=var3750, r18=var3264, null_type=var1647, $r6=var198, $i0=var557, $r20=var1620, $r21=var544, $r22=var1428, $r23=var135, $r24=var3985}
;seq <java.util.Locale: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	r2 := @parameter0: java.util.Locale;	$r1 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$z0 = interfaceinvoke $r1.<java.util.concurrent.ConcurrentMap: boolean isEmpty()>();	if $z0 == 0 goto staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2);	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2);	$r3 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$r4 = virtualinvoke r2.<java.util.Locale: java.lang.String toString()>();	$r5 = interfaceinvoke $r3.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r4);	r18 = (java.lang.String) $r5;	if r18 != null goto (branch);	$r6 = virtualinvoke r2.<java.util.Locale: java.lang.String getVariant()>();	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	if $i0 <= 0 goto $r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$r21 = virtualinvoke r2.<java.util.Locale: java.lang.String getLanguage()>();	$r22 = interfaceinvoke $r20.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r21);	$r23 = (java.lang.String) $r22;	r18 = $r23;	if $r23 == null goto (branch);	if r18 == null goto $r24 = r0.<freemarker.template.Configuration: java.lang.String defaultEncoding>;	$r24 = r18;	goto [?= return $r24];	return $r24
;block_num 7