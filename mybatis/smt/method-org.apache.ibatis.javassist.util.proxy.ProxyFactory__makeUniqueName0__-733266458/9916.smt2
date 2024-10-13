(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1534 0)
(declare-sort var3208 0)
(declare-sort var2016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3208)
(declare-fun cast-from-var3208-to-var2016 (var3208) var2016)
(declare-fun var2016_getKey/-33423493 (var2016) var3208)
(declare-fun cast-from-var3208-to-String (var3208) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var2353 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2353 null-String)))
(declare-const var822 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var822 null-Iterator)))
(assert true) ; Non Conditional
(define-const var3372 Bool (Iterator_hasNext/-1669924200 var822)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3372 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var106 var3208 (Iterator_next/-1124697587 var822)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var822!1 Iterator)
(define-const var3729 var2016 (cast-from-var3208-to-var2016 var106)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var48 var3208 (var2016_getKey/-33423493 var3729)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1827 String (cast-from-var3208-to-String var48)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var799 Bool (startsWith/-1785782452 var1827 var2353)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var799 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3372!1 Bool (Iterator_hasNext/-1669924200 var822!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var3372!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3208-to-var2016=([java.lang.Object], java.util.Map$Entry), var2016_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3208-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2353=r4, var1534=null_type, var822=r0, var3372=$z0, var3208=java.lang.Object, var106=$r1, var2016=java.util.Map$Entry, var3729=$r2, var48=$r3, var1827=$r5, var799=$z1}
; {r4=var2353, null_type=var1534, r0=var822, $z0=var3372, java.lang.Object=var3208, $r1=var106, java.util.Map$Entry=var2016, $r2=var3729, $r3=var48, $r5=var1827, $z1=var799}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	return 1
;block_num 5