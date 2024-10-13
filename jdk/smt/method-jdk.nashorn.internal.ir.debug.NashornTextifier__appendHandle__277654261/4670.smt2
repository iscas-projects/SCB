(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var1331) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1931263323 (var1331) String)
(declare-const null-String String)
(declare-const null-var1331 var1331)
(declare-const var3702 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3702 null-String)))
(declare-const var1938 var1331) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var1938 null-var1331)))
(assert true)
(define-const var1442 Int (getTag/748741772 var1938)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
 ; Statement: tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var1442 2) (and (not (= var1442 1)) true))) ; Intersect: Cond: $i0 == 2  and Intersect: Negate: Cond: $i0 == 1   and Non Conditional  
(assert true)
;(assert (append/672562846 var3702 "getstatic")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic") 
(declare-const var3702!1 String)
(assert (= var3702!1 (str.++ var3702 "getstatic")))
 ; Statement: goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3702!1 " \u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var3702!2 String)
(assert (= var3702!2 (str.++ var3702!1 " \u0027")))
(assert true)
(define-const var1483 String (getName/1931263323 var1938)) ; Statement: $r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3702!2 var1483)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3702!3 String)
(assert (= var3702!3 (str.++ var3702!2 var1483)))
(assert true)
;(assert (append/672562846 var3702!3 "\u0027")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3702!4 String)
(assert (= var3702!4 (str.++ var3702!3 "\u0027")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1931263323=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var3702=r1, var1331=jdk.internal.org.objectweb.asm.Handle, var1938=r0, var1442=$i0, var1483=$r3}
; {r1=var3702, jdk.internal.org.objectweb.asm.Handle=var1331, r0=var1938, $i0=var1442, $r3=var1483}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: jdk.internal.org.objectweb.asm.Handle;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	tableswitch($i0) {     case 1: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getfield");     case 2: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");     case 3: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putfield");     case 4: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("putstatic");     case 5: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("virtual");     case 6: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static");     case 7: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("special");     case 8: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("new_special");     case 9: goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("interface");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getstatic");	goto [?= virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'")];	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r3 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	return
;block_num 3