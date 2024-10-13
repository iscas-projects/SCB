(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var984 0)
(declare-sort var2656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/709861400 (var984) String)
(declare-fun printTypes/709861400 (var984) Bool)
(declare-fun toString/1248109805 (var2656 String Bool) void)
(declare-fun EOLN/709861400 (var984) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indent/709861400 (var984) Int)
(declare-fun indent/-656645729 (var984) void)
(declare-const null-var984 var984)
(declare-const null-var2656 var2656)
(declare-const var1812 var984) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var1812 null-var984)))
(declare-const var1181 var2656) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.SplitNode 
(assert (not (= var1181 null-var2656)))
(define-const var1717 String (sb/709861400 var1812)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var997 Bool (printTypes/709861400 var1812)) ; Statement: $z0 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> 
(assert true)
;(assert (toString/1248109805 var1181 var1717 var997)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.ir.SplitNode: void toString(java.lang.StringBuilder,boolean)>($r2, $z0) 

(declare-const var1181!1 var2656)
(declare-const var1717!1 String)
(declare-const var997!1 Bool)
(define-const var290 String (sb/709861400 var1812)) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var23 String (EOLN/709861400 var1812)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> 
(assert true)
;(assert (append/672562846 var290 var23)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var290!1 String)
(assert (= var290!1 (str.++ var290 var23)))
(define-const var2586 Int (indent/709861400 var1812)) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> 
(define-const var945 Int (+ var2586 4)) ; Statement: $i1 = $i0 + 4 
(declare-const var1812!1 var984)
(assert (not (= var1812!1 null-var984)))
(assert (= (indent/709861400 var1812!1) var945)) ; Statement: r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i1 
(assert true)
;(assert (indent/-656645729 var1812!1)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>() 

(declare-const var1812!2 var984)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), printTypes/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean), toString/1248109805=([jdk.nashorn.internal.ir.SplitNode, java.lang.StringBuilder, boolean], void), EOLN/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indent/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], int), indent/-656645729=([jdk.nashorn.internal.ir.debug.PrintVisitor], void)}
; {var984=jdk.nashorn.internal.ir.debug.PrintVisitor, var1812=r1, var2656=jdk.nashorn.internal.ir.SplitNode, var1181=r0, var1717=$r2, var997=$z0, var290=$r4, var23=$r3, var2586=$i0, var945=$i1}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var984, r1=var1812, jdk.nashorn.internal.ir.SplitNode=var2656, r0=var1181, $r2=var1717, $z0=var997, $r4=var290, $r3=var23, $i0=var2586, $i1=var945}
;seq <jdk.nashorn.internal.ir.SplitNode: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r0 := @parameter0: jdk.nashorn.internal.ir.SplitNode;	$r2 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$z0 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes>;	virtualinvoke r0.<jdk.nashorn.internal.ir.SplitNode: void toString(java.lang.StringBuilder,boolean)>($r2, $z0);	$r4 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r3 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$i0 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent>;	$i1 = $i0 + 4;	r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i1;	specialinvoke r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>();	return 1
;block_num 1