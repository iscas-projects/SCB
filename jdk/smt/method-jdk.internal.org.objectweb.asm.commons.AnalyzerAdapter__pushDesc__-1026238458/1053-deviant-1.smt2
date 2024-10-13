(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2202 0)
(declare-sort var2763 0)
(declare-sort var3187 0)
(declare-sort var1016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun push/-694766459 (var2202 var1016) void)
(declare-fun cast-from-Int-to-var1016 (Int) var1016)
(declare-const null-var2202 var2202)
(declare-const null-String String)
(declare-const var3187-FLOAT Int)
(declare-const var3228 var2202) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var3228 null-var2202)))
(declare-const var2226 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2226 null-String)))
(assert (and true (and (> (str.len var2226) 0) (<= 0 0))))
(define-const var3403 Int (charAt/698050440 var2226 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3272 Int (cast-from-Int-to-Int var3403)) ; Statement: $i10 = (int) $c0 
 ; Statement: if $i10 != 40 goto $i9 = 0 
(assert (not (not (= var3272 40)))) ; Negate: Cond: $i10 != 40  
(assert true)
(define-const var733 Int (indexOf/-1037706067 var2226 41)) ; Statement: $i8 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var2960 Int (+ var733 1)) ; Statement: $i9 = $i8 + 1 
 ; Statement: goto [?= $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9)] 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var2226) var2960) (<= 0 var2960)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), push/-694766459=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, java.lang.Object], void), cast-from-Int-to-var1016=([java.lang.Integer], java.lang.Object)}
; {var2202=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var3228=r1, var2226=r0, var2763=null_type, var3403=$c0, var3272=$i10, var733=$i8, var2960=$i9, var565=$c1, var139=$i11, var3187=jdk.internal.org.objectweb.asm.Opcodes, var2816=$r5, var1016=java.lang.Object}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var2202, r1=var3228, r0=var2226, null_type=var2763, $c0=var3403, $i10=var3272, $i8=var733, $i9=var2960, $c1=var565, $i11=var139, jdk.internal.org.objectweb.asm.Opcodes=var3187, $r5=var2816, java.lang.Object=var1016}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i8 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i9 = $i8 + 1;	goto [?= $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9)];	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	$r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r5);	return
;block_num 4