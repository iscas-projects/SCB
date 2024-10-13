(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2625 0)
(declare-sort var2841 0)
(declare-sort var18 0)
(declare-sort var138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2841_add/328494887 (var2841 var138) Bool)
(declare-fun cast-from-String-to-var138 (String) var138)
(declare-const null-String String)
(declare-const var18-UNACCEPTABLE_CIPHER_SUBSTR var2841)
(declare-const var145 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var145 null-String)))
(define-const var7 var2841 var18-UNACCEPTABLE_CIPHER_SUBSTR) ; Statement: $r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List UNACCEPTABLE_CIPHER_SUBSTR> 
(assert true)
(define-const var3243 String (trim/-847153721 var145)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
;(assert (var2841_add/328494887 var7 (cast-from-String-to-var138 var3243))) ; Statement: interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r2) 

(declare-const var7!1 var2841)
(declare-const var3243!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), var2841_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var138=([java.lang.String], java.lang.Object)}
; {var145=r0, var2625=null_type, var2841=java.util.List, var18=com.mysql.cj.protocol.ExportControlled, var7=$r1, var3243=$r2, var138=java.lang.Object}
; {r0=var145, null_type=var2625, java.util.List=var2841, com.mysql.cj.protocol.ExportControlled=var18, $r1=var7, $r2=var3243, java.lang.Object=var138}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List UNACCEPTABLE_CIPHER_SUBSTR>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r2);	return
;block_num 1