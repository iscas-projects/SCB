(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1568 0)
(declare-sort var3166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1568 var1568)
(declare-const null-String String)
(declare-const var2950 var1568) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding 
(assert (not (= var2950 null-var1568)))
(declare-const var324 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var324 null-String)))
(define-const var1520 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1431 Int (length/-134980193 var324)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return 1 
(assert (>= var1520 var1431)) ; Cond: i2 >= $i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1568=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding, var2950=r1, var324=r0, var3166=null_type, var1520=i2, var1431=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding=var1568, r1=var2950, r0=var324, null_type=var3166, i2=var1520, $i0=var1431}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.Simple8BitZipEncoding;	r0 := @parameter0: java.lang.String;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto return 1;	return 1
;block_num 3