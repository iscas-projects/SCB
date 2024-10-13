(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2067_randomUUID/-2039575017 () var2067)
(declare-fun toString/1550724275 (var2067) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-const var116 var2067 var2067_randomUUID/-2039575017) ; Statement: $r0 = staticinvoke <java.util.UUID: java.util.UUID randomUUID()>() 
(assert true)
(define-const var3110 String (toString/1550724275 var116)) ; Statement: r1 = virtualinvoke $r0.<java.util.UUID: java.lang.String toString()>() 
(assert true)
(define-const var2189 String (replaceAll/1692887130 var3110 "-" "_")) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("-", "_") 
(assert (= (replaceAll/1692887130 var3110 "-" "_") (str.replace_re_all var3110 (str.to_re "-") "_")))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2067_randomUUID/-2039575017=([], java.util.UUID), toString/1550724275=([java.util.UUID], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var2067=java.util.UUID, var116=$r0, var3110=r1, var2189=$r2}
; {java.util.UUID=var2067, $r0=var116, r1=var3110, $r2=var2189}
;seq <java.util.UUID: java.lang.String toString()>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts $r0 = staticinvoke <java.util.UUID: java.util.UUID randomUUID()>();	r1 = virtualinvoke $r0.<java.util.UUID: java.lang.String toString()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("-", "_");	return $r2
;block_num 1