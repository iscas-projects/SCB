(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var901 0)
(declare-sort var1548 0)
(declare-sort var1332 0)
(declare-sort var1636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1548-init () var1548)
(declare-fun var1636_toCharset/714237080 (String) var1332)
(declare-fun getBytes/-163691139 (String var1332) (Array Int Int))
(declare-fun <init>/1208500544 (var1548 (Array Int Int)) void)
(declare-const null-String String)
(declare-const var170 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var170 null-String)))
(declare-const var392 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var392 null-String)))
(define-const var2888 var1548 var1548-init) ; Statement: $r0 = new java.io.ByteArrayInputStream 
(define-const var691 var1332 (var1636_toCharset/714237080 var392)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2) 
(assert true)
(define-const var1125 (Array Int Int) (getBytes/-163691139 var170 var691)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(assert true)
;(assert (<init>/1208500544 var2888 var1125)) ; Statement: specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4) 

(declare-const var2888!1 var1548)
(declare-const var1125!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1548-init=([], java.io.ByteArrayInputStream), var1636_toCharset/714237080=([java.lang.String], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void)}
; {var170=r1, var901=null_type, var392=r2, var1548=java.io.ByteArrayInputStream, var2888=$r0, var1332=java.nio.charset.Charset, var1636=org.apache.commons.io.Charsets, var691=$r3, var1125=$r4}
; {r1=var170, null_type=var901, r2=var392, java.io.ByteArrayInputStream=var1548, $r0=var2888, java.nio.charset.Charset=var1332, org.apache.commons.io.Charsets=var1636, $r3=var691, $r4=var1125}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new java.io.ByteArrayInputStream;	$r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2);	$r4 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4);	return $r0
;block_num 1