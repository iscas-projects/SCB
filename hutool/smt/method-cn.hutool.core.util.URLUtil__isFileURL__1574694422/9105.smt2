(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1127 0)
(declare-sort var456 0)
(declare-sort var2204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var456-init () (Array Int var456))
(declare-fun var2204_notNull/515149844 (var456 String (Array Int var456)) var456)
(declare-fun cast-from-var1127-to-var456 (var1127) var456)
(declare-fun getProtocol/70454678 (var1127) String)
(declare-const null-var1127 var1127)
(declare-const var1432 var1127) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1432 null-var1127)))
(define-const var1037 (Array Int var456) arr-var456-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2204_notNull/515149844 (cast-from-var1127-to-var456 var1432) "URL must be not null" var1037)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "URL must be not null", $r1) 

(declare-const var1432!1 var1127)
(declare-const var507 String)
(declare-const var1037!1 (Array Int var456))
(assert true)
(define-const var490 String (getProtocol/70454678 var1432!1)) ; Statement: r2 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(define-const var3984 String "file") ; Statement: $r3 = "file" 
(assert true)
(define-const var3424 Bool (= var3984 var490)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3424 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1691 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var456-init=([], java.lang.Object[]), var2204_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var1127-to-var456=([java.net.URL], java.lang.Object), getProtocol/70454678=([java.net.URL], java.lang.String)}
; {var1127=java.net.URL, var1432=r0, var456=java.lang.Object, var1037=$r1, var2204=cn.hutool.core.lang.Assert, var507="URL must be not null", var490=r2, var3984=$r3, var3424=$z0, var1691=$z3}
; {java.net.URL=var1127, r0=var1432, java.lang.Object=var456, $r1=var1037, cn.hutool.core.lang.Assert=var2204, "URL must be not null"=var507, r2=var490, $r3=var3984, $z0=var3424, $z3=var1691}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "URL must be not null", $r1);	r2 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$r3 = "file";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3