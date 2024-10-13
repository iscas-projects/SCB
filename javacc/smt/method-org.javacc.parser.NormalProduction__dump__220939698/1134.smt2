(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3292 0)
(declare-sort var3298 0)
(declare-sort var2362 0)
(declare-sort var451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dumpPrefix/1891816110 (var3292 Int) String)
(declare-fun var2362_identityHashCode/1096208673 (var451) Int)
(declare-fun cast-from-var3292-to-var451 (var3292) var451)
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getSimpleName/914355158 (var3292) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLhs/-759107248 (var3292) String)
(declare-fun var3298_contains/1636690605 (var3298 var451) Bool)
(declare-const null-var3292 var3292)
(declare-const null-Int Int)
(declare-const null-var3298 var3298)
(declare-const var1393 var3292) ; Statement: r0 := @this: org.javacc.parser.NormalProduction 
(assert (not (= var1393 null-var3292)))
(declare-const var1575 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1575 null-Int)))
(declare-const var1485 var3298) ; Statement: r9 := @parameter1: java.util.Set 
(assert (not (= var1485 null-var3298)))
(assert true)
(define-const var1963 String (dumpPrefix/1891816110 var1393 var1575)) ; Statement: $r1 = virtualinvoke r0.<org.javacc.parser.NormalProduction: java.lang.StringBuffer dumpPrefix(int)>(i0) 
(define-const var3624 Int (var2362_identityHashCode/1096208673 (cast-from-var3292-to-var451 var1393))) ; Statement: $i1 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var1699 String (append/1845021834 var1963 var3624)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var2651 String (append/1183289509 var1699 32)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var1365 String (getSimpleName/914355158 var1393)) ; Statement: $r3 = virtualinvoke r0.<org.javacc.parser.NormalProduction: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2801 String (append/1560614132 var2651 var1365)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2651!1 String)
(assert (str.prefixof var2651 var2651!1))
(assert true)
(define-const var912 String (append/1183289509 var2801 32)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var1487 String (getLhs/-759107248 var1393)) ; Statement: $r6 = virtualinvoke r0.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var654 String (append/1560614132 var912 var1487)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var912!1 String)
(assert (str.prefixof var912 var912!1))
(define-const var3060 Bool (var3298_contains/1636690605 var1485 (cast-from-var3292-to-var451 var1393))) ; Statement: $z0 = interfaceinvoke r9.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return r8 
(assert (not (= (ite var3060 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {dumpPrefix/1891816110=([org.javacc.parser.NormalProduction, int], java.lang.StringBuffer), var2362_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var3292-to-var451=([org.javacc.parser.NormalProduction], java.lang.Object), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getSimpleName/914355158=([org.javacc.parser.NormalProduction], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLhs/-759107248=([org.javacc.parser.NormalProduction], java.lang.String), var3298_contains/1636690605=([java.util.Set, java.lang.Object], boolean)}
; {var3292=org.javacc.parser.NormalProduction, var1393=r0, var1575=i0, var3298=java.util.Set, var1485=r9, var1963=$r1, var2362=java.lang.System, var451=java.lang.Object, var3624=$i1, var1699=$r2, var2651=$r4, var1365=$r3, var2801=$r5, var912=$r7, var1487=$r6, var654=r8, var3060=$z0}
; {org.javacc.parser.NormalProduction=var3292, r0=var1393, i0=var1575, java.util.Set=var3298, r9=var1485, $r1=var1963, java.lang.System=var2362, java.lang.Object=var451, $i1=var3624, $r2=var1699, $r4=var2651, $r3=var1365, $r5=var2801, $r7=var912, $r6=var1487, r8=var654, $z0=var3060}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: org.javacc.parser.NormalProduction;	i0 := @parameter0: int;	r9 := @parameter1: java.util.Set;	$r1 = virtualinvoke r0.<org.javacc.parser.NormalProduction: java.lang.StringBuffer dumpPrefix(int)>(i0);	$i1 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r3 = virtualinvoke r0.<org.javacc.parser.NormalProduction: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r6 = virtualinvoke r0.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>();	r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$z0 = interfaceinvoke r9.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z0 != 0 goto return r8;	return r8
;block_num 2