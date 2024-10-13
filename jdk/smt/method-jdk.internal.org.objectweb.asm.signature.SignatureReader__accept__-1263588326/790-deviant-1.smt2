(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var341 0)
(declare-sort var2923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun signature/838287547 (var341) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun visitSuperclass/-1297122273 (var2923) var2923)
(declare-fun var341_parseType/-1077406896 (String Int var2923) Int)
(declare-const null-var341 var341)
(declare-const null-var2923 var2923)
(declare-const var1574 var341) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureReader 
(assert (not (= var1574 null-var341)))
(declare-const var2471 var2923) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.signature.SignatureVisitor 
(assert (not (= var2471 null-var2923)))
(define-const var3457 String (signature/838287547 var1574)) ; Statement: r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureReader: java.lang.String signature> 
(assert true)
(define-const var3389 Int (length/-134980193 var3457)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (and true (and (> (str.len var3457) 0) (<= 0 0))))
(define-const var2998 Int (charAt/698050440 var3457 0)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var3356 Int (cast-from-Int-to-Int var2998)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 60 goto i10 = 0 
(assert (not (= var3356 60))) ; Cond: $i16 != 60 
(define-const var2716 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var3457) var2716) (<= 0 var2716)))))
(check-sat)
(get-model)
(get-unsat-core)
; {signature/838287547=([jdk.internal.org.objectweb.asm.signature.SignatureReader], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), visitSuperclass/-1297122273=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), var341_parseType/-1077406896=([java.lang.String, int, jdk.internal.org.objectweb.asm.signature.SignatureVisitor], int)}
; {var341=jdk.internal.org.objectweb.asm.signature.SignatureReader, var1574=r0, var2923=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var2471=r2, var3457=r1, var3389=i0, var2998=$c1, var3356=$i16, var2716=i10, var337=$c2, var2131=$i22, var2588=$r3, var1291=i15}
; {jdk.internal.org.objectweb.asm.signature.SignatureReader=var341, r0=var1574, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var2923, r2=var2471, r1=var3457, i0=var3389, $c1=var2998, $i16=var3356, i10=var2716, $c2=var337, $i22=var2131, $r3=var2588, i15=var1291}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureReader;	r2 := @parameter0: jdk.internal.org.objectweb.asm.signature.SignatureVisitor;	r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureReader: java.lang.String signature>;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i16 = (int) $c1;	if $i16 != 60 goto i10 = 0;	i10 = 0;	$c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i10);	$i22 = (int) $c2;	if $i22 != 40 goto $r3 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitSuperclass()>();	$r3 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: jdk.internal.org.objectweb.asm.signature.SignatureVisitor visitSuperclass()>();	i15 = staticinvoke <jdk.internal.org.objectweb.asm.signature.SignatureReader: int parseType(java.lang.String,int,jdk.internal.org.objectweb.asm.signature.SignatureVisitor)>(r1, i10, $r3);	if i15 >= i0 goto return;	return
;block_num 6