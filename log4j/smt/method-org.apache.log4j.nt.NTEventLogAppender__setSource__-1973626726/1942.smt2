(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3462 0)
(declare-sort var2303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun source/1095524725 (var3462) String)
(declare-const null-var3462 var3462)
(declare-const null-String String)
(declare-const var3146 var3462) ; Statement: r0 := @this: org.apache.log4j.nt.NTEventLogAppender 
(assert (not (= var3146 null-var3462)))
(declare-const var1959 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1959 null-String)))
(assert true)
(define-const var2157 String (trim/-847153721 var1959)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var3146!1 var3462)
(assert (not (= var3146!1 null-var3462)))
(assert (= (source/1095524725 var3146!1) var2157)) ; Statement: r0.<org.apache.log4j.nt.NTEventLogAppender: java.lang.String source> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), source/1095524725=([org.apache.log4j.nt.NTEventLogAppender], java.lang.String)}
; {var3462=org.apache.log4j.nt.NTEventLogAppender, var3146=r0, var1959=r1, var2303=null_type, var2157=$r2}
; {org.apache.log4j.nt.NTEventLogAppender=var3462, r0=var3146, r1=var1959, null_type=var2303, $r2=var2157}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.apache.log4j.nt.NTEventLogAppender;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<org.apache.log4j.nt.NTEventLogAppender: java.lang.String source> = $r2;	return
;block_num 1