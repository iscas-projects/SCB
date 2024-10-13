(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2168 0)
(declare-sort var2923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTemplateRange/-696728468 (var2168) var2923)
(declare-fun template/1377009226 (var2168) String)
(declare-fun a/-388494032 (var2923) Int)
(declare-fun b/-388494032 (var2923) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2168 var2168)
(declare-const var2966 var2168) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var2966 null-var2168)))
(assert true)
(define-const var1895 var2923 (getTemplateRange/-696728468 var2966)) ; Statement: r1 = virtualinvoke r0.<org.stringtemplate.v4.compiler.CompiledST: org.stringtemplate.v4.misc.Interval getTemplateRange()>() 
(define-const var2793 String (template/1377009226 var2966)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template> 
(define-const var264 Int (a/-388494032 var1895)) ; Statement: $i2 = r1.<org.stringtemplate.v4.misc.Interval: int a> 
(define-const var1759 Int (b/-388494032 var1895)) ; Statement: $i0 = r1.<org.stringtemplate.v4.misc.Interval: int b> 
(define-const var1611 Int (+ var1759 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var264 0) (>= (str.len var2793) var1611) (>= var1611 var264))))
(define-const var1587 String (substring/-1240304868 var2793 var264 var1611)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTemplateRange/-696728468=([org.stringtemplate.v4.compiler.CompiledST], org.stringtemplate.v4.misc.Interval), template/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), a/-388494032=([org.stringtemplate.v4.misc.Interval], int), b/-388494032=([org.stringtemplate.v4.misc.Interval], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2168=org.stringtemplate.v4.compiler.CompiledST, var2966=r0, var2923=org.stringtemplate.v4.misc.Interval, var1895=r1, var2793=$r2, var264=$i2, var1759=$i0, var1611=$i1, var1587=$r3}
; {org.stringtemplate.v4.compiler.CompiledST=var2168, r0=var2966, org.stringtemplate.v4.misc.Interval=var2923, r1=var1895, $r2=var2793, $i2=var264, $i0=var1759, $i1=var1611, $r3=var1587}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CompiledST;	r1 = virtualinvoke r0.<org.stringtemplate.v4.compiler.CompiledST: org.stringtemplate.v4.misc.Interval getTemplateRange()>();	$r2 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String template>;	$i2 = r1.<org.stringtemplate.v4.misc.Interval: int a>;	$i0 = r1.<org.stringtemplate.v4.misc.Interval: int b>;	$i1 = $i0 + 1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1);	return $r3
;block_num 1