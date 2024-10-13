(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1310 0)
(declare-sort var2907 0)
(declare-sort var834 0)
(declare-sort var1473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun push/-694766459 (var1310 var1473) void)
(declare-fun cast-from-Int-to-var1473 (Int) var1473)
(declare-const null-var1310 var1310)
(declare-const null-String String)
(declare-const var834-FLOAT Int)
(declare-const var351 var1310) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var351 null-var1310)))
(declare-const var3574 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3574 null-String)))
(assert (not (and true (and (> (str.len var3574) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), push/-694766459=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, java.lang.Object], void), cast-from-Int-to-var1473=([java.lang.Integer], java.lang.Object)}
; {var1310=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var351=r1, var3574=r0, var2907=null_type, var1084=$c0, var667=$i10, var264=$i9, var2521=$c1, var374=$i11, var834=jdk.internal.org.objectweb.asm.Opcodes, var1333=$r5, var1473=java.lang.Object}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var1310, r1=var351, r0=var3574, null_type=var2907, $c0=var1084, $i10=var667, $i9=var264, $c1=var2521, $i11=var374, jdk.internal.org.objectweb.asm.Opcodes=var834, $r5=var1333, java.lang.Object=var1473}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i9 = 0;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	$r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r5);	return
;block_num 4