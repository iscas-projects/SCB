(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3948 0)
(declare-sort var2307 0)
(declare-sort var1250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2307)
(declare-fun cast-from-var2307-to-var1250 (var2307) var1250)
(declare-fun var1250_getKey/-33423493 (var1250) var2307)
(declare-fun cast-from-var2307-to-String (var2307) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var151 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var151 null-String)))
(declare-const var1485 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var1485 null-Iterator)))
(assert true) ; Non Conditional
(define-const var2339 Bool (Iterator_hasNext/-1669924200 var1485)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2339 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1501 var2307 (Iterator_next/-1124697587 var1485)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1485!1 Iterator)
(define-const var1294 var1250 (cast-from-var2307-to-var1250 var1501)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1750 var2307 (var1250_getKey/-33423493 var1294)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3702 String (cast-from-var2307-to-String var1750)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3601 Bool (startsWith/-1785782452 var3702 var151)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3601 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2339!1 Bool (Iterator_hasNext/-1669924200 var1485!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2339!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1501!1 var2307 (Iterator_next/-1124697587 var1485!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1485!2 Iterator)
(define-const var1294!1 var1250 (cast-from-var2307-to-var1250 var1501!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1750!1 var2307 (var1250_getKey/-33423493 var1294!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3702!1 String (cast-from-var2307-to-String var1750!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3601!1 Bool (startsWith/-1785782452 var3702!1 var151)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3601!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2339!2 Bool (Iterator_hasNext/-1669924200 var1485!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2339!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1501!2 var2307 (Iterator_next/-1124697587 var1485!2)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1485!3 Iterator)
(define-const var1294!2 var1250 (cast-from-var2307-to-var1250 var1501!2)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1750!2 var2307 (var1250_getKey/-33423493 var1294!2)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3702!2 String (cast-from-var2307-to-String var1750!2)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3601!2 Bool (startsWith/-1785782452 var3702!2 var151)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3601!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2339!3 Bool (Iterator_hasNext/-1669924200 var1485!3)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var2339!3 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2307-to-var1250=([java.lang.Object], java.util.Map$Entry), var1250_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2307-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var151=r4, var3948=null_type, var1485=r0, var2339=$z0, var2307=java.lang.Object, var1501=$r1, var1250=java.util.Map$Entry, var1294=$r2, var1750=$r3, var3702=$r5, var3601=$z1}
; {r4=var151, null_type=var3948, r0=var1485, $z0=var2339, java.lang.Object=var2307, $r1=var1501, java.util.Map$Entry=var1250, $r2=var1294, $r3=var1750, $r5=var3702, $z1=var3601}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 3}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	return 1
;block_num 9