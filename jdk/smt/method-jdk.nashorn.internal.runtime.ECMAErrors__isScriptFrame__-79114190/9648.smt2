(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3549 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClassName/1384636042 (var3549) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3549 var3549)
(declare-const var2775-scriptPackage String)
(declare-const var153 var3549) ; Statement: r0 := @parameter0: java.lang.StackTraceElement 
(assert (not (= var153 null-var3549)))
(assert true)
(define-const var1039 String (getClassName/1384636042 var153)) ; Statement: r1 = virtualinvoke r0.<java.lang.StackTraceElement: java.lang.String getClassName()>() 
(define-const var2565 String var2775-scriptPackage) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage> 
(assert true)
(define-const var3885 Bool (startsWith/-1785782452 var1039 var2565)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3885 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassName/1384636042=([java.lang.StackTraceElement], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3549=java.lang.StackTraceElement, var153=r0, var1039=r1, var2775=jdk.nashorn.internal.runtime.ECMAErrors, var2565=$r2, var3885=$z0}
; {java.lang.StackTraceElement=var3549, r0=var153, r1=var1039, jdk.nashorn.internal.runtime.ECMAErrors=var2775, $r2=var2565, $z0=var3885}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StackTraceElement;	r1 = virtualinvoke r0.<java.lang.StackTraceElement: java.lang.String getClassName()>();	$r2 = <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage>;	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	if $z0 == 0 goto return 0;	return 0
;block_num 2