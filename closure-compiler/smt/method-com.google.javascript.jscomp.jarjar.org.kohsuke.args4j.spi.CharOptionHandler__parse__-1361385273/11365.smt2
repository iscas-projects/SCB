(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1308 0)
(declare-sort var1555 0)
(declare-sort var531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var531_valueOf/-1186540555 (Int) var531)
(declare-const null-var1308 var1308)
(declare-const null-String String)
(declare-const var1830 var1308) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler 
(assert (not (= var1830 null-var1308)))
(declare-const var461 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var461 null-String)))
(assert true)
(define-const var1250 Int (length/-134980193 var461)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (= var1250 1)) ; Cond: $i0 == 1 
(assert (and true (and (> (str.len var461) 0) (<= 0 0))))
(define-const var2240 Int (charAt/698050440 var461 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3744 var531 (var531_valueOf/-1186540555 var2240)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var531_valueOf/-1186540555=([char], java.lang.Character)}
; {var1308=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler, var1830=r3, var461=r0, var1555=null_type, var1250=$i0, var2240=$c1, var531=java.lang.Character, var3744=$r1}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler=var1308, r3=var1830, r0=var461, null_type=var1555, $i0=var1250, $c1=var2240, java.lang.Character=var531, $r1=var3744}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	return $r1
;block_num 2