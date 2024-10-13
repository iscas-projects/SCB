(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun text/-1721619322 (var2236) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2236 var2236)
(declare-const null-String String)
(declare-const var991 var2236) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text 
(assert (not (= var991 null-var2236)))
(declare-const var3750 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3750 null-String)))
(assert true)
(define-const var2931 String (append/-1166366385 var3750 96)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96) 
(declare-const var3750!1 String)
(assert (str.prefixof var3750 var3750!1))
(define-const var874 String (text/-1721619322 var991)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text> 
(assert true)
(define-const var936 String (append/672562846 var2931 var874)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 var874)))
(assert true)
;(assert (append/-1166366385 var936 96)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96) 
(declare-const var936!1 String)
(assert (str.prefixof var936 var936!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), text/-1721619322=([com.google.javascript.jscomp.regex.RegExpTree$Text], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2236=com.google.javascript.jscomp.regex.RegExpTree$Text, var991=r1, var3750=r0, var2931=$r3, var874=$r2, var936=$r4}
; {com.google.javascript.jscomp.regex.RegExpTree$Text=var2236, r1=var991, r0=var3750, $r3=var2931, $r2=var874, $r4=var936}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96);	return
;block_num 1