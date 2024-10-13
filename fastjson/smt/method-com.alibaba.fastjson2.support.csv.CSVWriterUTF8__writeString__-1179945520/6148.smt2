(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var3992 0)
(declare-sort var318 0)
(declare-sort var706 0)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-2092162108 (var1471) var3408)
(declare-fun getBytes/-163691139 (String var3408) (Array Int Int))
(declare-fun writeString/465524757 (var1471 (Array Int Int)) void)
(declare-const null-var1471 var1471)
(declare-const null-String String)
(declare-const var706-STRING_CODER var318)
(declare-const null-var318 var318)
(declare-const var1468 var1471) ; Statement: r2 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8 
(assert (not (= var1468 null-var1471)))
(declare-const var3058 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3058 null-String)))
(define-const var3943 var318 var706-STRING_CODER) ; Statement: $r0 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.ToIntFunction STRING_CODER> 
 ; Statement: if $r0 == null goto $r9 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.nio.charset.Charset charset> 
(assert (= var3943 null-var318)) ; Cond: $r0 == null 
(define-const var2150 var3408 (charset/-2092162108 var1468)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.nio.charset.Charset charset> 
(assert true)
(define-const var2229 (Array Int Int) (getBytes/-163691139 var3058 var2150)) ; Statement: r8 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r9) 
(assert true) ; Non Conditional
(assert true)
;(assert (writeString/465524757 var1468 var2229)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: void writeString(byte[])>(r8) 

(declare-const var1468!1 var1471)
(declare-const var2229!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-2092162108=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), writeString/465524757=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8, byte[]], void)}
; {var1471=com.alibaba.fastjson2.support.csv.CSVWriterUTF8, var1468=r2, var3058=r1, var3992=null_type, var318=java.util.function.ToIntFunction, var706=com.alibaba.fastjson2.util.JDKUtils, var3943=$r0, var3408=java.nio.charset.Charset, var2150=$r9, var2229=r8}
; {com.alibaba.fastjson2.support.csv.CSVWriterUTF8=var1471, r2=var1468, r1=var3058, null_type=var3992, java.util.function.ToIntFunction=var318, com.alibaba.fastjson2.util.JDKUtils=var706, $r0=var3943, java.nio.charset.Charset=var3408, $r9=var2150, r8=var2229}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8;	r1 := @parameter0: java.lang.String;	$r0 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.ToIntFunction STRING_CODER>;	if $r0 == null goto $r9 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.nio.charset.Charset charset>;	$r9 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.nio.charset.Charset charset>;	r8 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r9);	virtualinvoke r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: void writeString(byte[])>(r8);	return
;block_num 3