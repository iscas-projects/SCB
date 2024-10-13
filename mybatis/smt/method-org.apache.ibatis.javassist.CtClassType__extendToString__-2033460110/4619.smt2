(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var198 0)
(declare-sort var539 0)
(declare-sort var1324 0)
(declare-sort var489 0)
(declare-sort var1674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun wasChanged/1891348345 (var1890) Bool)
(declare-fun wasFrozen/1891348345 (var1890) Bool)
(declare-fun wasPruned/1891348345 (var1890) Bool)
(declare-fun getModifiers/832747811 (var1890) Int)
(declare-fun var198_toString/1429459522 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var539) String)
(declare-fun cast-from-var1890-to-var539 (var1890) var539)
(declare-fun getMembers/1401795886 (var1890) var489)
(declare-fun fieldHead/-1509570755 (var489) var1674)
(declare-fun lastField/-787014413 (var489) var1674)
(declare-fun exToString/-1853674288 (var1890 String String var1674 var1674) void)
(declare-fun consHead/-513361486 (var489) var1674)
(declare-fun lastCons/401832892 (var489) var1674)
(declare-fun methodHead/771997826 (var489) var1674)
(declare-fun lastMethod/-746115060 (var489) var1674)
(declare-const null-var1890 var1890)
(declare-const null-String String)
(declare-const null-var1324 var1324)
(declare-const var371 var1890) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var371 null-var1890)))
(declare-const var3538 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3538 null-String)))
(define-const var1027 Bool (wasChanged/1891348345 var371)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasChanged> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasFrozen> 
(assert (= (ite var1027 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2530 Bool (wasFrozen/1891348345 var371)) ; Statement: $z1 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasFrozen> 
 ; Statement: if $z1 == 0 goto $z2 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned> 
(assert (= (ite var2530 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2810 Bool (wasPruned/1891348345 var371)) ; Statement: $z2 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned> 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: int getModifiers()>() 
(assert (= (ite var2810 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2380 Int (getModifiers/832747811 var371)) ; Statement: $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: int getModifiers()>() 
(define-const var3786 String (var198_toString/1429459522 var2380)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.javassist.Modifier: java.lang.String toString(int)>($i0) 
(assert true)
;(assert (append/672562846 var3538 var3786)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3538!1 String)
(assert (= var3538!1 (str.++ var3538 var3786)))
(assert true)
;(assert (append/672562846 var3538!1 " class ")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" class ") 
(declare-const var3538!2 String)
(assert (= var3538!2 (str.++ var3538!1 " class ")))
(assert true)
(define-const var449 String (getName/1611768686 (cast-from-var1890-to-var539 var371))) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3538!2 var449)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3538!3 String)
(assert (= var3538!3 (str.++ var3538!2 var449)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1759 var1324) ; Statement: $r17 := @caughtexception 
(assert (not (= var1759 null-var1324)))
(assert true)
;(assert (append/672562846 var3538!3 " extends ??")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" extends ??") 
(declare-const var3538!4 String)
(assert (= var3538!4 (str.++ var3538!3 " extends ??")))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3404 var1324) ; Statement: $r15 := @caughtexception 
(assert (not (= var3404 null-var1324)))
(assert true)
;(assert (append/672562846 var3538!4 " extends ??")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" extends ??") 
(declare-const var3538!5 String)
(assert (= var3538!5 (str.++ var3538!4 " extends ??")))
(assert true) ; Non Conditional
(assert true)
(define-const var1629 var489 (getMembers/1401795886 var371)) ; Statement: $r16 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMember$Cache getMembers()>() 
(assert true)
(define-const var408 var1674 (fieldHead/-1509570755 var1629)) ; Statement: $r5 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember fieldHead()>() 
(assert true)
(define-const var1041 var1674 (lastField/-787014413 var1629)) ; Statement: $r4 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastField()>() 
(assert true)
;(assert (exToString/-1853674288 var371 var3538!5 " fields=" var408 var1041)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void exToString(java.lang.StringBuilder,java.lang.String,org.apache.ibatis.javassist.CtMember,org.apache.ibatis.javassist.CtMember)>(r1, " fields=", $r5, $r4) 

(declare-const var371!1 var1890)
(declare-const var3538!6 String)
(declare-const var3486 String)
(declare-const var408!1 var1674)
(declare-const var1041!1 var1674)
(assert true)
(define-const var3574 var1674 (consHead/-513361486 var1629)) ; Statement: $r7 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember consHead()>() 
(assert true)
(define-const var658 var1674 (lastCons/401832892 var1629)) ; Statement: $r6 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastCons()>() 
(assert true)
;(assert (exToString/-1853674288 var371!1 var3538!6 " constructors=" var3574 var658)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void exToString(java.lang.StringBuilder,java.lang.String,org.apache.ibatis.javassist.CtMember,org.apache.ibatis.javassist.CtMember)>(r1, " constructors=", $r7, $r6) 

(declare-const var371!2 var1890)
(declare-const var3538!7 String)
(declare-const var3154 String)
(declare-const var3574!1 var1674)
(declare-const var658!1 var1674)
(assert true)
(define-const var3594 var1674 (methodHead/771997826 var1629)) ; Statement: $r9 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember methodHead()>() 
(assert true)
(define-const var3615 var1674 (lastMethod/-746115060 var1629)) ; Statement: $r8 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastMethod()>() 
(assert true)
;(assert (exToString/-1853674288 var371!2 var3538!7 " methods=" var3594 var3615)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void exToString(java.lang.StringBuilder,java.lang.String,org.apache.ibatis.javassist.CtMember,org.apache.ibatis.javassist.CtMember)>(r1, " methods=", $r9, $r8) 

(declare-const var371!3 var1890)
(declare-const var3538!8 String)
(declare-const var2412 String)
(declare-const var3594!1 var1674)
(declare-const var3615!1 var1674)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {wasChanged/1891348345=([org.apache.ibatis.javassist.CtClassType], boolean), wasFrozen/1891348345=([org.apache.ibatis.javassist.CtClassType], boolean), wasPruned/1891348345=([org.apache.ibatis.javassist.CtClassType], boolean), getModifiers/832747811=([org.apache.ibatis.javassist.CtClassType], int), var198_toString/1429459522=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1890-to-var539=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), getMembers/1401795886=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtMember$Cache), fieldHead/-1509570755=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), lastField/-787014413=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), exToString/-1853674288=([org.apache.ibatis.javassist.CtClassType, java.lang.StringBuilder, java.lang.String, org.apache.ibatis.javassist.CtMember, org.apache.ibatis.javassist.CtMember], void), consHead/-513361486=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), lastCons/401832892=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), methodHead/771997826=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), lastMethod/-746115060=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember)}
; {var1890=org.apache.ibatis.javassist.CtClassType, var371=r0, var3538=r1, var1027=$z0, var2530=$z1, var2810=$z2, var2380=$i0, var198=org.apache.ibatis.javassist.Modifier, var3786=$r2, var539=org.apache.ibatis.javassist.CtClass, var449=$r3, var1324=org.apache.ibatis.javassist.NotFoundException, var1759=$r17, var3404=$r15, var489=org.apache.ibatis.javassist.CtMember$Cache, var1629=$r16, var1674=org.apache.ibatis.javassist.CtMember, var408=$r5, var1041=$r4, var3486=" fields=", var3574=$r7, var658=$r6, var3154=" constructors=", var3594=$r9, var3615=$r8, var2412=" methods="}
; {org.apache.ibatis.javassist.CtClassType=var1890, r0=var371, r1=var3538, $z0=var1027, $z1=var2530, $z2=var2810, $i0=var2380, org.apache.ibatis.javassist.Modifier=var198, $r2=var3786, org.apache.ibatis.javassist.CtClass=var539, $r3=var449, org.apache.ibatis.javassist.NotFoundException=var1324, $r17=var1759, $r15=var3404, org.apache.ibatis.javassist.CtMember$Cache=var489, $r16=var1629, org.apache.ibatis.javassist.CtMember=var1674, $r5=var408, $r4=var1041, " fields="=var3486, $r7=var3574, $r6=var658, " constructors="=var3154, $r9=var3594, $r8=var3615, " methods="=var2412}
;seq <org.apache.ibatis.javassist.Modifier: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r1 := @parameter0: java.lang.StringBuilder;	$z0 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasChanged>;	if $z0 == 0 goto $z1 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasFrozen>;	$z1 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasFrozen>;	if $z1 == 0 goto $z2 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned>;	$z2 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned>;	if $z2 == 0 goto $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: int getModifiers()>();	$i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: int getModifiers()>();	$r2 = staticinvoke <org.apache.ibatis.javassist.Modifier: java.lang.String toString(int)>($i0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" class ");	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r17 := @caughtexception;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" extends ??");	$r15 := @caughtexception;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" extends ??");	$r16 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMember$Cache getMembers()>();	$r5 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember fieldHead()>();	$r4 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastField()>();	specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void exToString(java.lang.StringBuilder,java.lang.String,org.apache.ibatis.javassist.CtMember,org.apache.ibatis.javassist.CtMember)>(r1, " fields=", $r5, $r4);	$r7 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember consHead()>();	$r6 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastCons()>();	specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void exToString(java.lang.StringBuilder,java.lang.String,org.apache.ibatis.javassist.CtMember,org.apache.ibatis.javassist.CtMember)>(r1, " constructors=", $r7, $r6);	$r9 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember methodHead()>();	$r8 = virtualinvoke $r16.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastMethod()>();	specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void exToString(java.lang.StringBuilder,java.lang.String,org.apache.ibatis.javassist.CtMember,org.apache.ibatis.javassist.CtMember)>(r1, " methods=", $r9, $r8);	return
;block_num 7