(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2161 0)
(declare-sort var1152 0)
(declare-sort var1683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1927968089 (var1152) void)
(declare-fun cast-from-var2161-to-var1152 (var2161) var1152)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastLineNumber/709861400 (var2161) Int)
(declare-fun var1683_lineSeparator/-342590142 () String)
(declare-fun EOLN/709861400 (var2161) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sb/709861400 (var2161) String)
(declare-fun printLineNumbers/709861400 (var2161) Bool)
(declare-fun printTypes/709861400 (var2161) Bool)
(declare-const null-var2161 var2161)
(declare-const null-Bool Bool)
(declare-const var2965 var2161) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var2965 null-var2161)))
(declare-const var2192 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2192 null-Bool)))
(declare-const var3976 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3976 null-Bool)))
(assert true)
;(assert (<init>/-1927968089 (cast-from-var2161-to-var1152 var2965))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: void <init>()>() 

(declare-const var2965!1 var2161)
(define-const var1788 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(declare-const var2965!2 var2161)
(assert (not (= var2965!2 null-var2161)))
(assert (= (lastLineNumber/709861400 var2965!2) var1788)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int lastLineNumber> = $i1 
(define-const var852 String var1683_lineSeparator/-342590142) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(declare-const var2965!3 var2161)
(assert (not (= var2965!3 null-var2161)))
(assert (= (EOLN/709861400 var2965!3) var852)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> = $r1 
(define-const var48 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var48)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var48!1 String)
(assert (= var48!1 ""))
(declare-const var2965!4 var2161)
(assert (not (= var2965!4 null-var2161)))
(assert (= (sb/709861400 var2965!4) var48!1)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> = $r3 
(declare-const var2965!5 var2161)
(assert (not (= var2965!5 null-var2161)))
(assert (= (printLineNumbers/709861400 var2965!5) var2192)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printLineNumbers> = z0 
(declare-const var2965!6 var2161)
(assert (not (= var2965!6 null-var2161)))
(assert (= (printTypes/709861400 var2965!6) var3976)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> = z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1927968089=([jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor], void), cast-from-var2161-to-var1152=([jdk.nashorn.internal.ir.debug.PrintVisitor], jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor), cast-from-Int-to-Int=([int], int), lastLineNumber/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], int), var1683_lineSeparator/-342590142=([], java.lang.String), EOLN/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), printLineNumbers/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean), printTypes/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean)}
; {var2161=jdk.nashorn.internal.ir.debug.PrintVisitor, var2965=r0, var2192=z0, var3976=z1, var1152=jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor, var1788=$i1, var1683=java.lang.System, var852=$r1, var48=$r3}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2161, r0=var2965, z0=var2192, z1=var3976, jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor=var1152, $i1=var1788, java.lang.System=var1683, $r1=var852, $r3=var48}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	specialinvoke r0.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: void <init>()>();	$i1 = (int) -1;	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int lastLineNumber> = $i1;	$r1 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> = $r1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> = $r3;	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printLineNumbers> = z0;	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> = z1;	return
;block_num 1