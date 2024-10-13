(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var238 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var513_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var513_checkClassTypeSignature/181611887 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2128 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2128 null-String)))
(define-const var157 Int 0) ; Statement: i2 = 0 
(define-const var3719 Int (var513_getChar/635386524 var2128 0)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0) 
(define-const var2186 Int (cast-from-Int-to-Int var3719)) ; Statement: $i5 = (int) $c0 
 ; Statement: if $i5 != 60 goto i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2) 
(assert (not (= var2186 60))) ; Cond: $i5 != 60 
(define-const var3070 Int (var513_checkClassTypeSignature/181611887 var2128 var157)) ; Statement: i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2) 
(assert true) ; Non Conditional
(define-const var2383 Int (var513_getChar/635386524 var2128 var3070)) ; Statement: $c4 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i3) 
(define-const var2634 Int (cast-from-Int-to-Int var2383)) ; Statement: $i6 = (int) $c4 
 ; Statement: if $i6 != 76 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2634 76))) ; Cond: $i6 != 76 
(assert true)
(define-const var2553 Int (length/-134980193 var2128)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 == $i1 goto return 
(assert (= var3070 var2553)) ; Cond: i3 == $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var513_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var513_checkClassTypeSignature/181611887=([java.lang.String, int], int), length/-134980193=([java.lang.String], int)}
; {var2128=r0, var238=null_type, var157=i2, var513=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var3719=$c0, var2186=$i5, var3070=i3, var2383=$c4, var2634=$i6, var2553=$i1}
; {r0=var2128, null_type=var238, i2=var157, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var513, $c0=var3719, $i5=var2186, i3=var3070, $c4=var2383, $i6=var2634, $i1=var2553}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0);	$i5 = (int) $c0;	if $i5 != 60 goto i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2);	i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2);	$c4 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i3);	$i6 = (int) $c4;	if $i6 != 76 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 == $i1 goto return;	return
;block_num 5