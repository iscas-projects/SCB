(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2708 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun visitBaseType/-615989239 (var736 Int) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var736 var736)
(declare-const var3362 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3362 null-String)))
(declare-const var2549 Int) ; Statement: i9 := @parameter1: int 
(assert (not (= var2549 null-Int)))
(declare-const var2412 var736) ; Statement: r1 := @parameter2: jdk.internal.org.objectweb.asm.signature.SignatureVisitor 
(assert (not (= var2412 null-var736)))
(define-const var3382 Int (+ var2549 1)) ; Statement: i10 = i9 + 1 
(assert (not (and true (and (> (str.len var3362) var2549) (<= 0 var2549)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), visitBaseType/-615989239=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, char], void)}
; {var3362=r0, var2708=null_type, var2549=i9, var736=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var2412=r1, var3382=i10, var561=$c0, var2186=$i13}
; {r0=var3362, null_type=var2708, i9=var2549, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var736, r1=var2412, i10=var3382, $c0=var561, $i13=var2186}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i9 := @parameter1: int;	r1 := @parameter2: jdk.internal.org.objectweb.asm.signature.SignatureVisitor;	i10 = i9 + 1;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i9);	$i13 = (int) $c0;	tableswitch($i13) {     case 66: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 67: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 68: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 69: goto i11 = i10;     case 70: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 71: goto i11 = i10;     case 72: goto i11 = i10;     case 73: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 74: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 75: goto i11 = i10;     case 76: goto i11 = i10;     case 77: goto i11 = i10;     case 78: goto i11 = i10;     case 79: goto i11 = i10;     case 80: goto i11 = i10;     case 81: goto i11 = i10;     case 82: goto i11 = i10;     case 83: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 84: goto i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10);     case 85: goto i11 = i10;     case 86: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 87: goto i11 = i10;     case 88: goto i11 = i10;     case 89: goto i11 = i10;     case 90: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 91: goto $r2 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitArrayType()>();     default: goto i11 = i10; };	virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);	return i10
;block_num 2