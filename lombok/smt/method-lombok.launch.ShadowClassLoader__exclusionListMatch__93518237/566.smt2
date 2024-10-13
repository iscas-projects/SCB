(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var469 0)
(declare-sort var3503 0)
(declare-sort var3445 0)
(declare-sort var615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var469) var3445)
(declare-fun var3445_iterator/-912451715 (var3445) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var615)
(declare-fun cast-from-var615-to-String (var615) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var469 var469)
(declare-const null-String String)
(declare-const var1638 var469) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1638 null-var469)))
(declare-const var64 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var64 null-String)))
(define-const var1542 var3445 (parentExclusion/1139179338 var1638)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var1188 Iterator (var3445_iterator/-912451715 var1542)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1400 Bool (Iterator_hasNext/-1669924200 var1188)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1400 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1035 var615 (Iterator_next/-1124697587 var1188)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1188!1 Iterator)
(define-const var2252 String (cast-from-var615-to-String var1035)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var850 Bool (startsWith/-1785782452 var64 var2252)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var850 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1400!1 Bool (Iterator_hasNext/-1669924200 var1188!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1400!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1035!1 var615 (Iterator_next/-1124697587 var1188!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1188!2 Iterator)
(define-const var2252!1 String (cast-from-var615-to-String var1035!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var850!1 Bool (startsWith/-1785782452 var64 var2252!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var850!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1400!2 Bool (Iterator_hasNext/-1669924200 var1188!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1400!2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1035!2 var615 (Iterator_next/-1124697587 var1188!2)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1188!3 Iterator)
(define-const var2252!2 String (cast-from-var615-to-String var1035!2)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var850!2 Bool (startsWith/-1785782452 var64 var2252!2)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var850!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1400!3 Bool (Iterator_hasNext/-1669924200 var1188!3)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1400!3 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1035!3 var615 (Iterator_next/-1124697587 var1188!3)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1188!4 Iterator)
(define-const var2252!3 String (cast-from-var615-to-String var1035!3)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var850!3 Bool (startsWith/-1785782452 var64 var2252!3)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var850!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1400!4 Bool (Iterator_hasNext/-1669924200 var1188!4)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1400!4 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3445_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var615-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var469=lombok.launch.ShadowClassLoader, var1638=r0, var64=r5, var3503=null_type, var3445=java.util.List, var1542=$r1, var1188=r2, var1400=$z0, var615=java.lang.Object, var1035=$r3, var2252=r4, var850=$z1}
; {lombok.launch.ShadowClassLoader=var469, r0=var1638, r5=var64, null_type=var3503, java.util.List=var3445, $r1=var1542, r2=var1188, $z0=var1400, java.lang.Object=var615, $r3=var1035, r4=var2252, $z1=var850}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 4}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	return 0
;block_num 11