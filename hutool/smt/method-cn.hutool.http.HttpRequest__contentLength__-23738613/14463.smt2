(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1509 0)
(declare-sort var2501 0)
(declare-sort var1894 0)
(declare-sort var3323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun header/1986777898 (var1894 var2501 String) var3323)
(declare-fun cast-from-var1509-to-var1894 (var1509) var1894)
(declare-const null-var1509 var1509)
(declare-const null-Int Int)
(declare-const var2501-CONTENT_LENGTH var2501)
(declare-const var3034 var1509) ; Statement: r0 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var3034 null-var1509)))
(declare-const var1526 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1526 null-Int)))
(define-const var2879 var2501 var2501-CONTENT_LENGTH) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONTENT_LENGTH> 
(define-const var3886 String (String_valueOf/1240665136 var1526)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (header/1986777898 (cast-from-var1509-to-var1894 var3034) var2879 var3886)) ; Statement: virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.Object header(cn.hutool.http.Header,java.lang.String)>($r1, $r2) 

(declare-const var3034!1 var1509)
(declare-const var2879!1 var2501)
(declare-const var3886!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), header/1986777898=([cn.hutool.http.HttpBase, cn.hutool.http.Header, java.lang.String], java.lang.Object), cast-from-var1509-to-var1894=([cn.hutool.http.HttpRequest], cn.hutool.http.HttpBase)}
; {var1509=cn.hutool.http.HttpRequest, var3034=r0, var1526=i0, var2501=cn.hutool.http.Header, var2879=$r1, var3886=$r2, var1894=cn.hutool.http.HttpBase, var3323=java.lang.Object}
; {cn.hutool.http.HttpRequest=var1509, r0=var3034, i0=var1526, cn.hutool.http.Header=var2501, $r1=var2879, $r2=var3886, cn.hutool.http.HttpBase=var1894, java.lang.Object=var3323}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: cn.hutool.http.HttpRequest;	i0 := @parameter0: int;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONTENT_LENGTH>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.Object header(cn.hutool.http.Header,java.lang.String)>($r1, $r2);	return r0
;block_num 1