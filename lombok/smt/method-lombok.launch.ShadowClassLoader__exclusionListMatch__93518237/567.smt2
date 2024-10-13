(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1483 0)
(declare-sort var986 0)
(declare-sort var3918 0)
(declare-sort var2541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var1483) var3918)
(declare-fun var3918_iterator/-912451715 (var3918) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2541)
(declare-fun cast-from-var2541-to-String (var2541) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1483 var1483)
(declare-const null-String String)
(declare-const var837 var1483) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var837 null-var1483)))
(declare-const var485 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var485 null-String)))
(define-const var3913 var3918 (parentExclusion/1139179338 var837)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var275 Iterator (var3918_iterator/-912451715 var3913)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2148 Bool (Iterator_hasNext/-1669924200 var275)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2148 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2045 var2541 (Iterator_next/-1124697587 var275)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var275!1 Iterator)
(define-const var1311 String (cast-from-var2541-to-String var2045)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2481 Bool (startsWith/-1785782452 var485 var1311)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2481 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2148!1 Bool (Iterator_hasNext/-1669924200 var275!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2148!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2045!1 var2541 (Iterator_next/-1124697587 var275!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var275!2 Iterator)
(define-const var1311!1 String (cast-from-var2541-to-String var2045!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2481!1 Bool (startsWith/-1785782452 var485 var1311!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2481!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2148!2 Bool (Iterator_hasNext/-1669924200 var275!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2148!2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2045!2 var2541 (Iterator_next/-1124697587 var275!2)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var275!3 Iterator)
(define-const var1311!2 String (cast-from-var2541-to-String var2045!2)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2481!2 Bool (startsWith/-1785782452 var485 var1311!2)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2481!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2148!3 Bool (Iterator_hasNext/-1669924200 var275!3)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2148!3 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2045!3 var2541 (Iterator_next/-1124697587 var275!3)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var275!4 Iterator)
(define-const var1311!3 String (cast-from-var2541-to-String var2045!3)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2481!3 Bool (startsWith/-1785782452 var485 var1311!3)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2481!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2148!4 Bool (Iterator_hasNext/-1669924200 var275!4)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2148!4 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2045!4 var2541 (Iterator_next/-1124697587 var275!4)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var275!5 Iterator)
(define-const var1311!4 String (cast-from-var2541-to-String var2045!4)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var2481!4 Bool (startsWith/-1785782452 var485 var1311!4)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var2481!4 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3918_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2541-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1483=lombok.launch.ShadowClassLoader, var837=r0, var485=r5, var986=null_type, var3918=java.util.List, var3913=$r1, var275=r2, var2148=$z0, var2541=java.lang.Object, var2045=$r3, var1311=r4, var2481=$z1}
; {lombok.launch.ShadowClassLoader=var1483, r0=var837, r5=var485, null_type=var986, java.util.List=var3918, $r1=var3913, r2=var275, $z0=var2148, java.lang.Object=var2541, $r3=var2045, r4=var1311, $z1=var2481}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 5}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	return 1
;block_num 12