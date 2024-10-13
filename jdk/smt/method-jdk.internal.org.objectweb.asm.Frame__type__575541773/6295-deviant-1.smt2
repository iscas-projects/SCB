(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3241 0)
(declare-sort var1846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addType/2103704251 (var3241 String) Int)
(declare-const null-var3241 var3241)
(declare-const null-String String)
(declare-const var2097 var3241) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var2097 null-var3241)))
(declare-const var3309 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3309 null-String)))
(assert (and true (and (> (str.len var3309) 0) (<= 0 0))))
(define-const var2436 Int (charAt/698050440 var3309 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2576 Int (cast-from-Int-to-Int var2436)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (= var2576 40))) ; Cond: $i21 != 40 
(define-const var1783 Int 0) ; Statement: $i15 = 0 
(assert true) ; Non Conditional
(define-const var1170 Int var1783) ; Statement: i1 = $i15 
(assert (not (and true (and (> (str.len var3309) var1783) (<= 0 var1783)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addType/2103704251=([jdk.internal.org.objectweb.asm.ClassWriter, java.lang.String], int)}
; {var3241=jdk.internal.org.objectweb.asm.ClassWriter, var2097=r1, var3309=r0, var1846=null_type, var2436=$c0, var2576=$i21, var1783=$i15, var1170=i1, var426=$c2, var2408=$i22, var1300=$i5, var1613=$i3, var2582=$i4, var1685=r2, var2518=$i6, var2271=$i7}
; {jdk.internal.org.objectweb.asm.ClassWriter=var3241, r1=var2097, r0=var3309, null_type=var1846, $c0=var2436, $i21=var2576, $i15=var1783, i1=var1170, $c2=var426, $i22=var2408, $i5=var1300, $i3=var1613, $i4=var2582, r2=var1685, $i6=var2518, $i7=var2271}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i15 = 0;	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	$i5 = $i15 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 - 1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i5, $i4);	$i6 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.ClassWriter: int addType(java.lang.String)>(r2);	$i7 = 24117248 | $i6;	return $i7
;block_num 4