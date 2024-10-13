(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2388 0)
(declare-sort var2447 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2388 var2388)
(declare-const null-String String)
(declare-const var623 var2388) ; Statement: r3 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var623 null-var2388)))
(declare-const var3494 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3494 null-String)))
(declare-const var819 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var819 null-String)))
(declare-const var2600 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var2600 null-String)))
(assert true)
(define-const var1200 Bool (startsWith/-1785782452 var2600 "(")) ; Statement: $z0 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("(") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1200 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2388=com.mysql.cj.conf.ConnectionUrlParser, var623=r3, var3494=r4, var2447=null_type, var819=r5, var2600=r8, var1200=$z0}
; {com.mysql.cj.conf.ConnectionUrlParser=var2388, r3=var623, r4=var3494, null_type=var2447, r5=var819, r8=var2600, $z0=var1200}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.mysql.cj.conf.ConnectionUrlParser;	r4 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	$z0 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("(");	if $z0 == 0 goto return null;	return null
;block_num 2