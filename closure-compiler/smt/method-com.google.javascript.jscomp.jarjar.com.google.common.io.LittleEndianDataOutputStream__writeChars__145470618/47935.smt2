(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1916 0)
(declare-sort var567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1916 var1916)
(declare-const null-String String)
(declare-const var2954 var1916) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LittleEndianDataOutputStream 
(assert (not (= var2954 null-var1916)))
(declare-const var2328 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2328 null-String)))
(define-const var411 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var223 Int (length/-134980193 var2328)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return 
(assert (>= var411 var223)) ; Cond: i2 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1916=com.google.javascript.jscomp.jarjar.com.google.common.io.LittleEndianDataOutputStream, var2954=r1, var2328=r0, var567=null_type, var411=i2, var223=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LittleEndianDataOutputStream=var1916, r1=var2954, r0=var2328, null_type=var567, i2=var411, $i0=var223}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LittleEndianDataOutputStream;	r0 := @parameter0: java.lang.String;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto return;	return
;block_num 3