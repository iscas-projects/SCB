(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2275 0)
(declare-sort var3530 0)
(declare-sort var1075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1075-init () var1075)
(declare-fun <init>/-208190597 (var1075) void)
(declare-const null-var2275 var2275)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3530__ (Array Int var3530))
(declare-const var2275-$assertionsDisabled Bool)
(declare-const var2460 var2275) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2460 null-var2275)))
(declare-const var3526 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3526 null-Int)))
(declare-const var3204 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3204 null-Int)))
(declare-const var1241 (Array Int var3530)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var1241 null-__Array__Int__var3530__)))
(declare-const var2195 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2195 null-Int)))
(declare-const var2267 (Array Int var3530)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var2267 null-__Array__Int__var3530__)))
(define-const var1654 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1654)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1654!1 String)
(assert (= var1654!1 ""))
(assert true)
;(assert (append/672562846 var1654!1 "frame ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ") 
(declare-const var1654!2 String)
(assert (= var1654!2 (str.++ var1654!1 "frame ")))
 ; Statement: tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (not (= var3526 4)) (and (not (= var3526 3)) (and (not (= var3526 2)) (and (not (= var3526 1)) (and (not (= var3526 0)) (and (not (= var3526 (- 1))) true))))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional      
(define-const var1685 Bool var2275-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (not (not (= (ite var1685 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var265 var1075 var1075-init) ; Statement: $r5 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var265)) ; Statement: specialinvoke $r5.<java.lang.AssertionError: void <init>()>() 

(declare-const var265!1 var1075)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1075-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var2275=jdk.nashorn.internal.ir.debug.NashornTextifier, var2460=r1, var3526=i0, var3204=i1, var3530=java.lang.Object, var1241=r4, var2195=i2, var2267=r2, var1654=$r0, var1685=$z0, var1075=java.lang.AssertionError, var265=$r5}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2275, r1=var2460, i0=var3526, i1=var3204, java.lang.Object=var3530, r4=var1241, i2=var2195, r2=var2267, $r0=var1654, $z0=var1685, java.lang.AssertionError=var1075, $r5=var265}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r4 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ");	tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	$z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r5 = new java.lang.AssertionError;	specialinvoke $r5.<java.lang.AssertionError: void <init>()>();	throw $r5
;block_num 3