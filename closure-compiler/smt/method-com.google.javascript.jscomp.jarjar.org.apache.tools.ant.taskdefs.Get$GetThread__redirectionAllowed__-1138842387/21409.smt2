(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var578 0)
(declare-sort var679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProtocol/70454678 (var679) String)
(declare-fun redirections/1971558710 (var578) Int)
(declare-const null-var578 var578)
(declare-const null-var679 var679)
(declare-const var311 var578) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread 
(assert (not (= var311 null-var578)))
(declare-const var1280 var679) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1280 null-var679)))
(declare-const var1163 var679) ; Statement: r1 := @parameter1: java.net.URL 
(assert (not (= var1163 null-var679)))
(assert true)
(define-const var2959 String (getProtocol/70454678 var1280)) ; Statement: $r3 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var1217 String (getProtocol/70454678 var1163)) ; Statement: $r2 = virtualinvoke r1.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var896 Bool (= var2959 var1217)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $i0 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections> 
(assert (not (= (ite var896 1 0) 0))) ; Cond: $z0 != 0 
(define-const var869 Int (redirections/1971558710 var311)) ; Statement: $i0 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections> 
(define-const var248 Int (+ var869 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var311!1 var578)
(assert (not (= var311!1 null-var578)))
(assert (= (redirections/1971558710 var311!1) var248)) ; Statement: r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections> = $i1 
(define-const var2399 Int (redirections/1971558710 var311!1)) ; Statement: $i2 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections> 
 ; Statement: if $i2 <= 25 goto return 1 
(assert (<= var2399 25)) ; Cond: $i2 <= 25 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getProtocol/70454678=([java.net.URL], java.lang.String), redirections/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], int)}
; {var578=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread, var311=r4, var679=java.net.URL, var1280=r0, var1163=r1, var2959=$r3, var1217=$r2, var896=$z0, var869=$i0, var248=$i1, var2399=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread=var578, r4=var311, java.net.URL=var679, r0=var1280, r1=var1163, $r3=var2959, $r2=var1217, $z0=var896, $i0=var869, $i1=var248, $i2=var2399}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread;	r0 := @parameter0: java.net.URL;	r1 := @parameter1: java.net.URL;	$r3 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$r2 = virtualinvoke r1.<java.net.URL: java.lang.String getProtocol()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $i0 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections>;	$i0 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections>;	$i1 = $i0 + 1;	r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections> = $i1;	$i2 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int redirections>;	if $i2 <= 25 goto return 1;	return 1
;block_num 3