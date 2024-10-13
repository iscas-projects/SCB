(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2522 0)
(declare-sort var2925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2925_access$700/1294968944 (String String) String)
(declare-const null-String String)
(declare-const var3464 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3464 null-String)))
(declare-const var3949 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3949 null-String)))
(assert true)
(define-const var1484 String (append/-1166366385 var3464 124)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(124) 
(declare-const var3464!1 String)
(assert (str.prefixof var3464 var3464!1))
;(assert (var2925_access$700/1294968944 var1484 var3949)) ; Statement: staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.StringBuilder access$700(java.lang.StringBuilder,java.lang.String)>($r2, r1) 

(declare-const var1484!1 String)
(declare-const var3949!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2925_access$700/1294968944=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3464=r0, var3949=r1, var2522=null_type, var1484=$r2, var2925=org.apache.commons.lang3.time.FastDateParser}
; {r0=var3464, r1=var3949, null_type=var2522, $r2=var1484, org.apache.commons.lang3.time.FastDateParser=var2925}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(124);	staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.StringBuilder access$700(java.lang.StringBuilder,java.lang.String)>($r2, r1);	return
;block_num 1