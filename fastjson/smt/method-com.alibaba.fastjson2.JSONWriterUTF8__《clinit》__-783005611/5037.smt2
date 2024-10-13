(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort var503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var1436) (Array Int Int))
(declare-fun arr-Int-init () (Array Int Int))
(declare-const var503-ISO_8859_1 var1436)
(define-const var3514 String "{\u0022$ref\u0022:") ; Statement: $r1 = "{\"$ref\":" 
(define-const var2075 var1436 var503-ISO_8859_1) ; Statement: $r0 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var2255 (Array Int Int) (getBytes/-163691139 var3514 var2075)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r0) 
(define-const var3735 (Array Int Int) var2255) ; Statement: <com.alibaba.fastjson2.JSONWriterUTF8: byte[] REF_PREF> = $r2 
(define-const var3176 (Array Int Int) arr-Int-init) ; Statement: r3 = newarray (short)[256] 
(define-const var1971 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
 ; Statement: if i10 >= 16 goto <com.alibaba.fastjson2.JSONWriterUTF8: short[] HEX256> = r3 
(assert (>= var1971 16)) ; Cond: i10 >= 16 
(define-const var1510 (Array Int Int) var3176) ; Statement: <com.alibaba.fastjson2.JSONWriterUTF8: short[] HEX256> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), arr-Int-init=([], short[])}
; {var3514=$r1, var1436=java.nio.charset.Charset, var503=java.nio.charset.StandardCharsets, var2075=$r0, var2255=$r2, var3735=<com.alibaba.fastjson2.JSONWriterUTF8: byte[] REF_PREF>, var3176=r3, var1971=i10, var1510=<com.alibaba.fastjson2.JSONWriterUTF8: short[] HEX256>}
; {$r1=var3514, java.nio.charset.Charset=var1436, java.nio.charset.StandardCharsets=var503, $r0=var2075, $r2=var2255, <com.alibaba.fastjson2.JSONWriterUTF8: byte[] REF_PREF>=var3735, r3=var3176, i10=var1971, <com.alibaba.fastjson2.JSONWriterUTF8: short[] HEX256>=var1510}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts $r1 = "{\"$ref\":";	$r0 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r0);	<com.alibaba.fastjson2.JSONWriterUTF8: byte[] REF_PREF> = $r2;	r3 = newarray (short)[256];	i10 = 0;	if i10 >= 16 goto <com.alibaba.fastjson2.JSONWriterUTF8: short[] HEX256> = r3;	<com.alibaba.fastjson2.JSONWriterUTF8: short[] HEX256> = r3;	return
;block_num 3