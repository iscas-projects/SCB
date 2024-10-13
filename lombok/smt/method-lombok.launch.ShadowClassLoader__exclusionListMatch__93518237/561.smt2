(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var93 0)
(declare-sort var1557 0)
(declare-sort var1 0)
(declare-sort var236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parentExclusion/1139179338 (var93) var1)
(declare-fun var1_iterator/-912451715 (var1) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var236)
(declare-fun cast-from-var236-to-String (var236) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var93 var93)
(declare-const null-String String)
(declare-const var3185 var93) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3185 null-var93)))
(declare-const var2500 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2500 null-String)))
(define-const var185 var1 (parentExclusion/1139179338 var3185)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> 
(define-const var1574 Iterator (var1_iterator/-912451715 var185)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1995 Bool (Iterator_hasNext/-1669924200 var1574)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1995 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1905 var236 (Iterator_next/-1124697587 var1574)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1574!1 Iterator)
(define-const var2819 String (cast-from-var236-to-String var1905)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var894 Bool (startsWith/-1785782452 var2500 var2819)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var894 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1995!1 Bool (Iterator_hasNext/-1669924200 var1574!1)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1995!1 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1905!1 var236 (Iterator_next/-1124697587 var1574!1)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1574!2 Iterator)
(define-const var2819!1 String (cast-from-var236-to-String var1905!1)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var894!1 Bool (startsWith/-1785782452 var2500 var2819!1)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var894!1 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var236-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var93=lombok.launch.ShadowClassLoader, var3185=r0, var2500=r5, var1557=null_type, var1=java.util.List, var185=$r1, var1574=r2, var1995=$z0, var236=java.lang.Object, var1905=$r3, var2819=r4, var894=$z1}
; {lombok.launch.ShadowClassLoader=var93, r0=var3185, r5=var2500, null_type=var1557, java.util.List=var1, $r1=var185, r2=var1574, $z0=var1995, java.lang.Object=var236, $r3=var1905, r4=var2819, $z1=var894}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	$r1 = r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	$r3 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r4 = (java.lang.String) $r3;	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	return 1
;block_num 6