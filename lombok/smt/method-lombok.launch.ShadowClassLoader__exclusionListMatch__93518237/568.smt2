(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort var3387 0)
(declare-sort var1164 0)
(declare-sort var3956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var1108) var1164)
(declare-fun var1164_iterator/-912451715 (var1164) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3956)
(declare-fun cast-from-var3956-to-String (var3956) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1108 var1108)
(declare-const null-String String)
(declare-const var3399 var1108) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3399 null-var1108)))
(declare-const var2205 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2205 null-String)))
(define-const var367 var1164 (parentExclusion/1139179338 var3399)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var935 Iterator (var1164_iterator/-912451715 var367)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2210 Bool (Iterator_hasNext/-1669924200 var935)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2210 1 0) 0))) ; Cond: $z0 != 0 
(define-const var177 var3956 (Iterator_next/-1124697587 var935)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var935!1 Iterator)
(define-const var2986 String (cast-from-var3956-to-String var177)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3903 Bool (startsWith/-1785782452 var2205 var2986)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3903 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2210!1 Bool (Iterator_hasNext/-1669924200 var935!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2210!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var177!1 var3956 (Iterator_next/-1124697587 var935!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var935!2 Iterator)
(define-const var2986!1 String (cast-from-var3956-to-String var177!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3903!1 Bool (startsWith/-1785782452 var2205 var2986!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3903!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2210!2 Bool (Iterator_hasNext/-1669924200 var935!2)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2210!2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var177!2 var3956 (Iterator_next/-1124697587 var935!2)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var935!3 Iterator)
(define-const var2986!2 String (cast-from-var3956-to-String var177!2)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3903!2 Bool (startsWith/-1785782452 var2205 var2986!2)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3903!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2210!3 Bool (Iterator_hasNext/-1669924200 var935!3)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2210!3 1 0) 0))) ; Cond: $z0 != 0 
(define-const var177!3 var3956 (Iterator_next/-1124697587 var935!3)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var935!4 Iterator)
(define-const var2986!3 String (cast-from-var3956-to-String var177!3)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3903!3 Bool (startsWith/-1785782452 var2205 var2986!3)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3903!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2210!4 Bool (Iterator_hasNext/-1669924200 var935!4)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2210!4 1 0) 0))) ; Cond: $z0 != 0 
(define-const var177!4 var3956 (Iterator_next/-1124697587 var935!4)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var935!5 Iterator)
(define-const var2986!4 String (cast-from-var3956-to-String var177!4)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3903!4 Bool (startsWith/-1785782452 var2205 var2986!4)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3903!4 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2210!5 Bool (Iterator_hasNext/-1669924200 var935!5)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var2210!5 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1164_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3956-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1108=lombok.launch.ShadowClassLoader, var3399=r0, var2205=r5, var3387=null_type, var1164=java.util.List, var367=$r1, var935=r2, var2210=$z0, var3956=java.lang.Object, var177=$r3, var2986=r4, var3903=$z1}
; {lombok.launch.ShadowClassLoader=var1108, r0=var3399, r5=var2205, null_type=var3387, java.util.List=var1164, $r1=var367, r2=var935, $z0=var2210, java.lang.Object=var3956, $r3=var177, r4=var2986, $z1=var3903}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 5}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	return 0
;block_num 13