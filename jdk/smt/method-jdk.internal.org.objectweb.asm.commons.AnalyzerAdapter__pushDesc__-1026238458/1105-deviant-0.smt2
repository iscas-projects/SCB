(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1907 0)
(declare-sort var2253 0)
(declare-sort var438 0)
(declare-sort var1068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun push/-694766459 (var1907 var1068) void)
(declare-fun cast-from-Int-to-var1068 (Int) var1068)
(declare-const null-var1907 var1907)
(declare-const null-String String)
(declare-const var438-INTEGER Int)
(declare-const var2110 var1907) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var2110 null-var1907)))
(declare-const var1208 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1208 null-String)))
(assert (not (and true (and (> (str.len var1208) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), push/-694766459=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, java.lang.Object], void), cast-from-Int-to-var1068=([java.lang.Integer], java.lang.Object)}
; {var1907=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var2110=r1, var1208=r0, var2253=null_type, var2641=$c0, var665=$i10, var3638=$i9, var3213=$c1, var2232=$i11, var438=jdk.internal.org.objectweb.asm.Opcodes, var3017=$r8, var1068=java.lang.Object}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var1907, r1=var2110, r0=var1208, null_type=var2253, $c0=var2641, $i10=var665, $i9=var3638, $c1=var3213, $i11=var2232, jdk.internal.org.objectweb.asm.Opcodes=var438, $r8=var3017, java.lang.Object=var1068}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i9 = 0;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	$r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r8);	return
;block_num 4