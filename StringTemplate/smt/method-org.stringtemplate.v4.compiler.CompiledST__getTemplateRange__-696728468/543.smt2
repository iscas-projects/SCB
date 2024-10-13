(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1242 0)
(declare-sort var1973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAnonSubtemplate/1377009226 (var1242) Bool)
(declare-fun var1973-init () var1973)
(declare-fun template/1377009226 (var1242) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/131496419 (var1973 Int Int) void)
(declare-const null-var1242 var1242)
(declare-const var2287 var1242) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var2287 null-var1242)))
(define-const var2527 Bool (isAnonSubtemplate/1377009226 var2287)) ; Statement: $z0 = r0.<org.stringtemplate.v4.compiler.CompiledST: boolean isAnonSubtemplate> 
 ; Statement: if $z0 == 0 goto $r1 = new org.stringtemplate.v4.misc.Interval 
(assert (= (ite var2527 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3956 var1973 var1973-init) ; Statement: $r1 = new org.stringtemplate.v4.misc.Interval 
(define-const var1654 String (template/1377009226 var2287)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> 
(assert true)
(define-const var1829 Int (length/-134980193 var1654)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var717 Int (- var1829 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
;(assert (<init>/131496419 var3956 0 var717)) ; Statement: specialinvoke $r1.<org.stringtemplate.v4.misc.Interval: void <init>(int,int)>(0, $i1) 

(declare-const var3956!1 var1973)
(declare-const var930 Int)
(declare-const var717!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isAnonSubtemplate/1377009226=([org.stringtemplate.v4.compiler.CompiledST], boolean), var1973-init=([], org.stringtemplate.v4.misc.Interval), template/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), length/-134980193=([java.lang.String], int), <init>/131496419=([org.stringtemplate.v4.misc.Interval, int, int], void)}
; {var1242=org.stringtemplate.v4.compiler.CompiledST, var2287=r0, var2527=$z0, var1973=org.stringtemplate.v4.misc.Interval, var3956=$r1, var1654=$r2, var1829=$i0, var717=$i1, var930=0}
; {org.stringtemplate.v4.compiler.CompiledST=var1242, r0=var2287, $z0=var2527, org.stringtemplate.v4.misc.Interval=var1973, $r1=var3956, $r2=var1654, $i0=var1829, $i1=var717, 0=var930}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CompiledST;	$z0 = r0.<org.stringtemplate.v4.compiler.CompiledST: boolean isAnonSubtemplate>;	if $z0 == 0 goto $r1 = new org.stringtemplate.v4.misc.Interval;	$r1 = new org.stringtemplate.v4.misc.Interval;	$r2 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 - 1;	specialinvoke $r1.<org.stringtemplate.v4.misc.Interval: void <init>(int,int)>(0, $i1);	return $r1
;block_num 2