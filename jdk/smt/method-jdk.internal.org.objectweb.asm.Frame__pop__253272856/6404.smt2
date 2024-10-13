(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3270 0)
(declare-sort var1720 0)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2883_getArgumentsAndReturnSizes/1924454840 (String) Int)
(declare-fun pop/-570092570 (var3270 Int) void)
(declare-const null-var3270 var3270)
(declare-const null-String String)
(declare-const var1835 var3270) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.Frame 
(assert (not (= var1835 null-var3270)))
(declare-const var2000 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2000 null-String)))
(assert (and true (and (> (str.len var2000) 0) (<= 0 0))))
(define-const var1547 Int (charAt/698050440 var2000 0)) ; Statement: c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var521 Int (cast-from-Int-to-Int var1547)) ; Statement: $i4 = (int) c0 
 ; Statement: if $i4 != 40 goto $i5 = (int) c0 
(assert (not (not (= var521 40)))) ; Negate: Cond: $i4 != 40  
(define-const var3474 Int (var2883_getArgumentsAndReturnSizes/1924454840 var2000)) ; Statement: $i1 = staticinvoke <jdk.internal.org.objectweb.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r0) 
(define-const var1630 Int (div var3474 (to_int (^ 2 2)))) ; Statement: $i2 = $i1 >> 2 
(define-const var1217 Int (- var1630 1)) ; Statement: $i3 = $i2 - 1 
(assert true)
;(assert (pop/-570092570 var1835 var1217)) ; Statement: specialinvoke r1.<jdk.internal.org.objectweb.asm.Frame: void pop(int)>($i3) 

(declare-const var1835!1 var3270)
(declare-const var1217!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2883_getArgumentsAndReturnSizes/1924454840=([java.lang.String], int), pop/-570092570=([jdk.internal.org.objectweb.asm.Frame, int], void)}
; {var3270=jdk.internal.org.objectweb.asm.Frame, var1835=r1, var2000=r0, var1720=null_type, var1547=c0, var521=$i4, var2883=jdk.internal.org.objectweb.asm.Type, var3474=$i1, var1630=$i2, var1217=$i3}
; {jdk.internal.org.objectweb.asm.Frame=var3270, r1=var1835, r0=var2000, null_type=var1720, c0=var1547, $i4=var521, jdk.internal.org.objectweb.asm.Type=var2883, $i1=var3474, $i2=var1630, $i3=var1217}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.Frame;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i4 = (int) c0;	if $i4 != 40 goto $i5 = (int) c0;	$i1 = staticinvoke <jdk.internal.org.objectweb.asm.Type: int getArgumentsAndReturnSizes(java.lang.String)>(r0);	$i2 = $i1 >> 2;	$i3 = $i2 - 1;	specialinvoke r1.<jdk.internal.org.objectweb.asm.Frame: void pop(int)>($i3);	goto [?= return];	return
;block_num 3