(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1416 0)
(declare-sort var2953 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun loadedLibs/87573868 (var1416) var1028)
(declare-const null-var1416 var1416)
(declare-const null-String String)
(declare-const null-var1028 var1028)
(declare-const var3174 var1416) ; Statement: r0 := @this: freemarker.core.Environment 
(assert (not (= var3174 null-var1416)))
(declare-const var2556 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2556 null-String)))
(assert true)
(define-const var1537 Bool (startsWith/-1785782452 var2556 "/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs> 
(assert (= (ite var1537 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1833 var1028 (loadedLibs/87573868 var3174)) ; Statement: $r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs> 
 ; Statement: if $r1 == null goto return null 
(assert (= var1833 null-var1028)) ; Cond: $r1 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), loadedLibs/87573868=([freemarker.core.Environment], java.util.HashMap)}
; {var1416=freemarker.core.Environment, var3174=r0, var2556=r5, var2953=null_type, var1537=$z0, var1028=java.util.HashMap, var1833=$r1}
; {freemarker.core.Environment=var1416, r0=var3174, r5=var2556, null_type=var2953, $z0=var1537, java.util.HashMap=var1028, $r1=var1833}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.Environment;	r5 := @parameter0: java.lang.String;	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs>;	$r1 = r0.<freemarker.core.Environment: java.util.HashMap loadedLibs>;	if $r1 == null goto return null;	return null
;block_num 3