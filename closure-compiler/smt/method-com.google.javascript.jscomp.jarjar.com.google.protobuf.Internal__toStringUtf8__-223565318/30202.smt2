(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort var2504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2272) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2504-UTF_8 var2272)
(declare-const var2094 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2094 null-__Array__Int__Int__)))
(define-const var275 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2349 var2272 var2504-UTF_8) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var275 var2094 var2349)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r2) 

(declare-const var275!1 String)
(declare-const var2094!1 (Array Int Int))
(declare-const var2349!1 var2272)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var2094=r1, var275=$r0, var2272=java.nio.charset.Charset, var2504=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var2349=$r2}
; {r1=var2094, $r0=var275, java.nio.charset.Charset=var2272, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var2504, $r2=var2349}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: byte[];	$r0 = new java.lang.String;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r2);	return $r0
;block_num 1