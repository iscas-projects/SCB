(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2037 0)
(declare-sort var2660 0)
(declare-sort var954 0)
(declare-sort var2528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun push/-694766459 (var2037 var2528) void)
(declare-fun cast-from-Int-to-var2528 (Int) var2528)
(declare-const null-var2037 var2037)
(declare-const null-String String)
(declare-const var954-LONG Int)
(declare-const var954-TOP Int)
(declare-const var655 var2037) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var655 null-var2037)))
(declare-const var695 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var695 null-String)))
(assert (not (and true (and (> (str.len var695) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), push/-694766459=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, java.lang.Object], void), cast-from-Int-to-var2528=([java.lang.Integer], java.lang.Object)}
; {var2037=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var655=r1, var695=r0, var2660=null_type, var3159=$c0, var3548=$i10, var921=$i9, var2984=$c1, var2840=$i11, var954=jdk.internal.org.objectweb.asm.Opcodes, var1419=$r3, var2528=java.lang.Object, var726=$r4}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var2037, r1=var655, r0=var695, null_type=var2660, $c0=var3159, $i10=var3548, $i9=var921, $c1=var2984, $i11=var2840, jdk.internal.org.objectweb.asm.Opcodes=var954, $r3=var1419, java.lang.Object=var2528, $r4=var726}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i9 = 0;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	$r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r3);	$r4 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer TOP>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r4);	return
;block_num 4