(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var27 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAsString/-1884136958 (var27) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var27 var27)
(declare-const var3889 var27) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive 
(assert (not (= var3889 null-var27)))
(assert true)
(define-const var836 String (getAsString/-1884136958 var3889)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: java.lang.String getAsString()>() 
(assert (and true (and (> (str.len var836) 0) (<= 0 0))))
(define-const var1152 Int (charAt/698050440 var836 0)) ; Statement: $c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0) 
 ; Statement: return $c0 
(check-sat)
(get-model)
(get-unsat-core)
; {getAsString/-1884136958=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var27=com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive, var3889=r0, var836=$r1, var1152=$c0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive=var27, r0=var3889, $r1=var836, $c0=var1152}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: java.lang.String getAsString()>();	$c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	return $c0
;block_num 1