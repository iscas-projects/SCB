(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3938 0)
(declare-sort var1675 0)
(declare-sort var3364 0)
(declare-sort var3349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var3938) var3364)
(declare-fun var3364_iterator/-912451715 (var3364) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3349)
(declare-fun cast-from-var3349-to-String (var3349) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3938 var3938)
(declare-const null-String String)
(declare-const var2447 var3938) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2447 null-var3938)))
(declare-const var2533 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2533 null-String)))
(define-const var2920 var3364 (parentExclusion/1139179338 var2447)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var1300 Iterator (var3364_iterator/-912451715 var2920)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var589 Bool (Iterator_hasNext/-1669924200 var1300)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var589 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3624 var3349 (Iterator_next/-1124697587 var1300)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1300!1 Iterator)
(define-const var643 String (cast-from-var3349-to-String var3624)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var172 Bool (startsWith/-1785782452 var2533 var643)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var172 1 0) 0)) ; Cond: $z1 == 0 
(define-const var589!1 Bool (Iterator_hasNext/-1669924200 var1300!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var589!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3624!1 var3349 (Iterator_next/-1124697587 var1300!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1300!2 Iterator)
(define-const var643!1 String (cast-from-var3349-to-String var3624!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var172!1 Bool (startsWith/-1785782452 var2533 var643!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var172!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var589!2 Bool (Iterator_hasNext/-1669924200 var1300!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var589!2 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3364_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3349-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3938=lombok.launch.ShadowClassLoader, var2447=r0, var2533=r5, var1675=null_type, var3364=java.util.List, var2920=$r1, var1300=r2, var589=$z0, var3349=java.lang.Object, var3624=$r3, var643=r4, var172=$z1}
; {lombok.launch.ShadowClassLoader=var3938, r0=var2447, r5=var2533, null_type=var1675, java.util.List=var3364, $r1=var2920, r2=var1300, $z0=var589, java.lang.Object=var3349, $r3=var3624, r4=var643, $z1=var172}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	return 0
;block_num 7