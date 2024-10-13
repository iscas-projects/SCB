(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3219 0)
(declare-sort var724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var724-init () (Array Int var724))
(declare-fun algorithm/-232008204 (var3219) String)
(declare-fun cast-from-String-to-var724 (String) var724)
(declare-fun String_format/1339386452 (String (Array Int var724)) String)
(declare-const null-var3219 var3219)
(declare-const null-__Array__Int__var724__ (Array Int var724))
(declare-const var521 var3219) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm 
(assert (not (= var521 null-var3219)))
(define-const var1020 (Array Int var724) arr-var724-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2059 String (algorithm/-232008204 var521)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> 
(declare-const var1020!1 (Array Int var724))
(assert (not (= var1020!1 null-__Array__Int__var724__)))
(assert (= (select var1020!1 0) (cast-from-String-to-var724 var2059))) ; Statement: $r0[0] = $r2 
(define-const var1412 String (String_format/1339386452 "<ChecksumAlgorithm:algorithm=%s>" var1020!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<ChecksumAlgorithm:algorithm=%s>", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var724-init=([], java.lang.Object[]), algorithm/-232008204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm], java.lang.String), cast-from-String-to-var724=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3219=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm, var521=r1, var724=java.lang.Object, var1020=$r0, var2059=$r2, var1412=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm=var3219, r1=var521, java.lang.Object=var724, $r0=var1020, $r2=var2059, $r3=var1412}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm>;	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<ChecksumAlgorithm:algorithm=%s>", $r0);	return $r3
;block_num 1