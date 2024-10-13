(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1105 0)
(declare-sort var2963 0)
(declare-sort var2466 0)
(declare-sort var3441 0)
(declare-sort var2340 0)
(declare-sort var1500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/327305655 (var1105) var3441)
(declare-fun var1500_defaultIfNull/1187527895 (var2340 var2340) var2340)
(declare-fun cast-from-var3441-to-var2340 (var3441) var2340)
(declare-fun cast-from-var2340-to-var3441 (var2340) var3441)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun write/879240270 (var1105 var2963 Int String) var1105)
(declare-const null-var1105 var1105)
(declare-const null-var2963 var2963)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1105-DEFAULT_CHARSET var3441)
(declare-const var1886 var1105) ; Statement: r0 := @this: cn.hutool.http.server.HttpServerResponse 
(assert (not (= var1886 null-var1105)))
(declare-const var3463 var2963) ; Statement: r6 := @parameter0: java.io.InputStream 
(assert (not (= var3463 null-var2963)))
(declare-const var3116 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3116 null-Int)))
(declare-const var1169 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1169 null-String)))
(declare-const var669 String) ; Statement: r9 := @parameter3: java.lang.String 
(assert (not (= var669 null-String)))
(define-const var1694 var3441 (charset/327305655 var1886)) ; Statement: $r2 = r0.<cn.hutool.http.server.HttpServerResponse: java.nio.charset.Charset charset> 
(define-const var2202 var3441 var1105-DEFAULT_CHARSET) ; Statement: $r1 = <cn.hutool.http.server.HttpServerResponse: java.nio.charset.Charset DEFAULT_CHARSET> 
(define-const var2790 var2340 (var1500_defaultIfNull/1187527895 (cast-from-var3441-to-var2340 var1694) (cast-from-var3441-to-var2340 var2202))) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.ObjectUtil: java.lang.Object defaultIfNull(java.lang.Object,java.lang.Object)>($r2, $r1) 
(define-const var288 var3441 (cast-from-var2340-to-var3441 var2790)) ; Statement: r4 = (java.nio.charset.Charset) $r3 
(assert true)
(define-const var1971 Bool (startsWith/-1785782452 var1169 "text/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("text/") 
 ; Statement: if 0 != $z0 goto $r7 = virtualinvoke r0.<cn.hutool.http.server.HttpServerResponse: cn.hutool.http.server.HttpServerResponse write(java.io.InputStream,int,java.lang.String)>(r6, i0, r5) 
(assert (not (= 0 (ite var1971 1 0)))) ; Cond: 0 != $z0 
(assert true)
(define-const var3302 var1105 (write/879240270 var1886 var3463 var3116 var1169)) ; Statement: $r7 = virtualinvoke r0.<cn.hutool.http.server.HttpServerResponse: cn.hutool.http.server.HttpServerResponse write(java.io.InputStream,int,java.lang.String)>(r6, i0, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/327305655=([cn.hutool.http.server.HttpServerResponse], java.nio.charset.Charset), var1500_defaultIfNull/1187527895=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3441-to-var2340=([java.nio.charset.Charset], java.lang.Object), cast-from-var2340-to-var3441=([java.lang.Object], java.nio.charset.Charset), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), write/879240270=([cn.hutool.http.server.HttpServerResponse, java.io.InputStream, int, java.lang.String], cn.hutool.http.server.HttpServerResponse)}
; {var1105=cn.hutool.http.server.HttpServerResponse, var1886=r0, var2963=java.io.InputStream, var3463=r6, var3116=i0, var1169=r5, var2466=null_type, var669=r9, var3441=java.nio.charset.Charset, var1694=$r2, var2202=$r1, var2340=java.lang.Object, var1500=cn.hutool.core.util.ObjectUtil, var2790=$r3, var288=r4, var1971=$z0, var3302=$r7}
; {cn.hutool.http.server.HttpServerResponse=var1105, r0=var1886, java.io.InputStream=var2963, r6=var3463, i0=var3116, r5=var1169, null_type=var2466, r9=var669, java.nio.charset.Charset=var3441, $r2=var1694, $r1=var2202, java.lang.Object=var2340, cn.hutool.core.util.ObjectUtil=var1500, $r3=var2790, r4=var288, $z0=var1971, $r7=var3302}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.server.HttpServerResponse;	r6 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	r5 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.String;	$r2 = r0.<cn.hutool.http.server.HttpServerResponse: java.nio.charset.Charset charset>;	$r1 = <cn.hutool.http.server.HttpServerResponse: java.nio.charset.Charset DEFAULT_CHARSET>;	$r3 = staticinvoke <cn.hutool.core.util.ObjectUtil: java.lang.Object defaultIfNull(java.lang.Object,java.lang.Object)>($r2, $r1);	r4 = (java.nio.charset.Charset) $r3;	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("text/");	if 0 != $z0 goto $r7 = virtualinvoke r0.<cn.hutool.http.server.HttpServerResponse: cn.hutool.http.server.HttpServerResponse write(java.io.InputStream,int,java.lang.String)>(r6, i0, r5);	$r7 = virtualinvoke r0.<cn.hutool.http.server.HttpServerResponse: cn.hutool.http.server.HttpServerResponse write(java.io.InputStream,int,java.lang.String)>(r6, i0, r5);	return $r7
;block_num 2