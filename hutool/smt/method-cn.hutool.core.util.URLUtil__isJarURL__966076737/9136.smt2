(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3978 0)
(declare-sort var150 0)
(declare-sort var187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var150-init () (Array Int var150))
(declare-fun var187_notNull/515149844 (var150 String (Array Int var150)) var150)
(declare-fun cast-from-var3978-to-var150 (var3978) var150)
(declare-fun getProtocol/70454678 (var3978) String)
(declare-const null-var3978 var3978)
(declare-const var3530 var3978) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3530 null-var3978)))
(define-const var1843 (Array Int var150) arr-var150-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var187_notNull/515149844 (cast-from-var3978-to-var150 var3530) "URL must be not null" var1843)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "URL must be not null", $r1) 

(declare-const var3530!1 var3978)
(declare-const var390 String)
(declare-const var1843!1 (Array Int var150))
(assert true)
(define-const var1944 String (getProtocol/70454678 var3530!1)) ; Statement: r2 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(define-const var2369 String "jar") ; Statement: $r3 = "jar" 
(assert true)
(define-const var1121 Bool (= var2369 var1944)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z4 = 1 
(assert (not (= (ite var1121 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2169 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var150-init=([], java.lang.Object[]), var187_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var3978-to-var150=([java.net.URL], java.lang.Object), getProtocol/70454678=([java.net.URL], java.lang.String)}
; {var3978=java.net.URL, var3530=r0, var150=java.lang.Object, var1843=$r1, var187=cn.hutool.core.lang.Assert, var390="URL must be not null", var1944=r2, var2369=$r3, var1121=$z0, var2169=$z4}
; {java.net.URL=var3978, r0=var3530, java.lang.Object=var150, $r1=var1843, cn.hutool.core.lang.Assert=var187, "URL must be not null"=var390, r2=var1944, $r3=var2369, $z0=var1121, $z4=var2169}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "URL must be not null", $r1);	r2 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$r3 = "jar";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 3