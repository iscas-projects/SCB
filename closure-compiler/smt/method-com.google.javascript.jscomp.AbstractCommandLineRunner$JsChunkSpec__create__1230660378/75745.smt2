(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1184 0)
(declare-sort var1589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1589-init () var1589)
(declare-fun <init>/-2133823803 (var1589 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1512 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1512 null-String)))
(declare-const var3105 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3105 null-Bool)))
(assert true)
(define-const var2455 (Array Int String) (split/-636890950 var1512 ":")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(":") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1512 ":") i) (re.++ (re.* re.all) (str.to_re ":") (re.* re.all))))))
(define-const var1792 Int (getLength-Arr-String-1 var2455)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 < 2 goto $r21 = new com.google.javascript.jscomp.FlagUsageException 
(assert (< var1792 2)) ; Cond: $i0 < 2 
(define-const var256 var1589 var1589-init) ; Statement: $r21 = new com.google.javascript.jscomp.FlagUsageException 
(define-const var20 String (str.++ "Expected 2-4 colon-delimited parts in chunk spec: \u0001" var1512)) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Expected 2-4 colon-delimited parts in chunk spec: \u0001") 
(assert true)
;(assert (<init>/-2133823803 var256 var20)) ; Statement: specialinvoke $r21.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>($r3) 

(declare-const var256!1 var1589)
(declare-const var20!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1589-init=([], com.google.javascript.jscomp.FlagUsageException), <init>/-2133823803=([com.google.javascript.jscomp.FlagUsageException, java.lang.String], void)}
; {var1512=r0, var1184=null_type, var3105=z1, var2455=r1, var1792=$i0, var1589=com.google.javascript.jscomp.FlagUsageException, var256=$r21, var20=$r3}
; {r0=var1512, null_type=var1184, z1=var3105, r1=var2455, $i0=var1792, com.google.javascript.jscomp.FlagUsageException=var1589, $r21=var256, $r3=var20}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(":");	$i0 = lengthof r1;	if $i0 < 2 goto $r21 = new com.google.javascript.jscomp.FlagUsageException;	$r21 = new com.google.javascript.jscomp.FlagUsageException;	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Expected 2-4 colon-delimited parts in chunk spec: \u0001");	specialinvoke $r21.<com.google.javascript.jscomp.FlagUsageException: void <init>(java.lang.String)>($r3);	throw $r21
;block_num 2