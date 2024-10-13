(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matches/-643015890 (String String) Bool)
(declare-const null-String String)
(declare-const var1169 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1169 null-String)))
(assert true)
(define-const var302 Bool (matches/-643015890 var1169 "[a-zA-Z0-9_]*")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("[a-zA-Z0-9_]*") 
(assert (= (matches/-643015890 var1169 "[a-zA-Z0-9_]*") (str.in_re var1169 (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))))))
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (= (ite var302 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {matches/-643015890=([java.lang.String, java.lang.String], boolean)}
; {var1169=r0, var3244=null_type, var302=$z0}
; {r0=var1169, null_type=var3244, $z0=var302}
;seq <java.lang.String: boolean matches(java.lang.String)>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>("[a-zA-Z0-9_]*");	if $z0 != 0 goto return r0;	return r0
;block_num 2