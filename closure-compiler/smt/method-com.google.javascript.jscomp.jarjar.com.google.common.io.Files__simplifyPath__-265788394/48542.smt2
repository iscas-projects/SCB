(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1937 0)
(declare-sort var3084 0)
(declare-sort var3763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3084_checkNotNull/1446102589 (var3763) var3763)
(declare-fun cast-from-String-to-var3763 (String) var3763)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2922 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2922 null-String)))
;(assert (var3084_checkNotNull/1446102589 (cast-from-String-to-var3763 var2922))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2922!1 String)
(assert true)
(define-const var289 Int (length/-134980193 var2922!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(47) 
(assert (not (not (= var289 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return "." 
(check-sat)
(get-model)
(get-unsat-core)
; {var3084_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3763=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var2922=r0, var1937=null_type, var3084=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3763=java.lang.Object, var289=$i0}
; {r0=var2922, null_type=var1937, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3084, java.lang.Object=var3763, $i0=var289}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(47);	return "."
;block_num 2