(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var1504 0)
(declare-sort var1949 0)
(declare-sort var1634 0)
(declare-sort var2233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun layout/-1806528418 (var1949) var1504)
(declare-fun cast-from-var1471-to-var1949 (var1471) var1949)
(declare-fun getHeader/396097239 (var1504) String)
(declare-fun cb/1521124344 (var1471) var2233)
(declare-fun length/1590564688 (var2233) Int)
(declare-fun getFooter/-37510903 (var1504) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1471 var1471)
(declare-const null-String String)
(declare-const var723 var1471) ; Statement: r1 := @this: org.apache.log4j.net.SMTPAppender 
(assert (not (= var723 null-var1471)))
(define-const var2942 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2942)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2942!1 String)
(define-const var75 var1504 (layout/-1806528418 (cast-from-var1471-to-var1949 var723))) ; Statement: $r2 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.Layout layout> 
(assert true)
(define-const var1006 String (getHeader/396097239 var75)) ; Statement: r14 = virtualinvoke $r2.<org.apache.log4j.Layout: java.lang.String getHeader()>() 
 ; Statement: if r14 == null goto $r3 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.helpers.CyclicBuffer cb> 
(assert (= var1006 null-String)) ; Cond: r14 == null 
(define-const var3083 var2233 (cb/1521124344 var723)) ; Statement: $r3 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.helpers.CyclicBuffer cb> 
(assert true)
(define-const var771 Int (length/1590564688 var3083)) ; Statement: $i1 = virtualinvoke $r3.<org.apache.log4j.helpers.CyclicBuffer: int length()>() 
(define-const var2358 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto $r4 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.Layout layout> 
(assert (>= var2358 var771)) ; Cond: i2 >= $i1 
(define-const var222 var1504 (layout/-1806528418 (cast-from-var1471-to-var1949 var723))) ; Statement: $r4 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.Layout layout> 
(assert true)
(define-const var2455 String (getFooter/-37510903 var222)) ; Statement: r15 = virtualinvoke $r4.<org.apache.log4j.Layout: java.lang.String getFooter()>() 
 ; Statement: if r15 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (= var2455 null-String)) ; Cond: r15 == null 
(assert true)
(define-const var2382 String (toString/-222306083 var2942!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), layout/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.Layout), cast-from-var1471-to-var1949=([org.apache.log4j.net.SMTPAppender], org.apache.log4j.AppenderSkeleton), getHeader/396097239=([org.apache.log4j.Layout], java.lang.String), cb/1521124344=([org.apache.log4j.net.SMTPAppender], org.apache.log4j.helpers.CyclicBuffer), length/1590564688=([org.apache.log4j.helpers.CyclicBuffer], int), getFooter/-37510903=([org.apache.log4j.Layout], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1471=org.apache.log4j.net.SMTPAppender, var723=r1, var2942=$r0, var1504=org.apache.log4j.Layout, var1949=org.apache.log4j.AppenderSkeleton, var75=$r2, var1006=r14, var1634=null_type, var2233=org.apache.log4j.helpers.CyclicBuffer, var3083=$r3, var771=$i1, var2358=i2, var222=$r4, var2455=r15, var2382=$r5}
; {org.apache.log4j.net.SMTPAppender=var1471, r1=var723, $r0=var2942, org.apache.log4j.Layout=var1504, org.apache.log4j.AppenderSkeleton=var1949, $r2=var75, r14=var1006, null_type=var1634, org.apache.log4j.helpers.CyclicBuffer=var2233, $r3=var3083, $i1=var771, i2=var2358, $r4=var222, r15=var2455, $r5=var2382}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.net.SMTPAppender;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.Layout layout>;	r14 = virtualinvoke $r2.<org.apache.log4j.Layout: java.lang.String getHeader()>();	if r14 == null goto $r3 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.helpers.CyclicBuffer cb>;	$r3 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.helpers.CyclicBuffer cb>;	$i1 = virtualinvoke $r3.<org.apache.log4j.helpers.CyclicBuffer: int length()>();	i2 = 0;	if i2 >= $i1 goto $r4 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.Layout layout>;	$r4 = r1.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.Layout layout>;	r15 = virtualinvoke $r4.<org.apache.log4j.Layout: java.lang.String getFooter()>();	if r15 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r5
;block_num 5