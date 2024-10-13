(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1705 0)
(declare-sort var362 0)
(declare-sort var3910 0)
(declare-sort var2239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endpoint/-1106376398 (var3910) var362)
(declare-fun cast-from-var1705-to-var3910 (var1705) var3910)
(declare-fun append/-1031950772 (String var2239) String)
(declare-fun cast-from-var362-to-var2239 (var362) var2239)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1705 var1705)
(declare-const null-String String)
(declare-const var3361 var1705) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue 
(assert (not (= var3361 null-var1705)))
(declare-const var3230 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3230 null-String)))
(define-const var3847 var362 (endpoint/-1106376398 (cast-from-var1705-to-var3910 var3361))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue: java.lang.Comparable endpoint> 
(assert true)
(define-const var1469 String (append/-1031950772 var3230 (cast-from-var362-to-var2239 var3847))) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3230!1 String)
(assert (str.prefixof var3230 var3230!1))
(assert true)
;(assert (append/-1166366385 var1469 93)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1469!1 String)
(assert (str.prefixof var1469 var1469!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endpoint/-1106376398=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Comparable), cast-from-var1705-to-var3910=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var362-to-var2239=([java.lang.Comparable], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1705=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue, var3361=r1, var3230=r0, var362=java.lang.Comparable, var3910=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var3847=$r2, var2239=java.lang.Object, var1469=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue=var1705, r1=var3361, r0=var3230, java.lang.Comparable=var362, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var3910, $r2=var3847, java.lang.Object=var2239, $r3=var1469}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue: java.lang.Comparable endpoint>;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 1