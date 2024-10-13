(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3119 0)
(declare-sort var2314 0)
(declare-sort var1361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var3119) Int)
(declare-fun var1361-init () var1361)
(declare-fun <init>/-208190597 (var1361) void)
(declare-const null-String String)
(declare-const null-var3119 var3119)
(declare-const var2314-$assertionsDisabled Bool)
(declare-const var1850 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1850 null-String)))
(declare-const var1121 var3119) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var1121 null-var3119)))
(assert true)
(define-const var1403 Int (getTag/748741772 var1121)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (not (= var1403 9)) (and (not (= var1403 8)) (and (not (= var1403 7)) (and (not (= var1403 6)) (and (not (= var1403 5)) (and (not (= var1403 4)) (and (not (= var1403 3)) (and (not (= var1403 2)) (and (not (= var1403 1)) true)))))))))) ; Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional         
(define-const var3539 Bool var2314-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(assert (not (not (= (ite var3539 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1982 var1361 var1361-init) ; Statement: $r2 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var1982)) ; Statement: specialinvoke $r2.<java.lang.AssertionError: void <init>()>() 

(declare-const var1982!1 var1361)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), var1361-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var1850=r1, var3119=jdk.internal.org.objectweb.asm.Handle, var1121=r0, var1403=$i0, var2314=jdk.nashorn.internal.ir.debug.NashornTextifier, var3539=$z0, var1361=java.lang.AssertionError, var1982=$r2}
; {r1=var1850, jdk.internal.org.objectweb.asm.Handle=var3119, r0=var1121, $i0=var1403, jdk.nashorn.internal.ir.debug.NashornTextifier=var2314, $z0=var3539, java.lang.AssertionError=var1361, $r2=var1982}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	$z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>;	if $z0 != 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r2 = new java.lang.AssertionError;	specialinvoke $r2.<java.lang.AssertionError: void <init>()>();	throw $r2
;block_num 3