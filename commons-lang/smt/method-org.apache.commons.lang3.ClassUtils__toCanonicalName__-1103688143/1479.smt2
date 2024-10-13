(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2139 0)
(declare-sort var3813 0)
(declare-sort var3290 0)
(declare-sort var515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3813_deleteWhitespace/-404101348 (String) String)
(declare-fun var3290_requireNonNull/1378936425 (var515 String) var515)
(declare-fun cast-from-String-to-var515 (String) var515)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3000 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3000 null-String)))
(define-const var1920 String (var3813_deleteWhitespace/-404101348 var3000)) ; Statement: r7 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String deleteWhitespace(java.lang.String)>(r0) 
;(assert (var3290_requireNonNull/1378936425 (cast-from-String-to-var515 var1920) "className")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r7, "className") 

(declare-const var1920!1 String)
(declare-const var3064 String)
(assert true)
(define-const var2769 Bool (endsWith/985337093 var1920!1 "[]")) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>("[]") 
 ; Statement: if $z0 == 0 goto return r7 
(assert (= (ite var2769 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3813_deleteWhitespace/-404101348=([java.lang.String], java.lang.String), var3290_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var515=([java.lang.String], java.lang.Object), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3000=r0, var2139=null_type, var3813=org.apache.commons.lang3.StringUtils, var1920=r7, var3290=java.util.Objects, var515=java.lang.Object, var3064="className", var2769=$z0}
; {r0=var3000, null_type=var2139, org.apache.commons.lang3.StringUtils=var3813, r7=var1920, java.util.Objects=var3290, java.lang.Object=var515, "className"=var3064, $z0=var2769}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r7 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String deleteWhitespace(java.lang.String)>(r0);	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r7, "className");	$z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto return r7;	return r7
;block_num 2