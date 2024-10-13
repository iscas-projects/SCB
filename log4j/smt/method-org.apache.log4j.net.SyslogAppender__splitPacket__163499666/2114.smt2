(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3159 0)
(declare-sort var3023 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun sqw/1979222873 (var3159) var3533)
(declare-fun write/453591344 (var3533 String) void)
(declare-const null-var3159 var3159)
(declare-const null-String String)
(declare-const var2062 var3159) ; Statement: r3 := @this: org.apache.log4j.net.SyslogAppender 
(assert (not (= var2062 null-var3159)))
(declare-const var1812 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1812 null-String)))
(declare-const var3020 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3020 null-String)))
(assert true)
(define-const var1215 (Array Int Int) (getBytes/1068683673 var3020)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: byte[] getBytes()>() 
(define-const var3282 Int (getLength-Arr-Int-1 var1215)) ; Statement: i0 = lengthof $r1 
 ; Statement: if i0 > 1019 goto $i5 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (> var3282 1019))) ; Negate: Cond: i0 > 1019  
(define-const var80 var3533 (sqw/1979222873 var2062)) ; Statement: $r15 = r3.<org.apache.log4j.net.SyslogAppender: org.apache.log4j.helpers.SyslogQuietWriter sqw> 
(assert true)
;(assert (write/453591344 var80 var3020)) ; Statement: virtualinvoke $r15.<org.apache.log4j.helpers.SyslogQuietWriter: void write(java.lang.String)>(r0) 

(declare-const var80!1 var3533)
(declare-const var3020!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), sqw/1979222873=([org.apache.log4j.net.SyslogAppender], org.apache.log4j.helpers.SyslogQuietWriter), write/453591344=([org.apache.log4j.helpers.SyslogQuietWriter, java.lang.String], void)}
; {var3159=org.apache.log4j.net.SyslogAppender, var2062=r3, var1812=r2, var3023=null_type, var3020=r0, var1215=$r1, var3282=i0, var3533=org.apache.log4j.helpers.SyslogQuietWriter, var80=$r15}
; {org.apache.log4j.net.SyslogAppender=var3159, r3=var2062, r2=var1812, null_type=var3023, r0=var3020, $r1=var1215, i0=var3282, org.apache.log4j.helpers.SyslogQuietWriter=var3533, $r15=var80}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r3 := @this: org.apache.log4j.net.SyslogAppender;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: byte[] getBytes()>();	i0 = lengthof $r1;	if i0 > 1019 goto $i5 = virtualinvoke r2.<java.lang.String: int length()>();	$r15 = r3.<org.apache.log4j.net.SyslogAppender: org.apache.log4j.helpers.SyslogQuietWriter sqw>;	virtualinvoke $r15.<org.apache.log4j.helpers.SyslogQuietWriter: void write(java.lang.String)>(r0);	goto [?= return];	return
;block_num 3