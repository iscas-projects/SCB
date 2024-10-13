(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2698 0)
(declare-sort var517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var517-to-String (var517) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2698 var2698)
(declare-const null-var517 var517)
(declare-const var1534 var2698) ; Statement: $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$append__248 
(assert (not (= var1534 null-var2698)))
(declare-const var3563 var517) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3563 null-var517)))
(declare-const var3194 var517) ; Statement: $r2 := @parameter1: java.lang.Object 
(assert (not (= var3194 null-var517)))
(define-const var1423 String (cast-from-var517-to-String var3563)) ; Statement: $r3 = (java.lang.StringBuilder) $r1 
(define-const var3700 String (cast-from-var517-to-String var3194)) ; Statement: $r4 = (java.lang.StringBuilder) $r2 
(assert true)
(define-const var1888 String (append/-13659068 var1423 (cast-from-String-to-String var3700))) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4) 
(declare-const var1423!1 String)
(assert (str.prefixof var1423 var1423!1))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var517-to-String=([java.lang.Object], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var2698=org.apache.commons.lang3.stream.LangCollectors$append__248, var1534=$r0, var517=java.lang.Object, var3563=$r1, var3194=$r2, var1423=$r3, var3700=$r4, var1888=$r5}
; {org.apache.commons.lang3.stream.LangCollectors$append__248=var2698, $r0=var1534, java.lang.Object=var517, $r1=var3563, $r2=var3194, $r3=var1423, $r4=var3700, $r5=var1888}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1}
;stmts $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$append__248;	$r1 := @parameter0: java.lang.Object;	$r2 := @parameter1: java.lang.Object;	$r3 = (java.lang.StringBuilder) $r1;	$r4 = (java.lang.StringBuilder) $r2;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4);	return $r5
;block_num 1