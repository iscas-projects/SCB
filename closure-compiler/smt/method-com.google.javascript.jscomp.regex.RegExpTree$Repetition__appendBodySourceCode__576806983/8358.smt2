(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var3385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun body/1433046282 (var1499) var3385)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendSourceCode/-1293869604 (var3385 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1499 var1499)
(declare-const null-String String)
(declare-const var1775 var1499) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition 
(assert (not (= var1775 null-var1499)))
(declare-const var1994 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1994 null-String)))
(define-const var3496 var3385 (body/1433046282 var1775)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: com.google.javascript.jscomp.regex.RegExpTree body> 
(define-const var359 Bool false) ; Statement: $z0 = $r1 instanceof com.google.javascript.jscomp.regex.RegExpTree$Alternation 
 ; Statement: if $z0 != 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:") 
(assert (not (= (ite var359 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var1994 "(?:")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:") 
(declare-const var1994!1 String)
(assert (= var1994!1 (str.++ var1994 "(?:")))
(define-const var81 var3385 (body/1433046282 var1775)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var81 var1994!1)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r2) 

(declare-const var81!1 var3385)
(declare-const var1994!2 String)
(assert true)
;(assert (append/-1166366385 var1994!2 41)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1994!3 String)
(assert (str.prefixof var1994!2 var1994!3))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {body/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], com.google.javascript.jscomp.regex.RegExpTree), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1499=com.google.javascript.jscomp.regex.RegExpTree$Repetition, var1775=r0, var1994=r2, var3385=com.google.javascript.jscomp.regex.RegExpTree, var3496=$r1, var359=$z0, var81=$r10}
; {com.google.javascript.jscomp.regex.RegExpTree$Repetition=var1499, r0=var1775, r2=var1994, com.google.javascript.jscomp.regex.RegExpTree=var3385, $r1=var3496, $z0=var359, $r10=var81}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition;	r2 := @parameter0: java.lang.StringBuilder;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: com.google.javascript.jscomp.regex.RegExpTree body>;	$z0 = $r1 instanceof com.google.javascript.jscomp.regex.RegExpTree$Alternation;	if $z0 != 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:");	$r10 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r10.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r2);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	goto [?= return];	return
;block_num 3