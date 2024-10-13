(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2306 0)
(declare-sort var1132 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1132-init () (Array Int var1132))
(declare-fun var91_notNull/515149844 (var1132 String (Array Int var1132)) var1132)
(declare-fun cast-from-var2306-to-var1132 (var2306) var1132)
(declare-fun getProtocol/70454678 (var2306) String)
(declare-const null-var2306 var2306)
(declare-const var3176 var2306) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3176 null-var2306)))
(define-const var1559 (Array Int var1132) arr-var1132-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var91_notNull/515149844 (cast-from-var2306-to-var1132 var3176) "URL must be not null" var1559)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "URL must be not null", $r1) 

(declare-const var3176!1 var2306)
(declare-const var3325 String)
(declare-const var1559!1 (Array Int var1132))
(define-const var1238 String "file") ; Statement: $r3 = "file" 
(assert true)
(define-const var3442 String (getProtocol/70454678 var3176!1)) ; Statement: $r2 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var3901 Bool (= var1238 var3442)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var3901 1 0) 0)) ; Cond: $z0 == 0 
(define-const var189 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1132-init=([], java.lang.Object[]), var91_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var2306-to-var1132=([java.net.URL], java.lang.Object), getProtocol/70454678=([java.net.URL], java.lang.String)}
; {var2306=java.net.URL, var3176=r0, var1132=java.lang.Object, var1559=$r1, var91=cn.hutool.core.lang.Assert, var3325="URL must be not null", var1238=$r3, var3442=$r2, var3901=$z0, var189=$z2}
; {java.net.URL=var2306, r0=var3176, java.lang.Object=var1132, $r1=var1559, cn.hutool.core.lang.Assert=var91, "URL must be not null"=var3325, $r3=var1238, $r2=var3442, $z0=var3901, $z2=var189}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "URL must be not null", $r1);	$r3 = "file";	$r2 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3