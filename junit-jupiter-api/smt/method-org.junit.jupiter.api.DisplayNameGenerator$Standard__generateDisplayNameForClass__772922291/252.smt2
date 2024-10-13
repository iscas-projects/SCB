(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1126 var1126)
(declare-const null-ClassObject ClassObject)
(declare-const var315 var1126) ; Statement: r3 := @this: org.junit.jupiter.api.DisplayNameGenerator$Standard 
(assert (not (= var315 null-var1126)))
(declare-const var3357 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3357 null-ClassObject)))
(assert true)
(define-const var3760 String (getName/-1958580599 var3357)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2059 Int (lastIndexOf/-1292097097 var3760 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1787 Int (+ var2059 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var1787 0) (>= (str.len var3760) var1787))))
(define-const var3893 String (substring/850833817 var3760 var1787)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1126=org.junit.jupiter.api.DisplayNameGenerator$Standard, var315=r3, var3357=r0, var3760=r1, var2059=i0, var1787=$i1, var3893=$r2}
; {org.junit.jupiter.api.DisplayNameGenerator$Standard=var1126, r3=var315, r0=var3357, r1=var3760, i0=var2059, $i1=var1787, $r2=var3893}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: org.junit.jupiter.api.DisplayNameGenerator$Standard;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = i0 + 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1);	return $r2
;block_num 1