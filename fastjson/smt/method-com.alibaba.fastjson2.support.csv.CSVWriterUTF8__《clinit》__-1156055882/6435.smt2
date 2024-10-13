(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(define-const var3466 String "true") ; Statement: $r0 = "true" 
(assert true)
(define-const var103 (Array Int Int) (getBytes/1068683673 var3466)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var2653 (Array Int Int) var103) ; Statement: <com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_TRUE> = $r1 
(define-const var895 String "false") ; Statement: $r2 = "false" 
(assert true)
(define-const var1332 (Array Int Int) (getBytes/1068683673 var895)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(define-const var68 (Array Int Int) var1332) ; Statement: <com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_FALSE> = $r3 
(define-const var1374 String "-9223372036854775808") ; Statement: $r4 = "-9223372036854775808" 
(assert true)
(define-const var343 (Array Int Int) (getBytes/1068683673 var1374)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(define-const var3938 (Array Int Int) var343) ; Statement: <com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_LONG_MIN> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[])}
; {var3466=$r0, var103=$r1, var2653=<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_TRUE>, var895=$r2, var1332=$r3, var68=<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_FALSE>, var1374=$r4, var343=$r5, var3938=<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_LONG_MIN>}
; {$r0=var3466, $r1=var103, <com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_TRUE>=var2653, $r2=var895, $r3=var1332, <com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_FALSE>=var68, $r4=var1374, $r5=var343, <com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_LONG_MIN>=var3938}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 3}
;stmts $r0 = "true";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_TRUE> = $r1;	$r2 = "false";	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_FALSE> = $r3;	$r4 = "-9223372036854775808";	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] BYTES_LONG_MIN> = $r5;	return
;block_num 1