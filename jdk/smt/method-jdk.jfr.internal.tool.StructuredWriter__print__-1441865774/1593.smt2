(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-917033666 (var2658) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun column/-917033666 (var2658) Int)
(declare-const null-var2658 var2658)
(declare-const null-Int Int)
(declare-const var2781 var2658) ; Statement: r0 := @this: jdk.jfr.internal.tool.StructuredWriter 
(assert (not (= var2781 null-var2658)))
(declare-const var3980 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3980 null-Int)))
(define-const var2177 String (builder/-917033666 var2781)) ; Statement: $r1 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder> 
(assert true)
;(assert (append/-1166366385 var2177 var3980)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2177!1 String)
(assert (str.prefixof var2177 var2177!1))
(define-const var3036 Int (column/-917033666 var2781)) ; Statement: $i1 = r0.<jdk.jfr.internal.tool.StructuredWriter: int column> 
(define-const var3310 Int (+ var3036 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2781!1 var2658)
(assert (not (= var2781!1 null-var2658)))
(assert (= (column/-917033666 var2781!1) var3310)) ; Statement: r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-917033666=([jdk.jfr.internal.tool.StructuredWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), column/-917033666=([jdk.jfr.internal.tool.StructuredWriter], int)}
; {var2658=jdk.jfr.internal.tool.StructuredWriter, var2781=r0, var3980=c0, var2177=$r1, var3036=$i1, var3310=$i2}
; {jdk.jfr.internal.tool.StructuredWriter=var2658, r0=var2781, c0=var3980, $r1=var2177, $i1=var3036, $i2=var3310}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.StructuredWriter;	c0 := @parameter0: char;	$r1 = r0.<jdk.jfr.internal.tool.StructuredWriter: java.lang.StringBuilder builder>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$i1 = r0.<jdk.jfr.internal.tool.StructuredWriter: int column>;	$i2 = $i1 + 1;	r0.<jdk.jfr.internal.tool.StructuredWriter: int column> = $i2;	return
;block_num 1