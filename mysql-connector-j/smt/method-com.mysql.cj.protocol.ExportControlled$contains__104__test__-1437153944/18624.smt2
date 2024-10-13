(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var2997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2997-to-String (var2997) String)
(declare-fun cap0/-78802468 (var3792) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3792 var3792)
(declare-const null-var2997 var2997)
(declare-const var1113 var3792) ; Statement: $r0 := @this: com.mysql.cj.protocol.ExportControlled$contains__104 
(assert (not (= var1113 null-var3792)))
(declare-const var1978 var2997) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1978 null-var2997)))
(define-const var2371 String (cast-from-var2997-to-String var1978)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var3252 String (cap0/-78802468 var1113)) ; Statement: $r3 = $r0.<com.mysql.cj.protocol.ExportControlled$contains__104: java.lang.String cap0> 
(assert true)
(define-const var1914 Bool (contains/1009244746 var3252 (cast-from-String-to-String var2371))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean contains(java.lang.CharSequence)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2997-to-String=([java.lang.Object], java.lang.String), cap0/-78802468=([com.mysql.cj.protocol.ExportControlled$contains__104], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3792=com.mysql.cj.protocol.ExportControlled$contains__104, var1113=$r0, var2997=java.lang.Object, var1978=$r1, var2371=$r2, var3252=$r3, var1914=$z0}
; {com.mysql.cj.protocol.ExportControlled$contains__104=var3792, $r0=var1113, java.lang.Object=var2997, $r1=var1978, $r2=var2371, $r3=var3252, $z0=var1914}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts $r0 := @this: com.mysql.cj.protocol.ExportControlled$contains__104;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<com.mysql.cj.protocol.ExportControlled$contains__104: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean contains(java.lang.CharSequence)>($r2);	return $z0
;block_num 1