(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var713 0)
(declare-sort var3914 0)
(declare-sort var2422 0)
(declare-sort var2908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2422-init () var2422)
(declare-fun var2908_toCharset/1927181655 (var3914) var3914)
(declare-fun getBytes/-163691139 (String var3914) (Array Int Int))
(declare-fun <init>/1208500544 (var2422 (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-var3914 var3914)
(declare-const var2831 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2831 null-String)))
(declare-const var1859 var3914) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var1859 null-var3914)))
(define-const var1103 var2422 var2422-init) ; Statement: $r0 = new java.io.ByteArrayInputStream 
(define-const var2362 var3914 (var2908_toCharset/1927181655 var1859)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2) 
(assert true)
(define-const var1055 (Array Int Int) (getBytes/-163691139 var2831 var2362)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(assert true)
;(assert (<init>/1208500544 var1103 var1055)) ; Statement: specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4) 

(declare-const var1103!1 var2422)
(declare-const var1055!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2422-init=([], java.io.ByteArrayInputStream), var2908_toCharset/1927181655=([java.nio.charset.Charset], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void)}
; {var2831=r1, var713=null_type, var3914=java.nio.charset.Charset, var1859=r2, var2422=java.io.ByteArrayInputStream, var1103=$r0, var2908=org.apache.commons.io.Charsets, var2362=$r3, var1055=$r4}
; {r1=var2831, null_type=var713, java.nio.charset.Charset=var3914, r2=var1859, java.io.ByteArrayInputStream=var2422, $r0=var1103, org.apache.commons.io.Charsets=var2908, $r3=var2362, $r4=var1055}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.nio.charset.Charset;	$r0 = new java.io.ByteArrayInputStream;	$r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2);	$r4 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4);	return $r0
;block_num 1