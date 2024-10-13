(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2375 0)
(declare-sort var3700 0)
(declare-sort var3719 0)
(declare-sort var1538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun push/-694766459 (var2375 var1538) void)
(declare-fun cast-from-Int-to-var1538 (Int) var1538)
(declare-const null-var2375 var2375)
(declare-const null-String String)
(declare-const var3719-INTEGER Int)
(declare-const var399 var2375) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var399 null-var2375)))
(declare-const var757 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var757 null-String)))
(assert (not (and true (and (> (str.len var757) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), push/-694766459=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, java.lang.Object], void), cast-from-Int-to-var1538=([java.lang.Integer], java.lang.Object)}
; {var2375=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var399=r1, var757=r0, var3700=null_type, var1696=$c0, var756=$i10, var1043=$i8, var3080=$i9, var241=$c1, var2968=$i11, var3719=jdk.internal.org.objectweb.asm.Opcodes, var1944=$r8, var1538=java.lang.Object}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var2375, r1=var399, r0=var757, null_type=var3700, $c0=var1696, $i10=var756, $i8=var1043, $i9=var3080, $c1=var241, $i11=var2968, jdk.internal.org.objectweb.asm.Opcodes=var3719, $r8=var1944, java.lang.Object=var1538}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i10 = (int) $c0;	if $i10 != 40 goto $i9 = 0;	$i8 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i9 = $i8 + 1;	goto [?= $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9)];	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i9);	$i11 = (int) $c1;	tableswitch($i11) {     case 66: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 67: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 68: goto $r6 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer DOUBLE>;     case 69: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 70: goto $r5 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer FLOAT>;     case 71: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 72: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 73: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 74: goto $r3 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer LONG>;     case 75: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 76: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 77: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 78: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 79: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 80: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 81: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 82: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 83: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 84: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 85: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 86: goto return;     case 87: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 88: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 89: goto if $i9 != 0 goto $i5 = $i9 + 1;     case 90: goto $r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;     case 91: goto if $i9 != 0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();     default: goto if $i9 != 0 goto $i5 = $i9 + 1; };	$r8 = <jdk.internal.org.objectweb.asm.Opcodes: java.lang.Integer INTEGER>;	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void push(java.lang.Object)>($r8);	return
;block_num 4