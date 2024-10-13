(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var99 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var99) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1931263323 (var99) String)
(declare-const null-String String)
(declare-const null-var99 var99)
(declare-const var3119 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3119 null-String)))
(declare-const var3545 var99) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var3545 null-var99)))
(assert true)
(define-const var620 Int (getTag/748741772 var3545)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var620 4) (and (not (= var620 3)) (and (not (= var620 2)) (and (not (= var620 1)) true))))) ; Intersect: Cond: $i0 == 4  and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional    
(assert true)
;(assert (append/672562846 var3119 "putstatic")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic") 
(declare-const var3119!1 String)
(assert (= var3119!1 (str.++ var3119 "putstatic")))
 ; Statement: goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3119!1 " \u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var3119!2 String)
(assert (= var3119!2 (str.++ var3119!1 " \u0027")))
(assert true)
(define-const var3192 String (getName/1931263323 var3545)) ; Statement: $r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3119!2 var3192)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3119!3 String)
(assert (= var3119!3 (str.++ var3119!2 var3192)))
(assert true)
;(assert (append/672562846 var3119!3 "\u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3119!4 String)
(assert (= var3119!4 (str.++ var3119!3 "\u0027")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1931263323=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var3119=r1, var99=jdk.internal.org.objectweb.asm.Handle, var3545=r0, var620=$i0, var3192=$r3}
; {r1=var3119, jdk.internal.org.objectweb.asm.Handle=var99, r0=var3545, $i0=var620, $r3=var3192}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");	goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")];	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	return
;block_num 3