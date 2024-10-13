(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort var646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var646_toByteArray/72732935 (var3600 Int) (Array Int Int))
(declare-const null-var3600 var3600)
(declare-const null-Int Int)
(declare-const var34 var3600) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var34 null-var3600)))
(declare-const var2724 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2724 null-Int)))
(define-const var3910 Int (ite (> var2724 2147483647) 1 (ite (< var2724 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var224 Int (cast-from-Int-to-Int var3910)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (<= var224 0)) ; Cond: $i3 <= 0 
(define-const var3629 Int (cast-from-Int-to-Int var2724)) ; Statement: $i2 = (int) l0 
(define-const var3715 (Array Int Int) (var646_toByteArray/72732935 var34 var3629)) ; Statement: $r1 = staticinvoke <org.apache.commons.io.IOUtils: byte[] toByteArray(java.io.InputStream,int)>(r0, $i2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var646_toByteArray/72732935=([java.io.InputStream, int], byte[])}
; {var3600=java.io.InputStream, var34=r0, var2724=l0, var3910=$b1, var224=$i3, var3629=$i2, var646=org.apache.commons.io.IOUtils, var3715=$r1}
; {java.io.InputStream=var3600, r0=var34, l0=var2724, $b1=var3910, $i3=var224, $i2=var3629, org.apache.commons.io.IOUtils=var646, $r1=var3715}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$i2 = (int) l0;	$r1 = staticinvoke <org.apache.commons.io.IOUtils: byte[] toByteArray(java.io.InputStream,int)>(r0, $i2);	return $r1
;block_num 2