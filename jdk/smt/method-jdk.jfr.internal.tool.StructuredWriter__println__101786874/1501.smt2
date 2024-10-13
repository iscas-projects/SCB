(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-917033666 (var730) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun column/-917033666 (var730) Int)
(declare-const null-var730 var730)
(declare-const var730-LINE_SEPARATOR String)
(declare-const var3822 var730) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var3822 null-var730)))
(define-const var2195 String (builder/-917033666 var3822)) ; Statement: $r2 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> 
(define-const var2039 String var730-LINE_SEPARATOR) ; Statement: $r1 = <jdk.jfr.internal.tool.StructuredWriter: java.lang.String LINE_SEPARATOR> 
(assert true)
;(assert (append/672562846 var2195 var2039)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2195!1 String)
(assert (= var2195!1 (str.++ var2195 var2039)))
(declare-const var3822!1 var730)
(assert (not (= var3822!1 null-var730)))
(assert (= (column/-917033666 var3822!1) 0)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), column/-917033666=([jdk.jfr.internal.tool.StructuredWriter], int)}
; {var730=jdk.jfr.internal.tool.StructuredWriter, var3822=r0, var2195=$r2, var2039=$r1}
; {jdk.jfr.internal.tool.StructuredWriter=var730, r0=var3822, $r2=var2195, $r1=var2039}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	$r2 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder>;	$r1 = <jdk.jfr.internal.tool.StructuredWriter: java.lang.String LINE_SEPARATOR>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = 0;	return
;block_num 1