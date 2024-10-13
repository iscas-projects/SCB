(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1188 0)
(declare-sort var2367 0)
(declare-sort var1370 0)
(declare-sort var1103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var2367_decode/-73598010 (String String) String)
(declare-fun var1103-init () var1103)
(declare-fun <init>/1247810213 (var1103 String) void)
(declare-const null-String String)
(declare-const null-var1370 var1370)
(declare-const var26 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var26 null-String)))
(assert true)
(define-const var71 String (replaceAll/1692887130 var26 "\u005c+" "%2B")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\+", "%2B") 
(assert (= (replaceAll/1692887130 var26 "\u005c+" "%2B") (str.replace_re_all var26 (str.to_re "+") "%2B")))
(assert true) ; Non Conditional
(define-const var2171 String (var2367_decode/-73598010 var71 "UTF-8")) ; Statement: $r2 = staticinvoke <java.net.URLDecoder: java.lang.String decode(java.lang.String,java.lang.String)>(r1, "UTF-8") 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3797 var1370) ; Statement: $r3 := @caughtexception 
(assert (not (= var3797 null-var1370)))
(define-const var3613 var1103 var1103-init) ; Statement: $r4 = new java.lang.InternalError 
(assert true)
;(assert (<init>/1247810213 var3613 "UTF-8 not supported")) ; Statement: specialinvoke $r4.<java.lang.InternalError: void <init>(java.lang.String)>("UTF-8 not supported") 

(declare-const var3613!1 var1103)
(declare-const var2437 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var2367_decode/-73598010=([java.lang.String, java.lang.String], java.lang.String), var1103-init=([], java.lang.InternalError), <init>/1247810213=([java.lang.InternalError, java.lang.String], void)}
; {var26=r0, var1188=null_type, var71=r1, var2367=java.net.URLDecoder, var2171=$r2, var1370=java.io.UnsupportedEncodingException, var3797=$r3, var1103=java.lang.InternalError, var3613=$r4, var2437="UTF-8 not supported"}
; {r0=var26, null_type=var1188, r1=var71, java.net.URLDecoder=var2367, $r2=var2171, java.io.UnsupportedEncodingException=var1370, $r3=var3797, java.lang.InternalError=var1103, $r4=var3613, "UTF-8 not supported"=var2437}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\+", "%2B");	$r2 = staticinvoke <java.net.URLDecoder: java.lang.String decode(java.lang.String,java.lang.String)>(r1, "UTF-8");	$r3 := @caughtexception;	$r4 = new java.lang.InternalError;	specialinvoke $r4.<java.lang.InternalError: void <init>(java.lang.String)>("UTF-8 not supported");	throw $r4
;block_num 3