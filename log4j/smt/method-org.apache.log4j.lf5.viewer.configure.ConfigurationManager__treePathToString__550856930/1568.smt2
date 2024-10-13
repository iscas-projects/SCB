(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1919 0)
(declare-sort var1715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getPath/-2046723048 (var1919) (Array Int var1715))
(declare-fun getLength-Arr-var1715-1 ((Array Int var1715)) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1919 var1919)
(declare-const var3344 var1919) ; Statement: r1 := @parameter0: javax.swing.tree.TreePath 
(assert (not (= var3344 null-var1919)))
(define-const var2740 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2740)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2740!1 String)
(assert true)
(define-const var366 (Array Int var1715) (getPath/-2046723048 var3344)) ; Statement: r2 = virtualinvoke r1.<javax.swing.tree.TreePath: java.lang.Object[] getPath()>() 
(define-const var1063 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
(define-const var2003 Int (getLength-Arr-var1715-1 var366)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var1063 var2003)) ; Cond: i1 >= $i0 
(assert true)
(define-const var962 String (toString/-222306083 var2740!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getPath/-2046723048=([javax.swing.tree.TreePath], java.lang.Object[]), getLength-Arr-var1715-1=([java.lang.Object[]], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1919=javax.swing.tree.TreePath, var3344=r1, var2740=$r0, var1715=java.lang.Object, var366=r2, var1063=i1, var2003=$i0, var962=$r3}
; {javax.swing.tree.TreePath=var1919, r1=var3344, $r0=var2740, java.lang.Object=var1715, r2=var366, i1=var1063, $i0=var2003, $r3=var962}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: javax.swing.tree.TreePath;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	r2 = virtualinvoke r1.<javax.swing.tree.TreePath: java.lang.Object[] getPath()>();	i1 = 1;	$i0 = lengthof r2;	if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 3