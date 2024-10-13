(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var539 0)
(declare-sort var332 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3701-init () var3701)
(declare-fun <init>/-325640736 (var3701) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var539 var539)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1611 var539) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var1611 null-var539)))
(declare-const var3619 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3619 null-String)))
(declare-const var3325 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3325 null-Int)))
(define-const var2991 var3701 var3701-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2991)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2991!1 var3701)
(assert true)
(define-const var1403 (Array Int String) (split/-636890950 var3619 "\u005cn")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\n") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3619 "\u005cn") i) (re.++ (re.* re.all) (str.to_re "\u{005c}u{000a}") (re.* re.all))))))
(define-const var2213 Int (getLength-Arr-String-1 var1403)) ; Statement: i0 = lengthof r2 
(define-const var1045 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto return $r0 
(assert (>= var1045 var2213)) ; Cond: i6 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3701-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var539=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var1611=r6, var3619=r1, var332=null_type, var3325=i1, var3701=java.util.ArrayList, var2991=$r0, var1403=r2, var2213=i0, var1045=i6}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var539, r6=var1611, r1=var3619, null_type=var332, i1=var3325, java.util.ArrayList=var3701, $r0=var2991, r2=var1403, i0=var2213, i6=var1045}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\n");	i0 = lengthof r2;	i6 = 0;	if i6 >= i0 goto return $r0;	return $r0
;block_num 3