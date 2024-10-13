(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2592_getProperty/258823597 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const var754-LINE_SEPARATOR String)
(define-const var2346 String (var2592_getProperty/258823597 "line.separator")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("line.separator") 
(define-const var3634 String var2346) ; Statement: <com.mysql.cj.util.LogUtils: java.lang.String LINE_SEPARATOR> = $r0 
(define-const var2816 String var754-LINE_SEPARATOR) ; Statement: $r1 = <com.mysql.cj.util.LogUtils: java.lang.String LINE_SEPARATOR> 
(assert true)
(define-const var3389 Int (length/-134980193 var2816)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1155 Int var3389) ; Statement: <com.mysql.cj.util.LogUtils: int LINE_SEPARATOR_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2592_getProperty/258823597=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2592=java.lang.System, var2346=$r0, var3634=<com.mysql.cj.util.LogUtils: java.lang.String LINE_SEPARATOR>, var754=com.mysql.cj.util.LogUtils, var2816=$r1, var3389=$i0, var1155=<com.mysql.cj.util.LogUtils: int LINE_SEPARATOR_LENGTH>}
; {java.lang.System=var2592, $r0=var2346, <com.mysql.cj.util.LogUtils: java.lang.String LINE_SEPARATOR>=var3634, com.mysql.cj.util.LogUtils=var754, $r1=var2816, $i0=var3389, <com.mysql.cj.util.LogUtils: int LINE_SEPARATOR_LENGTH>=var1155}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("line.separator");	<com.mysql.cj.util.LogUtils: java.lang.String LINE_SEPARATOR> = $r0;	$r1 = <com.mysql.cj.util.LogUtils: java.lang.String LINE_SEPARATOR>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	<com.mysql.cj.util.LogUtils: int LINE_SEPARATOR_LENGTH> = $i0;	return
;block_num 1