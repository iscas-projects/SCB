(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stringValue/-273183107 (var1381) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1381 var1381)
(declare-const var2276 var1381) ; Statement: r0 := @this: freemarker.ext.beans.CharacterOrString 
(assert (not (= var2276 null-var1381)))
(define-const var2762 String (stringValue/-273183107 var2276)) ; Statement: $r1 = r0.<freemarker.ext.beans.CharacterOrString: java.lang.String stringValue> 
(assert (not (and true (and (> (str.len var2762) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {stringValue/-273183107=([freemarker.ext.beans.CharacterOrString], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var1381=freemarker.ext.beans.CharacterOrString, var2276=r0, var2762=$r1, var376=$c0}
; {freemarker.ext.beans.CharacterOrString=var1381, r0=var2276, $r1=var2762, $c0=var376}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: freemarker.ext.beans.CharacterOrString;	$r1 = r0.<freemarker.ext.beans.CharacterOrString: java.lang.String stringValue>;	$c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	return $c0
;block_num 1