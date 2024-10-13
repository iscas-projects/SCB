(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2744 0)
(declare-sort var1690 0)
(declare-sort var1022 0)
(declare-sort var727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var2744) var1022)
(declare-fun var1022_iterator/-912451715 (var1022) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var727)
(declare-fun cast-from-var727-to-String (var727) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2744 var2744)
(declare-const null-String String)
(declare-const var3967 var2744) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3967 null-var2744)))
(declare-const var3422 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3422 null-String)))
(define-const var2325 var1022 (parentExclusion/1139179338 var3967)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var2968 Iterator (var1022_iterator/-912451715 var2325)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2715 Bool (Iterator_hasNext/-1669924200 var2968)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2715 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2864 var727 (Iterator_next/-1124697587 var2968)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2968!1 Iterator)
(define-const var3794 String (cast-from-var727-to-String var2864)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3717 Bool (startsWith/-1785782452 var3422 var3794)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3717 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2715!1 Bool (Iterator_hasNext/-1669924200 var2968!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var2715!1 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1022_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var727-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2744=lombok.launch.ShadowClassLoader, var3967=r0, var3422=r5, var1690=null_type, var1022=java.util.List, var2325=$r1, var2968=r2, var2715=$z0, var727=java.lang.Object, var2864=$r3, var3794=r4, var3717=$z1}
; {lombok.launch.ShadowClassLoader=var2744, r0=var3967, r5=var3422, null_type=var1690, java.util.List=var1022, $r1=var2325, r2=var2968, $z0=var2715, java.lang.Object=var727, $r3=var2864, r4=var3794, $z1=var3717}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	return 0
;block_num 5