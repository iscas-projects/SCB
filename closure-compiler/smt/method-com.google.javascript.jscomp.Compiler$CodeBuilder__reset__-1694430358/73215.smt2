(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-1774502042 (var2062) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var2062 var2062)
(declare-const var2530 var2062) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var2530 null-var2062)))
(define-const var2158 String (sb/-1774502042 var2530)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> 
(assert true)
;(assert (setLength/1276735992 var2158 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2158!1 String)
(declare-const var2604 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var2062=com.google.javascript.jscomp.Compiler$CodeBuilder, var2530=r0, var2158=$r1, var2604=0}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var2062, r0=var2530, $r1=var2158, 0=var2604}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	$r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb>;	virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0);	return
;block_num 1