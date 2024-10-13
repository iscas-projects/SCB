(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var142 0)
(declare-sort var1046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDisplayName/1305192085 (var1046) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var142 var142)
(declare-const null-var1046 var1046)
(declare-const var82 var142) ; Statement: r4 := @this: org.junit.runner.manipulation.Alphanumeric$1 
(assert (not (= var82 null-var142)))
(declare-const var2037 var1046) ; Statement: r0 := @parameter0: org.junit.runner.Description 
(assert (not (= var2037 null-var1046)))
(declare-const var216 var1046) ; Statement: r1 := @parameter1: org.junit.runner.Description 
(assert (not (= var216 null-var1046)))
(assert true)
(define-const var3613 String (getDisplayName/1305192085 var2037)) ; Statement: $r3 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String getDisplayName()>() 
(assert true)
(define-const var2788 String (getDisplayName/1305192085 var216)) ; Statement: $r2 = virtualinvoke r1.<org.junit.runner.Description: java.lang.String getDisplayName()>() 
(assert true)
(define-const var2664 Int (compareTo/1411385946 var3613 var2788)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3613 var2788)) (this<=other (str.<= var3613 var2788)) (compareRes (compareTo/1411385946 var3613 var2788))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDisplayName/1305192085=([org.junit.runner.Description], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var142=org.junit.runner.manipulation.Alphanumeric$1, var82=r4, var1046=org.junit.runner.Description, var2037=r0, var216=r1, var3613=$r3, var2788=$r2, var2664=$i0}
; {org.junit.runner.manipulation.Alphanumeric$1=var142, r4=var82, org.junit.runner.Description=var1046, r0=var2037, r1=var216, $r3=var3613, $r2=var2788, $i0=var2664}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.junit.runner.manipulation.Alphanumeric$1;	r0 := @parameter0: org.junit.runner.Description;	r1 := @parameter1: org.junit.runner.Description;	$r3 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String getDisplayName()>();	$r2 = virtualinvoke r1.<org.junit.runner.Description: java.lang.String getDisplayName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1