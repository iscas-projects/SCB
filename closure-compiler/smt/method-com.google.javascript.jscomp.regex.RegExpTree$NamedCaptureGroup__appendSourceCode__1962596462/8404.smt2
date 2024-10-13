(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3735 0)
(declare-sort var3845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1833798137 (var3735) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun body/1833798137 (var3735) var3845)
(declare-fun appendSourceCode/-1293869604 (var3845 String) void)
(declare-const null-var3735 var3735)
(declare-const null-String String)
(declare-const var201 var3735) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup 
(assert (not (= var201 null-var3735)))
(declare-const var3625 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3625 null-String)))
(assert true)
;(assert (append/672562846 var3625 "(?<")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?<") 
(declare-const var3625!1 String)
(assert (= var3625!1 (str.++ var3625 "(?<")))
(define-const var369 String (name/1833798137 var201)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3625!1 var369)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3625!2 String)
(assert (= var3625!2 (str.++ var3625!1 var369)))
(assert true)
;(assert (append/-1166366385 var3625!2 62)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3625!3 String)
(assert (str.prefixof var3625!2 var3625!3))
(define-const var2937 var3845 (body/1833798137 var201)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var2937 var3625!3)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var2937!1 var3845)
(declare-const var3625!4 String)
(assert true)
;(assert (append/-1166366385 var3625!4 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3625!5 String)
(assert (str.prefixof var3625!4 var3625!5))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1833798137=([com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), body/1833798137=([com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup], com.google.javascript.jscomp.regex.RegExpTree), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void)}
; {var3735=com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup, var201=r1, var3625=r0, var369=$r2, var3845=com.google.javascript.jscomp.regex.RegExpTree, var2937=$r3}
; {com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup=var3735, r1=var201, r0=var3625, $r2=var369, com.google.javascript.jscomp.regex.RegExpTree=var3845, $r3=var2937}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?<");	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup: java.lang.String name>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r3 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r3.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1