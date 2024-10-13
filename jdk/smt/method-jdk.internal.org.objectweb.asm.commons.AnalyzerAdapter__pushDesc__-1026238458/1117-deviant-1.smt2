(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2390 0)
(declare-sort var2052 0)
(declare-sort var3482 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun push/-694766459 (var2390 var3972) void)
(declare-fun cast-from-Int-to-var3972 (Int) var3972)
(declare-const null-var2390 var2390)
(declare-const null-String String)
(declare-const var3482-DOUBLE Int)
(declare-const var3482-TOP Int)
(declare-const var1779 var2390) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var1779 null-var2390)))
(declare-const var2425 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2425 null-String)))
(assert (and true (and (> (str.len var2425) 0) (<= 0 0))))
(define-const var2700 Int (charAt/698050440 var2425 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3939 Int (cast-from-Int-to-Int var2700)) ; Statement: $i10 = (int) $c0 
 ; Statement: if $i10 != 40 goto $i9 = 0 
(assert (not (= var3939 40))) ; Cond: $i10 != 40 
(define-const var1366 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var2425) var1366) (<= 0 var1366)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), push/-694766459=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, java.lang.Object], void), cast-from-Int-to-var3972=([java.lang.Integer], java.lang.Object)}
; {var2390=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var1779=r1, var2425=r0, var2052=null_type, var2700=$c0, var3939=$i10, var1366=$i9, var2551=$c1, var2283=$i11, var3482=jdk.internal.org.objectweb.asm.Opcodes, var3397=$r6, var3972=java.lang.Object, var2518=$r7}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var2390, r1=var1779, r0=var2425, null_type=var2052, $c0=var2700, $i10=var3939, $i9=var1366, $c1=var2551, $i11=var2283, jdk.internal.org.objectweb.asm.Opcodes=var3482, $r6=var3397, java.lang.Object=var3972, $r7=var2518}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i9 = 0;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	$r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r6);	$r7 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer TOP>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r7);	return
;block_num 4