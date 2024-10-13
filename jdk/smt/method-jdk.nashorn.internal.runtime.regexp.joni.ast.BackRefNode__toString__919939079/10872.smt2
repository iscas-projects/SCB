(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3182 0)
(declare-sort var599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-544818494 (var599 Int) String)
(declare-fun cast-from-var3182-to-var599 (var3182) var599)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun backRef/633683290 (var3182) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3182 var3182)
(declare-const null-Int Int)
(declare-const var3931 var3182) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode 
(assert (not (= var3931 null-var3182)))
(declare-const var3413 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3413 null-Int)))
(define-const var2762 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1780 String (toString/-544818494 (cast-from-var3182-to-var599 var3931) var3413)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String toString(int)>(i0) 
(assert true)
;(assert (<init>/-1061048412 var2762 var1780)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var2762!1 String)
(assert (= var2762!1 var1780))
(assert true)
(define-const var3110 String (append/672562846 var2762!1 "\n  back: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  back: ") 
(declare-const var2762!2 String)
(assert (= var2762!2 (str.++ var2762!1 "\n  back: ")))
(define-const var253 Int (backRef/633683290 var3931)) ; Statement: $i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode: int backRef> 
(assert true)
;(assert (append/-1001720160 var3110 var253)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3110!1 String)
(assert (str.prefixof var3110 var3110!1))
(assert true)
(define-const var652 String (toString/-2075883882 var2762!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-544818494=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode, int], java.lang.String), cast-from-var3182-to-var599=([jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode], jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), backRef/633683290=([jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3182=jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode, var3931=r1, var3413=i0, var2762=$r0, var599=jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode, var1780=$r2, var3110=$r3, var253=$i1, var652=$r4}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode=var3182, r1=var3931, i0=var3413, $r0=var2762, jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode=var599, $r2=var1780, $r3=var3110, $i1=var253, $r4=var652}
;seq <jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String toString(int)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String toString(int)>(i0);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  back: ");	$i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.BackRefNode: int backRef>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1