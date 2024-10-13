(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3477 0)
(declare-sort var421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addEvent/-1733425811 (var3477) void)
(declare-fun resetData/-1239827173 (var3477) void)
(declare-const null-var3477 var3477)
(declare-const null-String String)
(declare-const var1194 var3477) ; Statement: r6 := @this: org.apache.log4j.chainsaw.XMLFileHandler 
(assert (not (= var1194 null-var3477)))
(declare-const var610 String) ; Statement: r24 := @parameter0: java.lang.String 
(assert (not (= var610 null-String)))
(declare-const var3217 String) ; Statement: r25 := @parameter1: java.lang.String 
(assert (not (= var3217 null-String)))
(declare-const var3991 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3991 null-String)))
(define-const var1293 String "log4j:event") ; Statement: $r1 = "log4j:event" 
(assert true)
(define-const var2668 Bool (= var1293 var3991)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "log4j:NDC" 
(assert (not (= (ite var2668 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (addEvent/-1733425811 var1194)) ; Statement: specialinvoke r6.<org.apache.log4j.chainsaw.XMLFileHandler: void addEvent()>() 

(declare-const var1194!1 var3477)
(assert true)
;(assert (resetData/-1239827173 var1194!1)) ; Statement: specialinvoke r6.<org.apache.log4j.chainsaw.XMLFileHandler: void resetData()>() 

(declare-const var1194!2 var3477)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {addEvent/-1733425811=([org.apache.log4j.chainsaw.XMLFileHandler], void), resetData/-1239827173=([org.apache.log4j.chainsaw.XMLFileHandler], void)}
; {var3477=org.apache.log4j.chainsaw.XMLFileHandler, var1194=r6, var610=r24, var421=null_type, var3217=r25, var3991=r0, var1293=$r1, var2668=$z0}
; {org.apache.log4j.chainsaw.XMLFileHandler=var3477, r6=var1194, r24=var610, null_type=var421, r25=var3217, r0=var3991, $r1=var1293, $z0=var2668}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.apache.log4j.chainsaw.XMLFileHandler;	r24 := @parameter0: java.lang.String;	r25 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$r1 = "log4j:event";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "log4j:NDC";	specialinvoke r6.<org.apache.log4j.chainsaw.XMLFileHandler: void addEvent()>();	specialinvoke r6.<org.apache.log4j.chainsaw.XMLFileHandler: void resetData()>();	goto [?= return];	return
;block_num 3