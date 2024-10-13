(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/2052548810 (String String) void)
(declare-fun reverse/1133943941 (String) String)
(declare-const null-String String)
(declare-const var3600 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3600 null-String)))
(define-const var2501 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/2052548810 var2501 var3600)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r1) 

(declare-const var2501!1 String)
(declare-const var3600!1 String)
(assert true)
(define-const var975 String (reverse/1133943941 var2501!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/2052548810=([java.lang.StringBuilder, java.lang.CharSequence], void), reverse/1133943941=([java.lang.StringBuilder], java.lang.StringBuilder)}
; {var3600=r1, var2501=$r0, var975=$r2}
; {r1=var3600, $r0=var2501, $r2=var975}
;seq <java.lang.StringBuilder: void <init>(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder reverse()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder reverse()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>();	return $r2
;block_num 1