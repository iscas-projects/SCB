(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort var2251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3881 var3881)
(declare-const null-String String)
(declare-const var3251 var3881) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var3251 null-var3881)))
(declare-const var3358 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3358 null-String)))
(assert (and true (and (> (str.len var3358) 0) (<= 0 0))))
(define-const var3270 Int (charAt/698050440 var3358 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2167 Int (cast-from-Int-to-Int var3270)) ; Statement: $i10 = (int) $c0 
 ; Statement: if $i10 != 40 goto $i9 = 0 
(assert (not (= var2167 40))) ; Cond: $i10 != 40 
(define-const var1482 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var3358) var1482) (<= 0 var1482))))
(define-const var2121 Int (charAt/698050440 var3358 var1482)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9) 
(define-const var3318 Int (cast-from-Int-to-Int var2121)) ; Statement: $i11 = (int) $c1 
 ; Statement: tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; } 
(assert (and (= var3318 86) (and (not (= var3318 85)) (and (not (= var3318 84)) (and (not (= var3318 83)) (and (not (= var3318 82)) (and (not (= var3318 81)) (and (not (= var3318 80)) (and (not (= var3318 79)) (and (not (= var3318 78)) (and (not (= var3318 77)) (and (not (= var3318 76)) (and (not (= var3318 75)) (and (not (= var3318 74)) (and (not (= var3318 73)) (and (not (= var3318 72)) (and (not (= var3318 71)) (and (not (= var3318 70)) (and (not (= var3318 69)) (and (not (= var3318 68)) (and (not (= var3318 67)) (and (not (= var3318 66)) true)))))))))))))))))))))) ; Intersect: Cond: $i11 == 86  and Intersect: Negate: Cond: $i11 == 85   and Intersect: Negate: Cond: $i11 == 84   and Intersect: Negate: Cond: $i11 == 83   and Intersect: Negate: Cond: $i11 == 82   and Intersect: Negate: Cond: $i11 == 81   and Intersect: Negate: Cond: $i11 == 80   and Intersect: Negate: Cond: $i11 == 79   and Intersect: Negate: Cond: $i11 == 78   and Intersect: Negate: Cond: $i11 == 77   and Intersect: Negate: Cond: $i11 == 76   and Intersect: Negate: Cond: $i11 == 75   and Intersect: Negate: Cond: $i11 == 74   and Intersect: Negate: Cond: $i11 == 73   and Intersect: Negate: Cond: $i11 == 72   and Intersect: Negate: Cond: $i11 == 71   and Intersect: Negate: Cond: $i11 == 70   and Intersect: Negate: Cond: $i11 == 69   and Intersect: Negate: Cond: $i11 == 68   and Intersect: Negate: Cond: $i11 == 67   and Intersect: Negate: Cond: $i11 == 66   and Non Conditional                     
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3881=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var3251=r1, var3358=r0, var2251=null_type, var3270=$c0, var2167=$i10, var1482=$i9, var2121=$c1, var3318=$i11}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var3881, r1=var3251, r0=var3358, null_type=var2251, $c0=var3270, $i10=var2167, $i9=var1482, $c1=var2121, $i11=var3318}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i9 = 0;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	return
;block_num 4