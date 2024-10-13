(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3346 0)
(declare-sort var137 0)
(declare-sort var447 0)
(declare-sort var2503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var3346) var447)
(declare-fun var447_iterator/-912451715 (var447) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2503)
(declare-fun cast-from-var2503-to-String (var2503) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3346 var3346)
(declare-const null-String String)
(declare-const var1024 var3346) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1024 null-var3346)))
(declare-const var1278 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1278 null-String)))
(define-const var1522 var447 (parentExclusion/1139179338 var1024)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var3354 Iterator (var447_iterator/-912451715 var1522)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var28 Bool (Iterator_hasNext/-1669924200 var3354)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var28 1 0) 0))) ; Cond: $z0 != 0 
(define-const var650 var2503 (Iterator_next/-1124697587 var3354)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3354!1 Iterator)
(define-const var1798 String (cast-from-var2503-to-String var650)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1071 Bool (startsWith/-1785782452 var1278 var1798)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1071 1 0) 0)) ; Cond: $z1 == 0 
(define-const var28!1 Bool (Iterator_hasNext/-1669924200 var3354!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var28!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var650!1 var2503 (Iterator_next/-1124697587 var3354!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3354!2 Iterator)
(define-const var1798!1 String (cast-from-var2503-to-String var650!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1071!1 Bool (startsWith/-1785782452 var1278 var1798!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1071!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var28!2 Bool (Iterator_hasNext/-1669924200 var3354!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var28!2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var650!2 var2503 (Iterator_next/-1124697587 var3354!2)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3354!3 Iterator)
(define-const var1798!2 String (cast-from-var2503-to-String var650!2)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var1071!2 Bool (startsWith/-1785782452 var1278 var1798!2)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var1071!2 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var447_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2503-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3346=lombok.launch.ShadowClassLoader, var1024=r0, var1278=r5, var137=null_type, var447=java.util.List, var1522=$r1, var3354=r2, var28=$z0, var2503=java.lang.Object, var650=$r3, var1798=r4, var1071=$z1}
; {lombok.launch.ShadowClassLoader=var3346, r0=var1024, r5=var1278, null_type=var137, java.util.List=var447, $r1=var1522, r2=var3354, $z0=var28, java.lang.Object=var2503, $r3=var650, r4=var1798, $z1=var1071}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 3}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	return 1
;block_num 8