(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun groupIndex/-507954453 (var2749) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const null-var2749 var2749)
(declare-const null-String String)
(declare-const var421 var2749) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$BackReference 
(assert (not (= var421 null-var2749)))
(declare-const var3660 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3660 null-String)))
(assert true)
(define-const var3197 String (append/-1166366385 var3660 92)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92) 
(declare-const var3660!1 String)
(assert (str.prefixof var3660 var3660!1))
(define-const var2068 Int (groupIndex/-507954453 var421)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$BackReference: int groupIndex> 
(assert true)
;(assert (append/-1001720160 var3197 var2068)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3197!1 String)
(assert (str.prefixof var3197 var3197!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), groupIndex/-507954453=([com.google.javascript.jscomp.regex.RegExpTree$BackReference], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var2749=com.google.javascript.jscomp.regex.RegExpTree$BackReference, var421=r1, var3660=r0, var3197=$r2, var2068=$i0}
; {com.google.javascript.jscomp.regex.RegExpTree$BackReference=var2749, r1=var421, r0=var3660, $r2=var3197, $i0=var2068}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$BackReference;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);	$i0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$BackReference: int groupIndex>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	return
;block_num 1