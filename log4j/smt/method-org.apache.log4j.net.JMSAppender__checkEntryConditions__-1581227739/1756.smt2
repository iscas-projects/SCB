(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3005 0)
(declare-sort var2208 0)
(declare-sort var2095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun topicConnection/1862363964 (var3005) var2095)
(declare-const null-var3005 var3005)
(declare-const null-String String)
(declare-const null-var2095 var2095)
(declare-const var714 var3005) ; Statement: r0 := @this: org.apache.log4j.net.JMSAppender 
(assert (not (= var714 null-var3005)))
(define-const var3482 String null-String) ; Statement: r12 = null 
(define-const var3593 String null-String) ; Statement: r14 = null 
(define-const var2392 String null-String) ; Statement: r13 = null 
(define-const var1912 var2095 (topicConnection/1862363964 var714)) ; Statement: $r1 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicConnection topicConnection> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicSession topicSession> 
(assert (not (not (= var1912 null-var2095)))) ; Negate: Cond: $r1 != null  
(define-const var3482!1 String "No TopicConnection") ; Statement: r12 = "No TopicConnection" 
(define-const var3593!1 String "No TopicConnection") ; Statement: r14 = "No TopicConnection" 
(define-const var2392!1 String "No TopicConnection") ; Statement: r13 = "No TopicConnection" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r13 == null goto return 1 
(assert (= var2392!1 null-String)) ; Cond: r13 == null 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {topicConnection/1862363964=([org.apache.log4j.net.JMSAppender], javax.jms.TopicConnection)}
; {var3005=org.apache.log4j.net.JMSAppender, var714=r0, var2208=null_type, var3482=r12, var3593=r14, var2392=r13, var2095=javax.jms.TopicConnection, var1912=$r1}
; {org.apache.log4j.net.JMSAppender=var3005, r0=var714, null_type=var2208, r12=var3482, r14=var3593, r13=var2392, javax.jms.TopicConnection=var2095, $r1=var1912}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.net.JMSAppender;	r12 = null;	r14 = null;	r13 = null;	$r1 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicConnection topicConnection>;	if $r1 != null goto $r2 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicSession topicSession>;	r12 = "No TopicConnection";	r14 = "No TopicConnection";	r13 = "No TopicConnection";	goto [?= (branch)];	if r13 == null goto return 1;	return 1
;block_num 4