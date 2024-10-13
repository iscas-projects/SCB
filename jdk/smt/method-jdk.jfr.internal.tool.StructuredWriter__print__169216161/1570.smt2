(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1011 0)
(declare-sort var109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-917033666 (var1011) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun column/-917033666 (var1011) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1011 var1011)
(declare-const null-String String)
(declare-const var3627 var1011) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var3627 null-var1011)))
(declare-const var1798 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1798 null-String)))
(define-const var588 String (builder/-917033666 var3627)) ; Statement: $r2 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> 
(assert true)
;(assert (append/672562846 var588 var1798)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var588!1 String)
(assert (= var588!1 (str.++ var588 var1798)))
(define-const var1850 Int (column/-917033666 var3627)) ; Statement: $i0 = r0.<jdk.jfr.internal.tool.StructuredWriter: int column> 
(assert true)
(define-const var1224 Int (length/-134980193 var1798)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2575 Int (+ var1850 var1224)) ; Statement: $i2 = $i0 + $i1 
(declare-const var3627!1 var1011)
(assert (not (= var3627!1 null-var1011)))
(assert (= (column/-917033666 var3627!1) var2575)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), column/-917033666=([jdk.jfr.internal.tool.StructuredWriter], int), length/-134980193=([java.lang.String], int)}
; {var1011=jdk.jfr.internal.tool.StructuredWriter, var3627=r0, var1798=r1, var109=null_type, var588=$r2, var1850=$i0, var1224=$i1, var2575=$i2}
; {jdk.jfr.internal.tool.StructuredWriter=var1011, r0=var3627, r1=var1798, null_type=var109, $r2=var588, $i0=var1850, $i1=var1224, $i2=var2575}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	r1 := @parameter0: java.lang.String;	$r2 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$i0 = r0.<jdk.jfr.internal.tool.StructuredWriter: int column>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = $i2;	return
;block_num 1