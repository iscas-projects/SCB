(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun groupName/66528004 (var2356) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2356 var2356)
(declare-const null-String String)
(declare-const var157 var2356) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference 
(assert (not (= var157 null-var2356)))
(declare-const var1464 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1464 null-String)))
(assert true)
(define-const var1424 String (append/672562846 var1464 "\u005ck<")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\k<") 
(declare-const var1464!1 String)
(assert (= var1464!1 (str.++ var1464 "\u005ck<")))
(define-const var3337 String (groupName/66528004 var157)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference: java.lang.String groupName> 
(assert true)
(define-const var3238 String (append/672562846 var1424 var3337)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1424!1 String)
(assert (= var1424!1 (str.++ var1424 var3337)))
(assert true)
;(assert (append/-1166366385 var3238 62)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3238!1 String)
(assert (str.prefixof var3238 var3238!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), groupName/66528004=([com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2356=com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference, var157=r1, var1464=r0, var1424=$r3, var3337=$r2, var3238=$r4}
; {com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference=var2356, r1=var157, r0=var1464, $r3=var1424, $r2=var3337, $r4=var3238}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\k<");	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedBackReference: java.lang.String groupName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	return
;block_num 1