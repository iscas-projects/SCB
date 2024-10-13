(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3976 0)
(declare-sort var2887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3976 var3976)
(declare-const null-String String)
(declare-const var71 var3976) ; Statement: r13 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac 
(assert (not (= var71 null-var3976)))
(declare-const var1719 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1719 null-String)))
(define-const var2309 String "modern") ; Statement: $r1 = "modern" 
(assert true)
(define-const var2238 Bool (= var2309 var1719)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z12 = 1 
(assert (not (= (ite var2238 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2924 Bool (ite (= 1 1) true false)) ; Statement: $z12 = 1 
 ; Statement: goto [?= return $z12] 
(assert true) ; Non Conditional
 ; Statement: return $z12 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3976=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var71=r13, var1719=r0, var2887=null_type, var2309=$r1, var2238=$z0, var2924=$z12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var3976, r13=var71, r0=var1719, null_type=var2887, $r1=var2309, $z0=var2238, $z12=var2924}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r13 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac;	r0 := @parameter0: java.lang.String;	$r1 = "modern";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z12 = 1;	$z12 = 1;	goto [?= return $z12];	return $z12
;block_num 3