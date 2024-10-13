(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var3672 0)
(declare-sort var2882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var2882-init () var2882)
(declare-fun <init>/1247810213 (var2882 String) void)
(declare-const null-String String)
(declare-const null-var3672 var3672)
(declare-const var2421 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2421 null-String)))
(assert true)
(define-const var2820 String (replaceAll/1692887130 var2421 "\u005c+" "%2B")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\+", "%2B") 
(assert (= (replaceAll/1692887130 var2421 "\u005c+" "%2B") (str.replace_re_all var2421 (str.to_re "+") "%2B")))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3986 var3672) ; Statement: $r3 := @caughtexception 
(assert (not (= var3986 null-var3672)))
(define-const var3364 var2882 var2882-init) ; Statement: $r4 = new java.lang.InternalError 
(assert true)
;(assert (<init>/1247810213 var3364 "UTF-8 not supported")) ; Statement: specialinvoke $r4.<java.lang.InternalError: void <init>(java.lang.String)>("UTF-8 not supported") 

(declare-const var3364!1 var2882)
(declare-const var504 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var2882-init=([], java.lang.InternalError), <init>/1247810213=([java.lang.InternalError, java.lang.String], void)}
; {var2421=r0, var149=null_type, var2820=r1, var3672=java.io.UnsupportedEncodingException, var3986=$r3, var2882=java.lang.InternalError, var3364=$r4, var504="UTF-8 not supported"}
; {r0=var2421, null_type=var149, r1=var2820, java.io.UnsupportedEncodingException=var3672, $r3=var3986, java.lang.InternalError=var2882, $r4=var3364, "UTF-8 not supported"=var504}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\+", "%2B");	$r3 := @caughtexception;	$r4 = new java.lang.InternalError;	specialinvoke $r4.<java.lang.InternalError: void <init>(java.lang.String)>("UTF-8 not supported");	throw $r4
;block_num 2