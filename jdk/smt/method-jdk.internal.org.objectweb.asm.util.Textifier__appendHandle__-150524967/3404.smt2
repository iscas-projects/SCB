(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2412 0)
(declare-sort var2923 0)
(declare-sort var1321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/748741772 (var2923) Int)
(declare-fun buf/-10557480 (var1321) String)
(declare-fun cast-from-var2412-to-var1321 (var2412) var1321)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun tab3/-788090934 (var2412) String)
(declare-fun getOwner/-436492159 (var2923) String)
(declare-fun appendDescriptor/199836990 (var2412 Int String) void)
(declare-fun getName/1931263323 (var2923) String)
(declare-fun getDesc/1766159253 (var2923) String)
(declare-const null-var2412 var2412)
(declare-const null-var2923 var2923)
(declare-const var80 var2412) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var80 null-var2412)))
(declare-const var584 var2923) ; Statement: r0 := @parameter0: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var584 null-var2923)))
(assert true)
(define-const var3617 Int (getTag/748741772 var584)) ; Statement: i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>() 
(define-const var1571 String (buf/-10557480 (cast-from-var2412-to-var1321 var80))) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3797 String (append/1560614132 var1571 "// handle kind 0x")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// handle kind 0x") 
(declare-const var1571!1 String)
(assert (str.prefixof var1571 var1571!1))
(define-const var713 String (Int_toHexString/1865784998 var3617)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var399 String (append/1560614132 var3797 var713)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3797!1 String)
(assert (str.prefixof var3797 var3797!1))
(assert true)
;(assert (append/1560614132 var399 " : ")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : ") 
(declare-const var399!1 String)
(assert (str.prefixof var399 var399!1))
(define-const var3229 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3608 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2810 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
 ; Statement: tableswitch(i0) {     case 1: goto $r17 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 2: goto $r16 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 3: goto $r15 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 4: goto $r14 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 5: goto $r13 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 6: goto $r12 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 7: goto $r11 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 8: goto $r10 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 9: goto $r6 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     default: goto $r18 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>; } 
(assert (and (not (= var3617 9)) (and (not (= var3617 8)) (and (not (= var3617 7)) (and (not (= var3617 6)) (and (not (= var3617 5)) (and (not (= var3617 4)) (and (not (= var3617 3)) (and (not (= var3617 2)) (and (not (= var3617 1)) true)))))))))) ; Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional         
(define-const var2694 String (buf/-10557480 (cast-from-var2412-to-var1321 var80))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2694 10)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2694!1 String)
(declare-const var759 Int)
(define-const var2823 String (buf/-10557480 (cast-from-var2412-to-var1321 var80))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3217 String (tab3/-788090934 var80)) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3> 
(assert true)
;(assert (append/1560614132 var2823 var3217)) ; Statement: virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var2823!1 String)
(assert (str.prefixof var2823 var2823!1))
(assert true)
(define-const var3241 String (getOwner/-436492159 var584)) ; Statement: $r21 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getOwner()>() 
(assert true)
;(assert (appendDescriptor/199836990 var80 0 var3241)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, $r21) 

(declare-const var80!1 var2412)
(declare-const var3211 Int)
(declare-const var3241!1 String)
(define-const var294 String (buf/-10557480 (cast-from-var2412-to-var1321 var80!1))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var294 46)) ; Statement: virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 

(declare-const var294!1 String)
(declare-const var2951 Int)
(define-const var2624 String (buf/-10557480 (cast-from-var2412-to-var1321 var80!1))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2328 String (getName/1931263323 var584)) ; Statement: $r24 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>() 
(assert true)
;(assert (append/1560614132 var2624 var2328)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var2624!1 String)
(assert (str.prefixof var2624 var2624!1))
 ; Statement: if z2 != 0 goto $r7 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getDesc()>() 
(assert (not (= (ite var3608 1 0) 0))) ; Cond: z2 != 0 
(assert true)
(define-const var2219 String (getDesc/1766159253 var584)) ; Statement: $r7 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getDesc()>() 
(assert true)
;(assert (appendDescriptor/199836990 var80!1 9 var2219)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(9, $r7) 

(declare-const var80!2 var2412)
(declare-const var993 Int)
(declare-const var2219!1 String)
 ; Statement: if z1 != 0 goto return 
(assert (not (= (ite var2810 1 0) 0))) ; Cond: z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/748741772=([jdk.internal.org.objectweb.asm.Handle], int), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2412-to-var1321=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), Int_toHexString/1865784998=([int], java.lang.String), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), tab3/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), getOwner/-436492159=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), getName/1931263323=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), getDesc/1766159253=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var2412=jdk.internal.org.objectweb.asm.util.Textifier, var80=r1, var2923=jdk.internal.org.objectweb.asm.Handle, var584=r0, var3617=i0, var1321=jdk.internal.org.objectweb.asm.util.Printer, var1571=$r2, var3797=$r4, var713=$r3, var399=$r5, var3229=z0, var3608=z2, var2810=z1, var2694=$r18, var759=10, var2823=$r19, var3217=$r20, var3241=$r21, var3211=0, var294=$r22, var2951=46, var2624=$r23, var2328=$r24, var2219=$r7, var993=9}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2412, r1=var80, jdk.internal.org.objectweb.asm.Handle=var2923, r0=var584, i0=var3617, jdk.internal.org.objectweb.asm.util.Printer=var1321, $r2=var1571, $r4=var3797, $r3=var713, $r5=var399, z0=var3229, z2=var3608, z1=var2810, $r18=var2694, 10=var759, $r19=var2823, $r20=var3217, $r21=var3241, 0=var3211, $r22=var294, 46=var2951, $r23=var2624, $r24=var2328, $r7=var2219, 9=var993}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r0 := @parameter0: jdk.internal.org.objectweb.asm.Handle;	i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: int getTag()>();	$r2 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// handle kind 0x");	$r3 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : ");	z0 = 0;	z2 = 0;	z1 = 0;	tableswitch(i0) {     case 1: goto $r17 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 2: goto $r16 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 3: goto $r15 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 4: goto $r14 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 5: goto $r13 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 6: goto $r12 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 7: goto $r11 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 8: goto $r10 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 9: goto $r6 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     default: goto $r18 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>; };	$r18 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r19 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r20 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3>;	virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r21 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getOwner()>();	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, $r21);	$r22 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r23 = r1.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r24 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getName()>();	virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	if z2 != 0 goto $r7 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getDesc()>();	$r7 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String getDesc()>();	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(9, $r7);	if z1 != 0 goto return;	return
;block_num 4