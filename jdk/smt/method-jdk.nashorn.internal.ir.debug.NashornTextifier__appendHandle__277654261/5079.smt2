(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var2013) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1931263323 (var2013) String)
(declare-const null-String String)
(declare-const null-var2013 var2013)
(declare-const var3233 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3233 null-String)))
(declare-const var53 var2013) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var53 null-var2013)))
(assert true)
(define-const var2096 Int (getTag/748741772 var53)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var2096 9) (and (not (= var2096 8)) (and (not (= var2096 7)) (and (not (= var2096 6)) (and (not (= var2096 5)) (and (not (= var2096 4)) (and (not (= var2096 3)) (and (not (= var2096 2)) (and (not (= var2096 1)) true)))))))))) ; Intersect: Cond: $i0 == 9  and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional         
(assert true)
;(assert (append/672562846 var3233 "interface")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface") 
(declare-const var3233!1 String)
(assert (= var3233!1 (str.++ var3233 "interface")))
 ; Statement: goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3233!1 " \u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var3233!2 String)
(assert (= var3233!2 (str.++ var3233!1 " \u0027")))
(assert true)
(define-const var3013 String (getName/1931263323 var53)) ; Statement: $r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3233!2 var3013)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3233!3 String)
(assert (= var3233!3 (str.++ var3233!2 var3013)))
(assert true)
;(assert (append/672562846 var3233!3 "\u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3233!4 String)
(assert (= var3233!4 (str.++ var3233!3 "\u0027")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1931263323=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var3233=r1, var2013=jdk.internal.org.objectweb.asm.Handle, var53=r0, var2096=$i0, var3013=$r3}
; {r1=var3233, jdk.internal.org.objectweb.asm.Handle=var2013, r0=var53, $i0=var2096, $r3=var3013}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");	goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")];	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	return
;block_num 3