(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1848 0)
(declare-sort var699 0)
(declare-sort var2970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun objectWrapper/-2041385216 (var1848) var699)
(declare-fun cast-from-var699-to-var2970 (var699) var2970)
(declare-fun setStrict/156266254 (var2970 Bool) void)
(declare-const null-var1848 var1848)
(declare-const null-Bool Bool)
(declare-const var988 var1848) ; Statement: r0 := @this: freemarker.core.Configurable 
(assert (not (= var988 null-var1848)))
(declare-const var3789 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3789 null-Bool)))
(define-const var1843 var699 (objectWrapper/-2041385216 var988)) ; Statement: $r1 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> 
(define-const var1682 Bool true) ; Statement: $z0 = $r1 instanceof freemarker.ext.beans.BeansWrapper 
 ; Statement: if $z0 != 0 goto $r2 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> 
(assert (not (= (ite var1682 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3167 var699 (objectWrapper/-2041385216 var988)) ; Statement: $r2 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper> 
(define-const var742 var2970 (cast-from-var699-to-var2970 var3167)) ; Statement: $r3 = (freemarker.ext.beans.BeansWrapper) $r2 
(assert true)
;(assert (setStrict/156266254 var742 var3789)) ; Statement: virtualinvoke $r3.<freemarker.ext.beans.BeansWrapper: void setStrict(boolean)>(z1) 

(declare-const var742!1 var2970)
(declare-const var3789!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {objectWrapper/-2041385216=([freemarker.core.Configurable], freemarker.template.ObjectWrapper), cast-from-var699-to-var2970=([freemarker.template.ObjectWrapper], freemarker.ext.beans.BeansWrapper), setStrict/156266254=([freemarker.ext.beans.BeansWrapper, boolean], void)}
; {var1848=freemarker.core.Configurable, var988=r0, var3789=z1, var699=freemarker.template.ObjectWrapper, var1843=$r1, var1682=$z0, var3167=$r2, var2970=freemarker.ext.beans.BeansWrapper, var742=$r3}
; {freemarker.core.Configurable=var1848, r0=var988, z1=var3789, freemarker.template.ObjectWrapper=var699, $r1=var1843, $z0=var1682, $r2=var3167, freemarker.ext.beans.BeansWrapper=var2970, $r3=var742}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.Configurable;	z1 := @parameter0: boolean;	$r1 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper>;	$z0 = $r1 instanceof freemarker.ext.beans.BeansWrapper;	if $z0 != 0 goto $r2 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper>;	$r2 = r0.<freemarker.core.Configurable: freemarker.template.ObjectWrapper objectWrapper>;	$r3 = (freemarker.ext.beans.BeansWrapper) $r2;	virtualinvoke $r3.<freemarker.ext.beans.BeansWrapper: void setStrict(boolean)>(z1);	return
;block_num 2