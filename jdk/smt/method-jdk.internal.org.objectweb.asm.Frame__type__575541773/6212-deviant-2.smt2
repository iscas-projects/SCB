(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3221 0)
(declare-sort var2121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addType/2103704251 (var3221 String) Int)
(declare-const null-var3221 var3221)
(declare-const null-String String)
(declare-const var1563 var3221) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var1563 null-var3221)))
(declare-const var3542 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3542 null-String)))
(assert (and true (and (> (str.len var3542) 0) (<= 0 0))))
(define-const var3006 Int (charAt/698050440 var3542 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3480 Int (cast-from-Int-to-Int var3006)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 40 goto $i15 = 0 
(assert (not (not (= var3480 40)))) ; Negate: Cond: $i21 != 40  
(assert true)
(define-const var92 Int (indexOf/-1037706067 var3542 41)) ; Statement: $i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var3386 Int (+ var92 1)) ; Statement: $i15 = $i14 + 1 
 ; Statement: goto [?= i1 = $i15] 
(assert true) ; Non Conditional
(define-const var2083 Int var3386) ; Statement: i1 = $i15 
(assert (and true (and (> (str.len var3542) var3386) (<= 0 var3386))))
(define-const var2234 Int (charAt/698050440 var3542 var3386)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15) 
(define-const var1150 Int (cast-from-Int-to-Int var2234)) ; Statement: $i22 = (int) $c2 
 ; Statement: tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; } 
(assert (and (= var1150 76) (and (not (= var1150 75)) (and (not (= var1150 74)) (and (not (= var1150 73)) (and (not (= var1150 72)) (and (not (= var1150 71)) (and (not (= var1150 70)) (and (not (= var1150 69)) (and (not (= var1150 68)) (and (not (= var1150 67)) (and (not (= var1150 66)) true)))))))))))) ; Intersect: Cond: $i22 == 76  and Intersect: Negate: Cond: $i22 == 75   and Intersect: Negate: Cond: $i22 == 74   and Intersect: Negate: Cond: $i22 == 73   and Intersect: Negate: Cond: $i22 == 72   and Intersect: Negate: Cond: $i22 == 71   and Intersect: Negate: Cond: $i22 == 70   and Intersect: Negate: Cond: $i22 == 69   and Intersect: Negate: Cond: $i22 == 68   and Intersect: Negate: Cond: $i22 == 67   and Intersect: Negate: Cond: $i22 == 66   and Non Conditional           
(define-const var2443 Int (+ var3386 1)) ; Statement: $i5 = $i15 + 1 
(assert true)
(define-const var3217 Int (length/-134980193 var3542)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3088 Int (- var3217 1)) ; Statement: $i4 = $i3 - 1 
(assert (not (and true (and (>= var2443 0) (>= (str.len var3542) var3088) (>= var3088 var2443)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addType/2103704251=([jdk.internal.org.objectweb.asm.ClassWriter, java.lang.String], int)}
; {var3221=jdk.internal.org.objectweb.asm.ClassWriter, var1563=r1, var3542=r0, var2121=null_type, var3006=$c0, var3480=$i21, var92=$i14, var3386=$i15, var2083=i1, var2234=$c2, var1150=$i22, var2443=$i5, var3217=$i3, var3088=$i4, var1051=r2, var3373=$i6, var3882=$i7}
; {jdk.internal.org.objectweb.asm.ClassWriter=var3221, r1=var1563, r0=var3542, null_type=var2121, $c0=var3006, $i21=var3480, $i14=var92, $i15=var3386, i1=var2083, $c2=var2234, $i22=var1150, $i5=var2443, $i3=var3217, $i4=var3088, r2=var1051, $i6=var3373, $i7=var3882}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 40 goto $i15 = 0;	$i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i15 = $i14 + 1;	goto [?= i1 = $i15];	i1 = $i15;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i15);	$i22 = (int) $c2;	tableswitch($i22) {     case 66: goto return 16777217;     case 67: goto return 16777217;     case 68: goto return 16777219;     case 69: goto i16 = $i15 + 1;     case 70: goto return 16777218;     case 71: goto i16 = $i15 + 1;     case 72: goto i16 = $i15 + 1;     case 73: goto return 16777217;     case 74: goto return 16777220;     case 75: goto i16 = $i15 + 1;     case 76: goto $i5 = $i15 + 1;     case 77: goto i16 = $i15 + 1;     case 78: goto i16 = $i15 + 1;     case 79: goto i16 = $i15 + 1;     case 80: goto i16 = $i15 + 1;     case 81: goto i16 = $i15 + 1;     case 82: goto i16 = $i15 + 1;     case 83: goto return 16777217;     case 84: goto i16 = $i15 + 1;     case 85: goto i16 = $i15 + 1;     case 86: goto return 0;     case 87: goto i16 = $i15 + 1;     case 88: goto i16 = $i15 + 1;     case 89: goto i16 = $i15 + 1;     case 90: goto return 16777217;     default: goto i16 = $i15 + 1; };	$i5 = $i15 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 - 1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i5, $i4);	$i6 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.ClassWriter: int addType(java.lang.String)>(r2);	$i7 = 24117248 | $i6;	return $i7
;block_num 4