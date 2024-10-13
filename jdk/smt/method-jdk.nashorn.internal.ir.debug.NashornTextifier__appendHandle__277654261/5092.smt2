(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var130 0)
(declare-sort var159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var130) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1931263323 (var130) String)
(declare-const null-String String)
(declare-const null-var130 var130)
(declare-const var159-$assertionsDisabled Bool)
(declare-const var328 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var328 null-String)))
(declare-const var3408 var130) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var3408 null-var130)))
(assert true)
(define-const var1396 Int (getTag/748741772 var3408)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (not (= var1396 9)) (and (not (= var1396 8)) (and (not (= var1396 7)) (and (not (= var1396 6)) (and (not (= var1396 5)) (and (not (= var1396 4)) (and (not (= var1396 3)) (and (not (= var1396 2)) (and (not (= var1396 1)) true)))))))))) ; Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional         
(define-const var409 Bool var159-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(assert (not (= (ite var409 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var328 " \u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var328!1 String)
(assert (= var328!1 (str.++ var328 " \u0027")))
(assert true)
(define-const var3400 String (getName/1931263323 var3408)) ; Statement: $r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var328!1 var3400)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var328!2 String)
(assert (= var328!2 (str.++ var328!1 var3400)))
(assert true)
;(assert (append/672562846 var328!2 "\u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var328!3 String)
(assert (= var328!3 (str.++ var328!2 "\u0027")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1931263323=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var328=r1, var130=jdk.internal.org.objectweb.asm.Handle, var3408=r0, var1396=$i0, var159=jdk.nashorn.internal.ir.debug.NashornTextifier, var409=$z0, var3400=$r3}
; {r1=var328, jdk.internal.org.objectweb.asm.Handle=var130, r0=var3408, $i0=var1396, jdk.nashorn.internal.ir.debug.NashornTextifier=var159, $z0=var409, $r3=var3400}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	$z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>;	if $z0 != 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	return
;block_num 3