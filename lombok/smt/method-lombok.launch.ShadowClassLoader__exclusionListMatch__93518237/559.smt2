(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2062 0)
(declare-sort var843 0)
(declare-sort var490 0)
(declare-sort var3351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var2062) var490)
(declare-fun var490_iterator/-912451715 (var490) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3351)
(declare-fun cast-from-var3351-to-String (var3351) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2062 var2062)
(declare-const null-String String)
(declare-const var284 var2062) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var284 null-var2062)))
(declare-const var2837 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2837 null-String)))
(define-const var1152 var490 (parentExclusion/1139179338 var284)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var3131 Iterator (var490_iterator/-912451715 var1152)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var366 Bool (Iterator_hasNext/-1669924200 var3131)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var366 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1821 var3351 (Iterator_next/-1124697587 var3131)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3131!1 Iterator)
(define-const var2154 String (cast-from-var3351-to-String var1821)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var811 Bool (startsWith/-1785782452 var2837 var2154)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var811 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var490_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3351-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2062=lombok.launch.ShadowClassLoader, var284=r0, var2837=r5, var843=null_type, var490=java.util.List, var1152=$r1, var3131=r2, var366=$z0, var3351=java.lang.Object, var1821=$r3, var2154=r4, var811=$z1}
; {lombok.launch.ShadowClassLoader=var2062, r0=var284, r5=var2837, null_type=var843, java.util.List=var490, $r1=var1152, r2=var3131, $z0=var366, java.lang.Object=var3351, $r3=var1821, r4=var2154, $z1=var811}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	return 1
;block_num 4