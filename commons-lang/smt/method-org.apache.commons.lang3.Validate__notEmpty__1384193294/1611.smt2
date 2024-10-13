(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1581 0)
(declare-sort var1703 0)
(declare-sort var2548 0)
(declare-sort var1436 0)
(declare-sort var465 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1436_toSupplier/2040472275 (String (Array Int var1703)) var2548)
(declare-fun var465_requireNonNull/1077068520 (var1703 var2548) var1703)
(declare-fun cast-from-String-to-var1703 (String) var1703)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var378-init () var378)
(declare-fun var1436_getMessage/1241486448 (String (Array Int var1703)) String)
(declare-fun <init>/875830710 (var378 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var1703__ (Array Int var1703))
(declare-const var1360 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1360 null-String)))
(declare-const var1824 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1824 null-String)))
(declare-const var2873 (Array Int var1703)) ; Statement: r2 := @parameter2: java.lang.Object[] 
(assert (not (= var2873 null-__Array__Int__var1703__)))
(define-const var3927 var2548 (var1436_toSupplier/2040472275 var1824 var2873)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Validate: java.util.function.Supplier toSupplier(java.lang.String,java.lang.Object[])>(r1, r2) 
;(assert (var465_requireNonNull/1077068520 (cast-from-String-to-var1703 var1360) var3927)) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.util.function.Supplier)>(r0, $r3) 

(declare-const var1360!1 String)
(declare-const var3927!1 var2548)
(define-const var2371 Int (String_length/-667254855 var1360!1)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto return r0 
(assert (not (not (= var2371 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3276 var378 var378-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3977 String (var1436_getMessage/1241486448 var1824 var2873)) ; Statement: $r5 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.String getMessage(java.lang.String,java.lang.Object[])>(r1, r2) 
(assert true)
;(assert (<init>/875830710 var3276 var3977)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3276!1 var378)
(declare-const var3977!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1436_toSupplier/2040472275=([java.lang.String, java.lang.Object[]], java.util.function.Supplier), var465_requireNonNull/1077068520=([java.lang.Object, java.util.function.Supplier], java.lang.Object), cast-from-String-to-var1703=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var378-init=([], java.lang.IllegalArgumentException), var1436_getMessage/1241486448=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1360=r0, var1824=r1, var1581=null_type, var1703=java.lang.Object, var2873=r2, var2548=java.util.function.Supplier, var1436=org.apache.commons.lang3.Validate, var3927=$r3, var465=java.util.Objects, var2371=$i0, var378=java.lang.IllegalArgumentException, var3276=$r4, var3977=$r5}
; {r0=var1360, r1=var1824, null_type=var1581, java.lang.Object=var1703, r2=var2873, java.util.function.Supplier=var2548, org.apache.commons.lang3.Validate=var1436, $r3=var3927, java.util.Objects=var465, $i0=var2371, java.lang.IllegalArgumentException=var378, $r4=var3276, $r5=var3977}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object[];	$r3 = staticinvoke <org.apache.commons.lang3.Validate: java.util.function.Supplier toSupplier(java.lang.String,java.lang.Object[])>(r1, r2);	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.util.function.Supplier)>(r0, $r3);	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto return r0;	$r4 = new java.lang.IllegalArgumentException;	$r5 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.String getMessage(java.lang.String,java.lang.Object[])>(r1, r2);	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 2