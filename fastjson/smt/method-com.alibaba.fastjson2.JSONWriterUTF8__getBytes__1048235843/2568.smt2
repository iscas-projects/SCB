(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var3115 0)
(declare-sort var688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1191497341 (var307) String)
(declare-fun getBytes/-163691139 (String var3115) (Array Int Int))
(declare-const null-var307 var307)
(declare-const null-var3115 var3115)
(declare-const var688-UTF_8 var3115)
(declare-const var2959 var307) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var2959 null-var307)))
(declare-const var1192 var3115) ; Statement: r0 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1192 null-var3115)))
(define-const var2868 var3115 var688-UTF_8) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
 ; Statement: if r0 != $r1 goto r3 = virtualinvoke r2.<com.alibaba.fastjson2.JSONWriterUTF8: java.lang.String toString()>() 
(assert (not (= var1192 var2868))) ; Cond: r0 != $r1 
(assert true)
(define-const var328 String (toString/-1191497341 var2959)) ; Statement: r3 = virtualinvoke r2.<com.alibaba.fastjson2.JSONWriterUTF8: java.lang.String toString()>() 
(assert true)
(define-const var3851 (Array Int Int) (getBytes/-163691139 var328 var1192)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1191497341=([com.alibaba.fastjson2.JSONWriterUTF8], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var307=com.alibaba.fastjson2.JSONWriterUTF8, var2959=r2, var3115=java.nio.charset.Charset, var1192=r0, var688=java.nio.charset.StandardCharsets, var2868=$r1, var328=r3, var3851=$r4}
; {com.alibaba.fastjson2.JSONWriterUTF8=var307, r2=var2959, java.nio.charset.Charset=var3115, r0=var1192, java.nio.charset.StandardCharsets=var688, $r1=var2868, r3=var328, $r4=var3851}
;seq <com.alibaba.fastjson2.JSONWriterUTF8: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	r0 := @parameter0: java.nio.charset.Charset;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	if r0 != $r1 goto r3 = virtualinvoke r2.<com.alibaba.fastjson2.JSONWriterUTF8: java.lang.String toString()>();	r3 = virtualinvoke r2.<com.alibaba.fastjson2.JSONWriterUTF8: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r0);	return $r4
;block_num 2