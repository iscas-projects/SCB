(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2343 0)
(declare-sort var773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun getBytes/-163691139 (String var2343) (Array Int Int))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var773-ISO_8859_1 var2343)
(declare-const var2364 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2364 null-__Array__Int__String__)))
(define-const var2219 Int (getLength-Arr-String-1 var2364)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto $r1 = new java.lang.StringBuilder 
(assert (not (not (= var2219 1)))) ; Negate: Cond: $i0 != 1  
(define-const var2878 String (select var2364 0)) ; Statement: $r7 = r0[0] 
(define-const var2151 var2343 var773-ISO_8859_1) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var1315 (Array Int Int) (getBytes/-163691139 var2878 var2151)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var2364=r0, var2219=$i0, var2878=$r7, var2343=java.nio.charset.Charset, var773=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var2151=$r6, var1315=$r8}
; {r0=var2364, $i0=var2219, $r7=var2878, java.nio.charset.Charset=var2343, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var773, $r6=var2151, $r8=var1315}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 != 1 goto $r1 = new java.lang.StringBuilder;	$r7 = r0[0];	$r6 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1>;	$r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r6);	return $r8
;block_num 2