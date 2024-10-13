(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2897 0)
(declare-sort var183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2897_getProperty/258823597 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const var183-LINE_SEP String)
(define-const var2938 String (var2897_getProperty/258823597 "line.separator")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("line.separator") 
(define-const var3766 String var2938) ; Statement: <org.apache.log4j.Layout: java.lang.String LINE_SEP> = $r0 
(define-const var219 String var183-LINE_SEP) ; Statement: $r1 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var934 Int (length/-134980193 var219)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1789 Int var934) ; Statement: <org.apache.log4j.Layout: int LINE_SEP_LEN> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2897_getProperty/258823597=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2897=java.lang.System, var2938=$r0, var3766=<org.apache.log4j.Layout: java.lang.String LINE_SEP>, var183=org.apache.log4j.Layout, var219=$r1, var934=$i0, var1789=<org.apache.log4j.Layout: int LINE_SEP_LEN>}
; {java.lang.System=var2897, $r0=var2938, <org.apache.log4j.Layout: java.lang.String LINE_SEP>=var3766, org.apache.log4j.Layout=var183, $r1=var219, $i0=var934, <org.apache.log4j.Layout: int LINE_SEP_LEN>=var1789}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("line.separator");	<org.apache.log4j.Layout: java.lang.String LINE_SEP> = $r0;	$r1 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	<org.apache.log4j.Layout: int LINE_SEP_LEN> = $i0;	return
;block_num 1