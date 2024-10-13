(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3370 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun negated/-348918598 (var3370) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyName/-348918598 (var3370) String)
(declare-fun propertyValue/-348918598 (var3370) String)
(declare-const null-var3370 var3370)
(declare-const null-String String)
(declare-const var2321 var3370) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape 
(assert (not (= var2321 null-var3370)))
(declare-const var1858 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1858 null-String)))
(define-const var3347 Bool (negated/-348918598 var2321)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> 
 ; Statement: if $z0 == 0 goto $r5 = "\\p{" 
(assert (= (ite var3347 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2829 String "\u005cp{") ; Statement: $r5 = "\\p{" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1858 var2829)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1858!1 String)
(assert (= var1858!1 (str.++ var1858 var2829)))
(define-const var206 String (propertyName/-348918598 var2321)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> 
 ; Statement: if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> 
(assert (= var206 null-String)) ; Cond: $r2 == null 
(define-const var3208 String (propertyValue/-348918598 var2321)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> 
(assert true)
;(assert (append/672562846 var1858!1 var3208)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1858!2 String)
(assert (= var1858!2 (str.++ var1858!1 var3208)))
(assert true)
;(assert (append/672562846 var1858!2 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1858!3 String)
(assert (= var1858!3 (str.++ var1858!2 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {negated/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyName/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), propertyValue/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String)}
; {var3370=com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape, var2321=r1, var1858=r0, var3347=$z0, var2829=$r5, var206=$r2, var468=null_type, var3208=$r3}
; {com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape=var3370, r1=var2321, r0=var1858, $z0=var3347, $r5=var2829, $r2=var206, null_type=var468, $r3=var3208}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated>;	if $z0 == 0 goto $r5 = "\\p{";	$r5 = "\\p{";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName>;	if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue>;	$r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 4