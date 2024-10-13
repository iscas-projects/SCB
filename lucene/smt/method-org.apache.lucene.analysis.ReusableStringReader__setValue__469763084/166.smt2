(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3698 0)
(declare-sort var1280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun s/-853829893 (var3698) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun size/-853829893 (var3698) Int)
(declare-fun pos/-853829893 (var3698) Int)
(declare-const null-var3698 var3698)
(declare-const null-String String)
(declare-const var3729 var3698) ; Statement: r0 := @this: org.apache.lucene.analysis.ReusableStringReader 
(assert (not (= var3729 null-var3698)))
(declare-const var3441 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3441 null-String)))
(declare-const var3729!1 var3698)
(assert (not (= var3729!1 null-var3698)))
(assert (= (s/-853829893 var3729!1) var3441)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = r1 
(assert true)
(define-const var1671 Int (length/-134980193 var3441)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var3729!2 var3698)
(assert (not (= var3729!2 null-var3698)))
(assert (= (size/-853829893 var3729!2) var1671)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: int size> = $i0 
(declare-const var3729!3 var3698)
(assert (not (= var3729!3 null-var3698)))
(assert (= (pos/-853829893 var3729!3) 0)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {s/-853829893=([org.apache.lucene.analysis.ReusableStringReader], java.lang.String), length/-134980193=([java.lang.String], int), size/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), pos/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int)}
; {var3698=org.apache.lucene.analysis.ReusableStringReader, var3729=r0, var3441=r1, var1280=null_type, var1671=$i0}
; {org.apache.lucene.analysis.ReusableStringReader=var3698, r0=var3729, r1=var3441, null_type=var1280, $i0=var1671}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.ReusableStringReader;	r1 := @parameter0: java.lang.String;	r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<org.apache.lucene.analysis.ReusableStringReader: int size> = $i0;	r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> = 0;	return
;block_num 1