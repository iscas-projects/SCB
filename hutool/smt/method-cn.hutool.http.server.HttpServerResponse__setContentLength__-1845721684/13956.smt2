(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2260 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun setHeader/-680074750 (var2260 var1048 String) var2260)
(declare-const null-var2260 var2260)
(declare-const null-Int Int)
(declare-const var1048-CONTENT_LENGTH var1048)
(declare-const var100 var2260) ; Statement: r0 := @this: cn.hutool.http.server.HttpServerResponse 
(assert (not (= var100 null-var2260)))
(declare-const var2890 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2890 null-Int)))
(define-const var2545 var1048 var1048-CONTENT_LENGTH) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONTENT_LENGTH> 
(define-const var710 String (String_valueOf/-107395227 var2890)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert true)
(define-const var2178 var2260 (setHeader/-680074750 var100 var2545 var710)) ; Statement: $r3 = virtualinvoke r0.<cn.hutool.http.server.HttpServerResponse: cn.hutool.http.server.HttpServerResponse setHeader(cn.hutool.http.Header,java.lang.String)>($r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), setHeader/-680074750=([cn.hutool.http.server.HttpServerResponse, cn.hutool.http.Header, java.lang.String], cn.hutool.http.server.HttpServerResponse)}
; {var2260=cn.hutool.http.server.HttpServerResponse, var100=r0, var2890=l0, var1048=cn.hutool.http.Header, var2545=$r1, var710=$r2, var2178=$r3}
; {cn.hutool.http.server.HttpServerResponse=var2260, r0=var100, l0=var2890, cn.hutool.http.Header=var1048, $r1=var2545, $r2=var710, $r3=var2178}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: cn.hutool.http.server.HttpServerResponse;	l0 := @parameter0: long;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONTENT_LENGTH>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r3 = virtualinvoke r0.<cn.hutool.http.server.HttpServerResponse: cn.hutool.http.server.HttpServerResponse setHeader(cn.hutool.http.Header,java.lang.String)>($r1, $r2);	return $r3
;block_num 1