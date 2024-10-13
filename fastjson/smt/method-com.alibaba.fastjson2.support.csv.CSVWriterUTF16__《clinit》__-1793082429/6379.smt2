(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var2959 String "true") ; Statement: $r0 = "true" 
(assert true)
(define-const var903 (Array Int Int) (toCharArray/415275702 var2959)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var941 (Array Int Int) var903) ; Statement: <com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_TRUE> = $r1 
(define-const var3118 String "false") ; Statement: $r2 = "false" 
(assert true)
(define-const var2551 (Array Int Int) (toCharArray/415275702 var3118)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var2232 (Array Int Int) var2551) ; Statement: <com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_FALSE> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var2959=$r0, var903=$r1, var941=<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_TRUE>, var3118=$r2, var2551=$r3, var2232=<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_FALSE>}
; {$r0=var2959, $r1=var903, <com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_TRUE>=var941, $r2=var3118, $r3=var2551, <com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_FALSE>=var2232}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts $r0 = "true";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_TRUE> = $r1;	$r2 = "false";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] BYTES_FALSE> = $r3;	return
;block_num 1