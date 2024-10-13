(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3200 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookahead/-1282206061 (var3200) String)
(declare-fun onNetWare/-1282206061 (var3200) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3200 var3200)
(declare-const null-String String)
(declare-const var827 var3200) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer 
(assert (not (= var827 null-var3200)))
(define-const var1905 String (lookahead/-1282206061 var827)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.util.StringTokenizer tokenizer> 
(assert (not (= var1905 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3140 String (lookahead/-1282206061 var827)) ; Statement: r30 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead> 
(declare-const var827!1 var3200)
(assert (not (= var827!1 null-var3200)))
(assert (= (lookahead/-1282206061 var827!1) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead> = null 
 ; Statement: goto [?= $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: boolean onNetWare>] 
(assert true) ; Non Conditional
(define-const var3260 Bool (onNetWare/-1282206061 var827!1)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: boolean onNetWare> 
 ; Statement: if $z0 != 0 goto $r4 = <java.io.File: java.lang.String pathSeparator> 
(assert (not (not (= (ite var3260 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1877 Int (length/-134980193 var3140)) ; Statement: $i0 = virtualinvoke r30.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 1 goto return r30 
(assert (not (= var1877 1))) ; Cond: $i0 != 1 
 ; Statement: return r30 
(check-sat)
(get-model)
(get-unsat-core)
; {lookahead/-1282206061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer], java.lang.String), onNetWare/-1282206061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer], boolean), length/-134980193=([java.lang.String], int)}
; {var3200=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer, var827=r0, var1905=$r1, var3974=null_type, var3140=r30, var3260=$z0, var1877=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer=var3200, r0=var827, $r1=var1905, null_type=var3974, r30=var3140, $z0=var3260, $i0=var1877}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.util.StringTokenizer tokenizer>;	r30 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead> = null;	goto [?= $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: boolean onNetWare>];	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: boolean onNetWare>;	if $z0 != 0 goto $r4 = <java.io.File: java.lang.String pathSeparator>;	$i0 = virtualinvoke r30.<java.lang.String: int length()>();	if $i0 != 1 goto return r30;	return r30
;block_num 5