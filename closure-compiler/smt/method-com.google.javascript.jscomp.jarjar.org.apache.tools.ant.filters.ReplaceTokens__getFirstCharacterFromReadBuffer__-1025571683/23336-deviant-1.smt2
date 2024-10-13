(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var70 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBuffer/1229857244 (var70) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var70 var70)
(declare-const var3846 var70) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens 
(assert (not (= var3846 null-var70)))
(define-const var3577 String (readBuffer/1229857244 var3846)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert true)
(define-const var1269 Bool (isEmpty/-1285796103 var3577)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert (= (ite var1269 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3036 String (readBuffer/1229857244 var3846)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert (and true (and (> (str.len var3036) 0) (<= 0 0))))
(define-const var880 Int (charAt/698050440 var3036 0)) ; Statement: c0 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0) 
(define-const var2353 String (readBuffer/1229857244 var3846)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert (not (and true (and (>= 1 0) (>= (str.len var2353) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {readBuffer/1229857244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), charAt/698050440=([java.lang.String, int], char), substring/850833817=([java.lang.String, int], java.lang.String), cast-from-Int-to-Int=([char], int)}
; {var70=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens, var3846=r0, var3577=$r1, var1269=$z0, var3036=$r2, var880=c0, var2353=$r3, var1424=$r4, var3912=$i3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens=var70, r0=var3846, $r1=var3577, $z0=var1269, $r2=var3036, c0=var880, $r3=var2353, $r4=var1424, $i3=var3912}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	c0 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> = $r4;	$i3 = (int) c0;	return $i3
;block_num 2