(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var2475 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2475 null-String)))
(assert true)
(define-const var2286 String (replaceAll/1692887130 var2475 "\n" "\u005c\u005cn")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\n", "\\\\n") 
(assert (= (replaceAll/1692887130 var2475 "\n" "\u005c\u005cn") (str.replace_re_all var2475 (str.to_re "\u{005c}u{000a}") "\u005c\u005cn")))
(assert true)
(define-const var721 String (replaceAll/1692887130 var2286 "\r" "\u005c\u005cr")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\r", "\\\\r") 
(assert (= (replaceAll/1692887130 var2286 "\r" "\u005c\u005cr") (str.replace_re_all var2286 (str.to_re "\u{005c}u{000d}") "\u005c\u005cr")))
(assert true)
(define-const var335 String (replaceAll/1692887130 var721 "\t" "\u005c\u005ct")) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\t", "\\\\t") 
(assert (= (replaceAll/1692887130 var721 "\t" "\u005c\u005ct") (str.replace_re_all var721 (str.to_re "\u{005c}u{0009}") "\u005c\u005ct")))
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var2475=r0, var1837=null_type, var2286=r1, var721=r2, var335=r3}
; {r0=var2475, null_type=var1837, r1=var2286, r2=var721, r3=var335}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 3}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\n", "\\\\n");	r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\r", "\\\\r");	r3 = virtualinvoke r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\t", "\\\\t");	return r3
;block_num 1