(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-917033666 (var3424) String)
(declare-fun indentionArray/-917033666 (var3424) (Array Int Int))
(declare-fun indent/-917033666 (var3424) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-fun column/-917033666 (var3424) Int)
(declare-const null-var3424 var3424)
(declare-const var1535 var3424) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var1535 null-var3424)))
(define-const var1273 String (builder/-917033666 var1535)) ; Statement: $r2 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> 
(define-const var3014 (Array Int Int) (indentionArray/-917033666 var1535)) ; Statement: $r1 = r0.<jdk.jfr.internal.tool.StructuredWriter: char[] indentionArray> 
(define-const var2107 Int (indent/-917033666 var1535)) ; Statement: $i0 = r0.<jdk.jfr.internal.tool.StructuredWriter: int indent> 
(assert true)
;(assert (append/-1748486345 var1273 var3014 0 var2107)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r1, 0, $i0) 
(declare-const var1273!1 String)
(assert (str.prefixof var1273 var1273!1))
(define-const var2439 Int (column/-917033666 var1535)) ; Statement: $i2 = r0.<jdk.jfr.internal.tool.StructuredWriter: int column> 
(define-const var1601 Int (indent/-917033666 var1535)) ; Statement: $i1 = r0.<jdk.jfr.internal.tool.StructuredWriter: int indent> 
(define-const var2737 Int (+ var2439 var1601)) ; Statement: $i3 = $i2 + $i1 
(declare-const var1535!1 var3424)
(assert (not (= var1535!1 null-var3424)))
(assert (= (column/-917033666 var1535!1) var2737)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.lang.StringBuilder), indentionArray/-917033666=([jdk.jfr.internal.tool.StructuredWriter], char[]), indent/-917033666=([jdk.jfr.internal.tool.StructuredWriter], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), column/-917033666=([jdk.jfr.internal.tool.StructuredWriter], int)}
; {var3424=jdk.jfr.internal.tool.StructuredWriter, var1535=r0, var1273=$r2, var3014=$r1, var2107=$i0, var2439=$i2, var1601=$i1, var2737=$i3}
; {jdk.jfr.internal.tool.StructuredWriter=var3424, r0=var1535, $r2=var1273, $r1=var3014, $i0=var2107, $i2=var2439, $i1=var1601, $i3=var2737}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	$r2 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder>;	$r1 = r0.<jdk.jfr.internal.tool.StructuredWriter: char[] indentionArray>;	$i0 = r0.<jdk.jfr.internal.tool.StructuredWriter: int indent>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r1, 0, $i0);	$i2 = r0.<jdk.jfr.internal.tool.StructuredWriter: int column>;	$i1 = r0.<jdk.jfr.internal.tool.StructuredWriter: int indent>;	$i3 = $i2 + $i1;	r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = $i3;	return
;block_num 1