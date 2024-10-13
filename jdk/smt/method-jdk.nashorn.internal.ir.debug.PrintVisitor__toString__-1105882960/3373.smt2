(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/709861400 (var2821) String)
(declare-fun EOLN/709861400 (var2821) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2821 var2821)
(declare-const var3358 var2821) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var3358 null-var2821)))
(define-const var3651 String (sb/709861400 var3358)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var2994 String (EOLN/709861400 var3358)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> 
(assert true)
(define-const var3893 String (append/672562846 var3651 var2994)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3651!1 String)
(assert (= var3651!1 (str.++ var3651 var2994)))
(assert true)
(define-const var2590 String (toString/-2075883882 var3893)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), EOLN/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2821=jdk.nashorn.internal.ir.debug.PrintVisitor, var3358=r0, var3651=$r2, var2994=$r1, var3893=$r3, var2590=$r4}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2821, r0=var3358, $r2=var3651, $r1=var2994, $r3=var3893, $r4=var2590}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	$r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1