(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var583 0)
(declare-sort var2365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/262189930 (String String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var583 var583)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1088 var583) ; Statement: r4 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var1088 null-var583)))
(declare-const var3557 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3557 null-Int)))
(declare-const var1519 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1519 null-String)))
(define-const var3229 Int (- var3557 1)) ; Statement: $i1 = i0 - 1 
(assert true)
(define-const var378 Int (lastIndexOf/262189930 var1519 "[slf5s." var3229)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String,int)>("[slf5s.", $i1) 
(define-const var2701 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i3 != $i6 goto i4 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>("]", i3) 
(assert (not (not (= var378 var2701)))) ; Negate: Cond: i3 != $i6  
(assert (not (and true (and (>= 0 0) (>= (str.len var1519) var3557) (>= var3557 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/262189930=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var583=org.apache.log4j.lf5.util.LogFileParser, var1088=r4, var3557=i0, var1519=r0, var2365=null_type, var3229=$i1, var378=i3, var2701=$i6, var566=$r3}
; {org.apache.log4j.lf5.util.LogFileParser=var583, r4=var1088, i0=var3557, r0=var1519, null_type=var2365, $i1=var3229, i3=var378, $i6=var2701, $r3=var566}
;seq <java.lang.String: int lastIndexOf(java.lang.String,int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.util.LogFileParser;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	$i1 = i0 - 1;	i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String,int)>("[slf5s.", $i1);	$i6 = (int) -1;	if i3 != $i6 goto i4 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>("]", i3);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r3
;block_num 2