(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2538 0)
(declare-sort var3893 0)
(declare-sort var1370 0)
(declare-sort var3189 0)
(declare-sort var403 0)
(declare-sort var3809 0)
(declare-sort var2842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun localeToCharsetMap/198980522 (var2538) var1370)
(declare-fun var3189_isEmpty/-1655013448 (var3189) Bool)
(declare-fun cast-from-var1370-to-var3189 (var1370) var3189)
(declare-fun var403_check/-951860758 (String var3809) void)
(declare-fun cast-from-var3893-to-var3809 (var3893) var3809)
(declare-fun toString/207920178 (var3893) String)
(declare-fun var3189_get/1088891777 (var3189 var3809) var3809)
(declare-fun cast-from-String-to-var3809 (String) var3809)
(declare-fun cast-from-var3809-to-String (var3809) String)
(declare-fun getVariant/1821738799 (var3893) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getLanguage/1066037614 (var3893) String)
(declare-fun defaultEncoding/198980522 (var2538) String)
(declare-const null-var2538 var2538)
(declare-const null-var3893 var3893)
(declare-const null-String String)
(declare-const var657 var2538) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var657 null-var2538)))
(declare-const var2424 var3893) ; Statement: r2 := @parameter0: java.util.Locale 
(assert (not (= var2424 null-var3893)))
(define-const var3539 var1370 (localeToCharsetMap/198980522 var657)) ; Statement: $r1 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(define-const var683 Bool (var3189_isEmpty/-1655013448 (cast-from-var1370-to-var3189 var3539))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.concurrent.ConcurrentMap: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2) 
(assert (= (ite var683 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var403_check/-951860758 "locale" (cast-from-var3893-to-var3809 var2424))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2) 

(declare-const var2121 String)
(declare-const var2424!1 var3893)
(define-const var3343 var1370 (localeToCharsetMap/198980522 var657)) ; Statement: $r3 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(assert true)
(define-const var293 String (toString/207920178 var2424!1)) ; Statement: $r4 = virtualinvoke r2.<java.util.Locale: java.lang.String toString()>() 
(define-const var113 var3809 (var3189_get/1088891777 (cast-from-var1370-to-var3189 var3343) (cast-from-String-to-var3809 var293))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var23 String (cast-from-var3809-to-String var113)) ; Statement: r18 = (java.lang.String) $r5 
 ; Statement: if r18 != null goto (branch) 
(assert (not (not (= var23 null-String)))) ; Negate: Cond: r18 != null  
(assert true)
(define-const var3153 String (getVariant/1821738799 var2424!1)) ; Statement: $r6 = virtualinvoke r2.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1004 Int (length/-134980193 var3153)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(assert (<= var1004 0)) ; Cond: $i0 <= 0 
(define-const var1563 var1370 (localeToCharsetMap/198980522 var657)) ; Statement: $r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap> 
(assert true)
(define-const var814 String (getLanguage/1066037614 var2424!1)) ; Statement: $r21 = virtualinvoke r2.<java.util.Locale: java.lang.String getLanguage()>() 
(define-const var913 var3809 (var3189_get/1088891777 (cast-from-var1370-to-var3189 var1563) (cast-from-String-to-var3809 var814))) ; Statement: $r22 = interfaceinvoke $r20.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r21) 
(define-const var60 String (cast-from-var3809-to-String var913)) ; Statement: $r23 = (java.lang.String) $r22 
(define-const var23!1 String var60) ; Statement: r18 = $r23 
 ; Statement: if $r23 == null goto (branch) 
(assert (= var60 null-String)) ; Cond: $r23 == null 
 ; Statement: if r18 == null goto $r24 = r0.<freemarker.template.Configuration: java.lang.String defaultEncoding> 
(assert (= var23!1 null-String)) ; Cond: r18 == null 
(define-const var2500 String (defaultEncoding/198980522 var657)) ; Statement: $r24 = r0.<freemarker.template.Configuration: java.lang.String defaultEncoding> 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {localeToCharsetMap/198980522=([freemarker.template.Configuration], java.util.concurrent.ConcurrentMap), var3189_isEmpty/-1655013448=([java.util.Map], boolean), cast-from-var1370-to-var3189=([java.util.concurrent.ConcurrentMap], java.util.Map), var403_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-var3893-to-var3809=([java.util.Locale], java.lang.Object), toString/207920178=([java.util.Locale], java.lang.String), var3189_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3809=([java.lang.String], java.lang.Object), cast-from-var3809-to-String=([java.lang.Object], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), length/-134980193=([java.lang.String], int), getLanguage/1066037614=([java.util.Locale], java.lang.String), defaultEncoding/198980522=([freemarker.template.Configuration], java.lang.String)}
; {var2538=freemarker.template.Configuration, var657=r0, var3893=java.util.Locale, var2424=r2, var1370=java.util.concurrent.ConcurrentMap, var3539=$r1, var3189=java.util.Map, var683=$z0, var403=freemarker.template.utility.NullArgumentException, var3809=java.lang.Object, var2121="locale", var3343=$r3, var293=$r4, var113=$r5, var23=r18, var2842=null_type, var3153=$r6, var1004=$i0, var1563=$r20, var814=$r21, var913=$r22, var60=$r23, var2500=$r24}
; {freemarker.template.Configuration=var2538, r0=var657, java.util.Locale=var3893, r2=var2424, java.util.concurrent.ConcurrentMap=var1370, $r1=var3539, java.util.Map=var3189, $z0=var683, freemarker.template.utility.NullArgumentException=var403, java.lang.Object=var3809, "locale"=var2121, $r3=var3343, $r4=var293, $r5=var113, r18=var23, null_type=var2842, $r6=var3153, $i0=var1004, $r20=var1563, $r21=var814, $r22=var913, $r23=var60, $r24=var2500}
;seq <java.util.Locale: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	r2 := @parameter0: java.util.Locale;	$r1 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$z0 = interfaceinvoke $r1.<java.util.concurrent.ConcurrentMap: boolean isEmpty()>();	if $z0 == 0 goto staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2);	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("locale", r2);	$r3 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$r4 = virtualinvoke r2.<java.util.Locale: java.lang.String toString()>();	$r5 = interfaceinvoke $r3.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r4);	r18 = (java.lang.String) $r5;	if r18 != null goto (branch);	$r6 = virtualinvoke r2.<java.util.Locale: java.lang.String getVariant()>();	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	if $i0 <= 0 goto $r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$r20 = r0.<freemarker.template.Configuration: java.util.concurrent.ConcurrentMap localeToCharsetMap>;	$r21 = virtualinvoke r2.<java.util.Locale: java.lang.String getLanguage()>();	$r22 = interfaceinvoke $r20.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r21);	$r23 = (java.lang.String) $r22;	r18 = $r23;	if $r23 == null goto (branch);	if r18 == null goto $r24 = r0.<freemarker.template.Configuration: java.lang.String defaultEncoding>;	$r24 = r0.<freemarker.template.Configuration: java.lang.String defaultEncoding>;	return $r24
;block_num 7