(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2377 0)
(declare-sort var843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/709861400 (var2377) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun EOLN/709861400 (var2377) String)
(declare-fun indent/709861400 (var2377) Int)
(declare-fun indent/-656645729 (var2377) void)
(declare-const null-var2377 var2377)
(declare-const null-var843 var843)
(declare-const var3430 var2377) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var3430 null-var2377)))
(declare-const var2912 var843) ; Statement: r4 := @parameter0: jdk.nashorn.internal.ir.SplitNode 
(assert (not (= var2912 null-var843)))
(define-const var1873 String (sb/709861400 var3430)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var1873 "</split>")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</split>") 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 "</split>")))
(define-const var3319 String (sb/709861400 var3430)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var648 String (EOLN/709861400 var3430)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> 
(assert true)
;(assert (append/672562846 var3319 var648)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3319!1 String)
(assert (= var3319!1 (str.++ var3319 var648)))
(define-const var2818 Int (indent/709861400 var3430)) ; Statement: $i0 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> 
(define-const var363 Int (- var2818 4)) ; Statement: $i1 = $i0 - 4 
(declare-const var3430!1 var2377)
(assert (not (= var3430!1 null-var2377)))
(assert (= (indent/709861400 var3430!1) var363)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i1 
(assert true)
;(assert (indent/-656645729 var3430!1)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>() 

(declare-const var3430!2 var2377)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), EOLN/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.String), indent/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], int), indent/-656645729=([jdk.nashorn.internal.ir.debug.PrintVisitor], void)}
; {var2377=jdk.nashorn.internal.ir.debug.PrintVisitor, var3430=r0, var843=jdk.nashorn.internal.ir.SplitNode, var2912=r4, var1873=$r1, var3319=$r3, var648=$r2, var2818=$i0, var363=$i1}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2377, r0=var3430, jdk.nashorn.internal.ir.SplitNode=var843, r4=var2912, $r1=var1873, $r3=var3319, $r2=var648, $i0=var2818, $i1=var363}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r4 := @parameter0: jdk.nashorn.internal.ir.SplitNode;	$r1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</split>");	$r3 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i0 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent>;	$i1 = $i0 - 4;	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i1;	specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>();	return r4
;block_num 1