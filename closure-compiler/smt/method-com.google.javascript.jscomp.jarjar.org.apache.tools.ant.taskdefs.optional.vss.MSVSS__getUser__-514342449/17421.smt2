(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1849 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun user/1944491110 (var1849) String)
(declare-const null-var1849 var1849)
(declare-const null-String String)
(declare-const var3841 var1849) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var3841 null-var1849)))
(define-const var430 String (user/1944491110 var3841)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String user> 
 ; Statement: if $r1 == null goto $r6 = "" 
(assert (= var430 null-String)) ; Cond: $r1 == null 
(define-const var3894 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {user/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var1849=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var3841=r0, var430=$r1, var3552=null_type, var3894=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var1849, r0=var3841, $r1=var430, null_type=var3552, $r6=var3894}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String user>;	if $r1 == null goto $r6 = "";	$r6 = "";	return $r6
;block_num 3