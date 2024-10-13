(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2508 0)
(declare-sort var3841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2508 var2508)
(declare-const null-String String)
(declare-const var1101 var2508) ; Statement: r1 := @this: jdk.jfr.internal.tool.XMLWriter 
(assert (not (= var1101 null-var2508)))
(declare-const var1306 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1306 null-String)))
(define-const var1035 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var195 Int (length/-134980193 var1306)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return 
(assert (>= var1035 var195)) ; Cond: i2 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2508=jdk.jfr.internal.tool.XMLWriter, var1101=r1, var1306=r0, var3841=null_type, var1035=i2, var195=$i0}
; {jdk.jfr.internal.tool.XMLWriter=var2508, r1=var1101, r0=var1306, null_type=var3841, i2=var1035, $i0=var195}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.jfr.internal.tool.XMLWriter;	r0 := @parameter0: java.lang.String;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto return;	return
;block_num 3