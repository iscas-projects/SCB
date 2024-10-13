(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var433) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1931263323 (var433) String)
(declare-const null-String String)
(declare-const null-var433 var433)
(declare-const var1575 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1575 null-String)))
(declare-const var570 var433) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var570 null-var433)))
(assert true)
(define-const var3690 Int (getTag/748741772 var570)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var3690 5) (and (not (= var3690 4)) (and (not (= var3690 3)) (and (not (= var3690 2)) (and (not (= var3690 1)) true)))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional     
(assert true)
;(assert (append/672562846 var1575 "virtual")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual") 
(declare-const var1575!1 String)
(assert (= var1575!1 (str.++ var1575 "virtual")))
 ; Statement: goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1575!1 " \u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var1575!2 String)
(assert (= var1575!2 (str.++ var1575!1 " \u0027")))
(assert true)
(define-const var2100 String (getName/1931263323 var570)) ; Statement: $r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1575!2 var2100)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1575!3 String)
(assert (= var1575!3 (str.++ var1575!2 var2100)))
(assert true)
;(assert (append/672562846 var1575!3 "\u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1575!4 String)
(assert (= var1575!4 (str.++ var1575!3 "\u0027")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1931263323=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var1575=r1, var433=jdk.internal.org.objectweb.asm.Handle, var570=r0, var3690=$i0, var2100=$r3}
; {r1=var1575, jdk.internal.org.objectweb.asm.Handle=var433, r0=var570, $i0=var3690, $r3=var2100}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");	goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")];	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	return
;block_num 3