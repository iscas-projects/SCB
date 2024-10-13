(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2343 0)
(declare-sort var1518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun negated/-348918598 (var2343) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyName/-348918598 (var2343) String)
(declare-fun propertyValue/-348918598 (var2343) String)
(declare-const null-var2343 var2343)
(declare-const null-String String)
(declare-const var2054 var2343) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape 
(assert (not (= var2054 null-var2343)))
(declare-const var3983 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3983 null-String)))
(define-const var3526 Bool (negated/-348918598 var2054)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated> 
 ; Statement: if $z0 == 0 goto $r5 = "\\p{" 
(assert (not (= (ite var3526 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3226 String "\u005cP{") ; Statement: $r5 = "\\P{" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3983 var3226)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3983!1 String)
(assert (= var3983!1 (str.++ var3983 var3226)))
(define-const var599 String (propertyName/-348918598 var2054)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName> 
 ; Statement: if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> 
(assert (= var599 null-String)) ; Cond: $r2 == null 
(define-const var2715 String (propertyValue/-348918598 var2054)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue> 
(assert true)
;(assert (append/672562846 var3983!1 var2715)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3983!2 String)
(assert (= var3983!2 (str.++ var3983!1 var2715)))
(assert true)
;(assert (append/672562846 var3983!2 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3983!3 String)
(assert (= var3983!3 (str.++ var3983!2 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {negated/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyName/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String), propertyValue/-348918598=([com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape], java.lang.String)}
; {var2343=com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape, var2054=r1, var3983=r0, var3526=$z0, var3226=$r5, var599=$r2, var1518=null_type, var2715=$r3}
; {com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape=var2343, r1=var2054, r0=var3983, $z0=var3526, $r5=var3226, $r2=var599, null_type=var1518, $r3=var2715}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: boolean negated>;	if $z0 == 0 goto $r5 = "\\p{";	$r5 = "\\P{";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyName>;	if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue>;	$r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$UnicodePropertyEscape: java.lang.String propertyValue>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 4