(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3045 0)
(declare-sort var2884 0)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun patterns/-1370094465 (var3045) var1084)
(declare-fun var1084_clear/2124191932 (var1084) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3045 var3045)
(declare-const null-String String)
(declare-const var3398 var3045) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression 
(assert (not (= var3398 null-var3045)))
(declare-const var705 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var705 null-String)))
(define-const var166 var1084 (patterns/-1370094465 var3398)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression: java.util.List patterns> 
;(assert (var1084_clear/2124191932 var166)) ; Statement: interfaceinvoke $r1.<java.util.List: void clear()>() 

(declare-const var166!1 var1084)
(assert true)
(define-const var2935 (Array Int String) (split/-636890950 var705 ",")) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var705 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3769 Int (getLength-Arr-String-1 var2935)) ; Statement: i0 = lengthof r3 
(define-const var687 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var687 var3769)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {patterns/-1370094465=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression], java.util.List), var1084_clear/2124191932=([java.util.List], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3045=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression, var3398=r0, var705=r2, var2884=null_type, var1084=java.util.List, var166=$r1, var2935=r3, var3769=i0, var687=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression=var3045, r0=var3398, r2=var705, null_type=var2884, java.util.List=var1084, $r1=var166, r3=var2935, i0=var3769, i1=var687}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression: java.util.List patterns>;	interfaceinvoke $r1.<java.util.List: void clear()>();	r3 = virtualinvoke r2.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3