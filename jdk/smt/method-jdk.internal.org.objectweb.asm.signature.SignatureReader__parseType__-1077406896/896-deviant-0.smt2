(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3203 0)
(declare-sort var1609 0)
(declare-sort var521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun visitArrayType/-563340117 (var1609) var1609)
(declare-fun var521_parseType/-1077406896 (String Int var1609) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1609 var1609)
(declare-const var3553 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3553 null-String)))
(declare-const var2414 Int) ; Statement: i9 := @parameter1: int 
(assert (not (= var2414 null-Int)))
(declare-const var530 var1609) ; Statement: r1 := @parameter2: jdk.internal.org.objectweb.asm.signature.SignatureVisitor 
(assert (not (= var530 null-var1609)))
(define-const var117 Int (+ var2414 1)) ; Statement: i10 = i9 + 1 
(assert (not (and true (and (> (str.len var3553) var2414) (<= 0 var2414)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), visitArrayType/-563340117=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), var521_parseType/-1077406896=([java.lang.String, int, jdk.internal.org.objectweb.asm.signature.SignatureVisitor], int)}
; {var3553=r0, var3203=null_type, var2414=i9, var1609=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var530=r1, var117=i10, var644=$c0, var3194=$i13, var275=$r2, var521=jdk.internal.org.objectweb.asm.signature.SignatureReader, var1087=$i1}
; {r0=var3553, null_type=var3203, i9=var2414, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var1609, r1=var530, i10=var117, $c0=var644, $i13=var3194, $r2=var275, jdk.internal.org.objectweb.asm.signature.SignatureReader=var521, $i1=var1087}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i9 := @parameter1: int;	r1 := @parameter2: jdk.internal.org.objectweb.asm.signature.SignatureVisitor;	i10 = i9 + 1;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i9);	$i13 = (int) $c0;	tableswitch($i13) {     case 66: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 67: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 68: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 69: goto i11 = i10;     case 70: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 71: goto i11 = i10;     case 72: goto i11 = i10;     case 73: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 74: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 75: goto i11 = i10;     case 76: goto i11 = i10;     case 77: goto i11 = i10;     case 78: goto i11 = i10;     case 79: goto i11 = i10;     case 80: goto i11 = i10;     case 81: goto i11 = i10;     case 82: goto i11 = i10;     case 83: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 84: goto i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10);     case 85: goto i11 = i10;     case 86: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 87: goto i11 = i10;     case 88: goto i11 = i10;     case 89: goto i11 = i10;     case 90: goto virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitBaseType(char)>($c0);     case 91: goto $r2 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitArrayType()>();     default: goto i11 = i10; };	$r2 = virtualinvoke r1.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitArrayType()>();	$i1 = staticinvoke <jdk.internal.org.objectweb.asm.signature.SignatureReader: int parseType(java.lang.String,int,jdk.internal.org.objectweb.asm.signature.SignatureVisitor)>(r0, i10, $r2);	return $i1
;block_num 2