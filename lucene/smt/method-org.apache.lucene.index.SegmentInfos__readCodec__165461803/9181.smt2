(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3985 0)
(declare-sort var1131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/-1095383230 (var3985) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3985 var3985)
(declare-const null-var1131 var1131)
(declare-const var3487 var3985) ; Statement: r0 := @parameter0: org.apache.lucene.store.DataInput 
(assert (not (= var3487 null-var3985)))
(assert true)
(define-const var1142 String (readString/-1095383230 var3487)) ; Statement: r1 = virtualinvoke r0.<org.apache.lucene.store.DataInput: java.lang.String readString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var447 var1131) ; Statement: $r3 := @caughtexception 
(assert (not (= var447 null-var1131)))
(assert true)
(define-const var2488 Bool (startsWith/-1785782452 var1142 "Lucene")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Lucene") 
 ; Statement: if $z0 == 0 goto throw $r3 
(assert (= (ite var2488 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {readString/-1095383230=([org.apache.lucene.store.DataInput], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3985=org.apache.lucene.store.DataInput, var3487=r0, var1142=r1, var1131=java.lang.IllegalArgumentException, var447=$r3, var2488=$z0}
; {org.apache.lucene.store.DataInput=var3985, r0=var3487, r1=var1142, java.lang.IllegalArgumentException=var1131, $r3=var447, $z0=var2488}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.apache.lucene.store.DataInput;	r1 = virtualinvoke r0.<org.apache.lucene.store.DataInput: java.lang.String readString()>();	$r3 := @caughtexception;	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Lucene");	if $z0 == 0 goto throw $r3;	throw $r3
;block_num 3