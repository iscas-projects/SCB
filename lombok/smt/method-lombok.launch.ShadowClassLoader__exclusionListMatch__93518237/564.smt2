(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var281 0)
(declare-sort var3994 0)
(declare-sort var511 0)
(declare-sort var3776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var281) var511)
(declare-fun var511_iterator/-912451715 (var511) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3776)
(declare-fun cast-from-var3776-to-String (var3776) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var281 var281)
(declare-const null-String String)
(declare-const var3032 var281) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3032 null-var281)))
(declare-const var1784 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1784 null-String)))
(define-const var3282 var511 (parentExclusion/1139179338 var3032)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var2338 Iterator (var511_iterator/-912451715 var3282)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var967 Bool (Iterator_hasNext/-1669924200 var2338)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var967 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3021 var3776 (Iterator_next/-1124697587 var2338)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2338!1 Iterator)
(define-const var2206 String (cast-from-var3776-to-String var3021)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1342 Bool (startsWith/-1785782452 var1784 var2206)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1342 1 0) 0)) ; Cond: $z1 == 0 
(define-const var967!1 Bool (Iterator_hasNext/-1669924200 var2338!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var967!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3021!1 var3776 (Iterator_next/-1124697587 var2338!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2338!2 Iterator)
(define-const var2206!1 String (cast-from-var3776-to-String var3021!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1342!1 Bool (startsWith/-1785782452 var1784 var2206!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1342!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var967!2 Bool (Iterator_hasNext/-1669924200 var2338!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var967!2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3021!2 var3776 (Iterator_next/-1124697587 var2338!2)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2338!3 Iterator)
(define-const var2206!2 String (cast-from-var3776-to-String var3021!2)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1342!2 Bool (startsWith/-1785782452 var1784 var2206!2)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1342!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var967!3 Bool (Iterator_hasNext/-1669924200 var2338!3)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var967!3 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var511_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3776-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var281=lombok.launch.ShadowClassLoader, var3032=r0, var1784=r5, var3994=null_type, var511=java.util.List, var3282=$r1, var2338=r2, var967=$z0, var3776=java.lang.Object, var3021=$r3, var2206=r4, var1342=$z1}
; {lombok.launch.ShadowClassLoader=var281, r0=var3032, r5=var1784, null_type=var3994, java.util.List=var511, $r1=var3282, r2=var2338, $z0=var967, java.lang.Object=var3776, $r3=var3021, r4=var2206, $z1=var1342}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 3}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	return 0
;block_num 9