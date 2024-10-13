(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun groupName/66528004 (var3872) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3872 var3872)
(declare-const null-String String)
(declare-const var3725 var3872) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference 
(assert (not (= var3725 null-var3872)))
(declare-const var1092 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1092 null-String)))
(define-const var1175 String (groupName/66528004 var3725)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference: java.lang.String groupName> 
(assert true)
;(assert (append/672562846 var1092 var1175)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1092!1 String)
(assert (= var1092!1 (str.++ var1092 var1175)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {groupName/66528004=([com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3872=com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference, var3725=r1, var1092=r0, var1175=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference=var3872, r1=var3725, r0=var1092, $r2=var1175}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference: java.lang.String groupName>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 1