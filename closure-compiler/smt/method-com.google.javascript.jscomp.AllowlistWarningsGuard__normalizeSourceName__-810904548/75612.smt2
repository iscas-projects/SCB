(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3175 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-const null-var3175 var3175)
(declare-const null-String String)
(declare-const var547 var3175) ; Statement: r2 := @this: com.google.javascript.jscomp.AllowlistWarningsGuard 
(assert (not (= var547 null-var3175)))
(declare-const var400 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var400 null-String)))
 ; Statement: if r0 == null goto return r0 
(assert (not (= var400 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var320 String (replaceFirst/750800361 var400 "blaze-out/[^/]*/(bin|genfiles)/" "")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("blaze-out/[^/]*/(bin|genfiles)/", "") 
(assert (= (replaceFirst/750800361 var400 "blaze-out/[^/]*/(bin|genfiles)/" "") (str.replace_re var400 (re.++ (str.to_re "blaze-out/") (re.* (re.comp (str.to_re "/"))) (str.to_re "/") (re.union (str.to_re "bin") (str.to_re "genfiles")) (str.to_re "/")) "")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3175=com.google.javascript.jscomp.AllowlistWarningsGuard, var547=r2, var400=r0, var1815=null_type, var320=$r1}
; {com.google.javascript.jscomp.AllowlistWarningsGuard=var3175, r2=var547, r0=var400, null_type=var1815, $r1=var320}
;seq <java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.AllowlistWarningsGuard;	r0 := @parameter0: java.lang.String;	if r0 == null goto return r0;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("blaze-out/[^/]*/(bin|genfiles)/", "");	return $r1
;block_num 2