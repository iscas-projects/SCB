(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2281 0)
(declare-sort var3978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/1192878296 (var3978) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2281 var2281)
(declare-const null-var3978 var3978)
(declare-const null-Int Int)
(declare-const var2710 var2281) ; Statement: r2 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var2710 null-var2281)))
(declare-const var889 var3978) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert (not (= var889 null-var3978)))
(declare-const var1327 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1327 null-Int)))
(declare-const var1875 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1875 null-Int)))
(define-const var1823 String (string/1192878296 var889)) ; Statement: r10 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: java.lang.String string> 
(assert true)
(define-const var2902 Bool (startsWith/-1785782452 var1823 "=")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("=") 
 ; Statement: if $z0 != 0 goto $r1 = "=" 
(assert (not (not (= (ite var2902 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {string/1192878296=([com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2281=com.google.javascript.jscomp.parsing.JsDocInfoParser, var2710=r2, var3978=com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, var889=r0, var1327=i2, var1875=i3, var1823=r10, var2902=$z0}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var2281, r2=var2710, com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo=var3978, r0=var889, i2=var1327, i3=var1875, r10=var1823, $z0=var2902}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	r0 := @parameter0: com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	i2 := @parameter1: int;	i3 := @parameter2: int;	r10 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: java.lang.String string>;	$z0 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("=");	if $z0 != 0 goto $r1 = "=";	return null
;block_num 2