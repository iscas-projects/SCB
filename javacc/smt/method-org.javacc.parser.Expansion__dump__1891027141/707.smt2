(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2924 0)
(declare-sort var716 0)
(declare-sort var588 0)
(declare-sort var1972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dumpPrefix/-1981802303 (var2924 Int) String)
(declare-fun var588_identityHashCode/1096208673 (var1972) Int)
(declare-fun cast-from-var2924-to-var1972 (var2924) var1972)
(declare-fun append/1845021834 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/675546153 (var2924) String)
(declare-const null-var2924 var2924)
(declare-const null-Int Int)
(declare-const null-var716 var716)
(declare-const var3927 var2924) ; Statement: r0 := @this: org.javacc.parser.Expansion 
(assert (not (= var3927 null-var2924)))
(declare-const var2747 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2747 null-Int)))
(declare-const var3026 var716) ; Statement: r6 := @parameter1: java.util.Set 
(assert (not (= var3026 null-var716)))
(assert true)
(define-const var795 String (dumpPrefix/-1981802303 var3927 var2747)) ; Statement: $r1 = virtualinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dumpPrefix(int)>(i0) 
(define-const var2822 Int (var588_identityHashCode/1096208673 (cast-from-var2924-to-var1972 var3927))) ; Statement: $i1 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var3712 String (append/1845021834 var795 var2822)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var1942 String (append/1560614132 var3712 " ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3712!1 String)
(assert (str.prefixof var3712 var3712!1))
(assert true)
(define-const var1145 String (getSimpleName/675546153 var3927)) ; Statement: $r3 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2414 String (append/1560614132 var1942 var1145)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1942!1 String)
(assert (str.prefixof var1942 var1942!1))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {dumpPrefix/-1981802303=([org.javacc.parser.Expansion, int], java.lang.StringBuffer), var588_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var2924-to-var1972=([org.javacc.parser.Expansion], java.lang.Object), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getSimpleName/675546153=([org.javacc.parser.Expansion], java.lang.String)}
; {var2924=org.javacc.parser.Expansion, var3927=r0, var2747=i0, var716=java.util.Set, var3026=r6, var795=$r1, var588=java.lang.System, var1972=java.lang.Object, var2822=$i1, var3712=$r2, var1942=$r4, var1145=$r3, var2414=r5}
; {org.javacc.parser.Expansion=var2924, r0=var3927, i0=var2747, java.util.Set=var716, r6=var3026, $r1=var795, java.lang.System=var588, java.lang.Object=var1972, $i1=var2822, $r2=var3712, $r4=var1942, $r3=var1145, r5=var2414}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: org.javacc.parser.Expansion;	i0 := @parameter0: int;	r6 := @parameter1: java.util.Set;	$r1 = virtualinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dumpPrefix(int)>(i0);	$i1 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r3 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.String getSimpleName()>();	r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return r5
;block_num 1