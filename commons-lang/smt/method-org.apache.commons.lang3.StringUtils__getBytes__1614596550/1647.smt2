(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1677 0)
(declare-sort var1652 0)
(declare-sort var1462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1462_toCharset/318113526 (var1652) var1652)
(declare-fun getBytes/-163691139 (String var1652) (Array Int Int))
(declare-const null-String String)
(declare-const null-var1652 var1652)
(declare-const var2370 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2370 null-String)))
(declare-const var3343 var1652) ; Statement: r1 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3343 null-var1652)))
 ; Statement: if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r1) 
(assert (not (= var2370 null-String))) ; Cond: r0 != null 
(define-const var2831 var1652 (var1462_toCharset/318113526 var3343)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r1) 
(assert true)
(define-const var2704 (Array Int Int) (getBytes/-163691139 var2370 var2831)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1462_toCharset/318113526=([java.nio.charset.Charset], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var2370=r0, var1677=null_type, var1652=java.nio.charset.Charset, var3343=r1, var1462=org.apache.commons.lang3.Charsets, var2831=$r2, var2704=$r3}
; {r0=var2370, null_type=var1677, java.nio.charset.Charset=var1652, r1=var3343, org.apache.commons.lang3.Charsets=var1462, $r2=var2831, $r3=var2704}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.nio.charset.Charset;	if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r1);	$r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r1);	$r3 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	return $r3
;block_num 3