(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1263 0)
(declare-sort var727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var727-separator String)
(declare-const var1033 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1033 null-String)))
(declare-const var798 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var798 null-String)))
(declare-const var3151 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var3151 null-Bool)))
(define-const var3173 String var727-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1725 Bool (startsWith/-1785782452 var798 var3173)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1) 
(define-const var2660 String var727-separator) ; Statement: $r3 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1588 Bool (startsWith/-1785782452 var1033 var2660)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>($r3) 
 ; Statement: if $z1 == $z0 goto r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r2) 
(assert (not (= var1725 var1588))) ; Negate: Cond: $z1 == $z0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1033=r2, var1263=null_type, var798=r0, var3151=z2, var727=java.io.File, var3173=$r1, var1725=$z1, var2660=$r3, var1588=$z0}
; {r2=var1033, null_type=var1263, r0=var798, z2=var3151, java.io.File=var727, $r1=var3173, $z1=var1725, $r3=var2660, $z0=var1588}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z2 := @parameter2: boolean;	$r1 = <java.io.File: java.lang.String separator>;	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1);	$r3 = <java.io.File: java.lang.String separator>;	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>($r3);	if $z1 == $z0 goto r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.SelectorUtils: java.lang.String[] tokenizePathAsArray(java.lang.String)>(r2);	return 0
;block_num 2