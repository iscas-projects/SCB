(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort var3470 0)
(declare-sort var3320 0)
(declare-sort var3697 0)
(declare-sort var3823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3320!class ClassObject)
(declare-fun var3470_getAccessorTypeIndex/-8434135 (ClassObject) Int)
(declare-fun var3697-init () var3697)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3320) String)
(declare-fun cast-from-ClassObject-to-var3320 (ClassObject) var3320)
(declare-fun getKey/-1967431913 (var3823) String)
(declare-fun cast-from-var2326-to-var3823 (var2326) var3823)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3697 var3320) void)
(declare-fun cast-from-String-to-var3320 (String) var3320)
(declare-const null-var2326 var2326)
(declare-const null-ClassObject ClassObject)
(declare-const var2326-$assertionsDisabled Bool)
(declare-const Int-TYPE ClassObject)
(declare-const Float64-TYPE ClassObject)
(declare-const var2014 var2326) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty 
(assert (not (= var2014 null-var2326)))
(declare-const var3807 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3807 null-ClassObject)))
(define-const var2356 Int (var3470_getAccessorTypeIndex/-8434135 var3807)) ; Statement: i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int getAccessorTypeIndex(java.lang.Class)>(r0) 
(define-const var84 Bool var2326-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 
(assert (not (not (= (ite var84 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1169 ClassObject Int-TYPE) ; Statement: $r12 = <java.lang.Integer: java.lang.Class TYPE> 
 ; Statement: if r0 == $r12 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 
(assert (not (= var3807 var1169))) ; Negate: Cond: r0 == $r12  
(define-const var1496 ClassObject Float64-TYPE) ; Statement: $r13 = <java.lang.Double: java.lang.Class TYPE> 
 ; Statement: if r0 == $r13 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 
(assert (not (= var3807 var1496))) ; Negate: Cond: r0 == $r13  
 ; Statement: if r0 == class "Ljava/lang/Object;" goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 
(assert (not (= var3807 var3320!class))) ; Negate: Cond: r0 == class "Ljava/lang/Object;"  
(define-const var3826 var3697 var3697-init) ; Statement: $r26 = new java.lang.AssertionError 
(define-const var3952 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3952)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3952!1 String)
(assert (= var3952!1 ""))
(assert true)
(define-const var1127 String (append/672562846 var3952!1 "invalid getter type ")) ; Statement: $r16 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid getter type ") 
(declare-const var3952!2 String)
(assert (= var3952!2 (str.++ var3952!1 "invalid getter type ")))
(assert true)
(define-const var2981 String (append/-1031950772 var1127 (cast-from-ClassObject-to-var3320 var3807))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1127!1 String)
(assert (str.prefixof var1127 var1127!1))
(assert true)
(define-const var1116 String (append/672562846 var2981 " for ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 " for ")))
(assert true)
(define-const var765 String (getKey/-1967431913 (cast-from-var2326-to-var3823 var2014))) ; Statement: $r18 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.String getKey()>() 
(assert true)
(define-const var2290 String (append/672562846 var1116 var765)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1116!1 String)
(assert (= var1116!1 (str.++ var1116 var765)))
(assert true)
(define-const var923 String (toString/-2075883882 var2290)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3826 (cast-from-String-to-var3320 var923))) ; Statement: specialinvoke $r26.<java.lang.AssertionError: void <init>(java.lang.Object)>($r21) 

(declare-const var3826!1 var3697)
(declare-const var923!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var3470_getAccessorTypeIndex/-8434135=([java.lang.Class], int), var3697-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3320=([java.lang.Class], java.lang.Object), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), cast-from-var2326-to-var3823=([jdk.nashorn.internal.runtime.AccessorProperty], jdk.nashorn.internal.runtime.Property), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3320=([java.lang.String], java.lang.Object)}
; {var2326=jdk.nashorn.internal.runtime.AccessorProperty, var2014=r1, var3807=r0, var3470=jdk.nashorn.internal.runtime.JSType, var2356=i0, var84=$z0, var1169=$r12, var1496=$r13, var3320=java.lang.Object, var3697=java.lang.AssertionError, var3826=$r26, var3952=$r25, var1127=$r16, var2981=$r17, var1116=$r19, var3823=jdk.nashorn.internal.runtime.Property, var765=$r18, var2290=$r20, var923=$r21}
; {jdk.nashorn.internal.runtime.AccessorProperty=var2326, r1=var2014, r0=var3807, jdk.nashorn.internal.runtime.JSType=var3470, i0=var2356, $z0=var84, $r12=var1169, $r13=var1496, java.lang.Object=var3320, java.lang.AssertionError=var3697, $r26=var3826, $r25=var3952, $r16=var1127, $r17=var2981, $r19=var1116, jdk.nashorn.internal.runtime.Property=var3823, $r18=var765, $r20=var2290, $r21=var923}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty;	r0 := @parameter0: java.lang.Class;	i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int getAccessorTypeIndex(java.lang.Class)>(r0);	$z0 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>;	if $z0 != 0 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	$r12 = <java.lang.Integer: java.lang.Class TYPE>;	if r0 == $r12 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	$r13 = <java.lang.Double: java.lang.Class TYPE>;	if r0 == $r13 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	if r0 == class "Ljava/lang/Object;" goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	$r26 = new java.lang.AssertionError;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid getter type ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r18 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.String getKey()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.lang.AssertionError: void <init>(java.lang.Object)>($r21);	throw $r26
;block_num 5