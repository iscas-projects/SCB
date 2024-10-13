(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1894 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1894 null-String)))
(assert true)
(define-const var2391 Int (lastIndexOf/-618837785 var1894 ".class")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".class") 
(assert (not (and true (and (>= 0 0) (>= (str.len var1894) var2391) (>= var2391 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1894=r0, var1160=null_type, var2391=$i0, var3285=$r1}
; {r0=var1894, null_type=var1160, $i0=var2391, $r1=var3285}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".class");	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	return $r1
;block_num 1