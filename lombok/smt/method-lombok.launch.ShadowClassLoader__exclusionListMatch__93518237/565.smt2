(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2364 0)
(declare-sort var572 0)
(declare-sort var1525 0)
(declare-sort var1030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var2364) var1525)
(declare-fun var1525_iterator/-912451715 (var1525) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1030)
(declare-fun cast-from-var1030-to-String (var1030) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2364 var2364)
(declare-const null-String String)
(declare-const var256 var2364) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var256 null-var2364)))
(declare-const var3410 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3410 null-String)))
(define-const var2611 var1525 (parentExclusion/1139179338 var256)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var230 Iterator (var1525_iterator/-912451715 var2611)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3425 Bool (Iterator_hasNext/-1669924200 var230)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3425 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1225 var1030 (Iterator_next/-1124697587 var230)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var230!1 Iterator)
(define-const var922 String (cast-from-var1030-to-String var1225)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2554 Bool (startsWith/-1785782452 var3410 var922)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2554 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3425!1 Bool (Iterator_hasNext/-1669924200 var230!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3425!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1225!1 var1030 (Iterator_next/-1124697587 var230!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var230!2 Iterator)
(define-const var922!1 String (cast-from-var1030-to-String var1225!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2554!1 Bool (startsWith/-1785782452 var3410 var922!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2554!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3425!2 Bool (Iterator_hasNext/-1669924200 var230!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3425!2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1225!2 var1030 (Iterator_next/-1124697587 var230!2)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var230!3 Iterator)
(define-const var922!2 String (cast-from-var1030-to-String var1225!2)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2554!2 Bool (startsWith/-1785782452 var3410 var922!2)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2554!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3425!3 Bool (Iterator_hasNext/-1669924200 var230!3)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3425!3 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1225!3 var1030 (Iterator_next/-1124697587 var230!3)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var230!4 Iterator)
(define-const var922!3 String (cast-from-var1030-to-String var1225!3)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2554!3 Bool (startsWith/-1785782452 var3410 var922!3)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var2554!3 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1525_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1030-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2364=lombok.launch.ShadowClassLoader, var256=r0, var3410=r5, var572=null_type, var1525=java.util.List, var2611=$r1, var230=r2, var3425=$z0, var1030=java.lang.Object, var1225=$r3, var922=r4, var2554=$z1}
; {lombok.launch.ShadowClassLoader=var2364, r0=var256, r5=var3410, null_type=var572, java.util.List=var1525, $r1=var2611, r2=var230, $z0=var3425, java.lang.Object=var1030, $r3=var1225, r4=var922, $z1=var2554}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 4}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	return 1
;block_num 10