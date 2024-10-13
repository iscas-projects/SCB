(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1677 0)
(declare-sort var630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var630_allocate/-1645520829 (Int) var630)
(declare-fun var1677_read/-94379306 (var1677 var630) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1677 var1677)
(declare-const var2539 var1677) ; Statement: r2 := @parameter0: java.lang.Readable 
(assert (not (= var2539 null-var1677)))
(define-const var3111 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3111)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3111!1 String)
(assert (= var3111!1 ""))
(define-const var1045 var630 (var630_allocate/-1645520829 4096)) ; Statement: r1 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer allocate(int)>(4096) 
(assert true) ; Non Conditional
(define-const var718 Int (var1677_read/-94379306 var2539 var1045)) ; Statement: $i0 = interfaceinvoke r2.<java.lang.Readable: int read(java.nio.CharBuffer)>(r1) 
(define-const var1673 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto virtualinvoke r1.<java.nio.CharBuffer: java.nio.Buffer flip()>() 
(assert (not (not (= var718 var1673)))) ; Negate: Cond: $i0 != $i2  
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var630_allocate/-1645520829=([int], java.nio.CharBuffer), var1677_read/-94379306=([java.lang.Readable, java.nio.CharBuffer], int), cast-from-Int-to-Int=([int], int)}
; {var1677=java.lang.Readable, var2539=r2, var3111=$r3, var630=java.nio.CharBuffer, var1045=r1, var718=$i0, var1673=$i2}
; {java.lang.Readable=var1677, r2=var2539, $r3=var3111, java.nio.CharBuffer=var630, r1=var1045, $i0=var718, $i2=var1673}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r2 := @parameter0: java.lang.Readable;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r1 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer allocate(int)>(4096);	$i0 = interfaceinvoke r2.<java.lang.Readable: int read(java.nio.CharBuffer)>(r1);	$i2 = (int) -1;	if $i0 != $i2 goto virtualinvoke r1.<java.nio.CharBuffer: java.nio.Buffer flip()>();	goto [?= return $r3];	return $r3
;block_num 4