(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var328 0)
(declare-sort var2016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/679542414 (var328) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleName/679542414 (var328) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var328 var328)
(declare-const null-String String)
(declare-const var736 var328) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.pattern.RuleTagToken 
(assert (not (= var736 null-var328)))
(define-const var1309 String (label/679542414 var736)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1309 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3994 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3994)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3994!1 String)
(assert (= var3994!1 ""))
(assert true)
(define-const var2964 String (append/672562846 var3994!1 "<")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var3994!2 String)
(assert (= var3994!2 (str.++ var3994!1 "<")))
(define-const var1711 String (label/679542414 var736)) ; Statement: $r9 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String label> 
(assert true)
(define-const var2952 String (append/672562846 var2964 var1711)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2964!1 String)
(assert (= var2964!1 (str.++ var2964 var1711)))
(assert true)
(define-const var1134 String (append/672562846 var2952 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2952!1 String)
(assert (= var2952!1 (str.++ var2952 ":")))
(define-const var2157 String (ruleName/679542414 var736)) ; Statement: $r12 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String ruleName> 
(assert true)
(define-const var69 String (append/672562846 var1134 var2157)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1134!1 String)
(assert (= var1134!1 (str.++ var1134 var2157)))
(assert true)
(define-const var3344 String (append/672562846 var69 ">")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var69!1 String)
(assert (= var69!1 (str.++ var69 ">")))
(assert true)
(define-const var3114 String (toString/-2075883882 var3344)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {label/679542414=([org.antlr.v4.runtime.tree.pattern.RuleTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleName/679542414=([org.antlr.v4.runtime.tree.pattern.RuleTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var328=org.antlr.v4.runtime.tree.pattern.RuleTagToken, var736=r0, var1309=$r1, var2016=null_type, var3994=$r8, var2964=$r10, var1711=$r9, var2952=$r11, var1134=$r13, var2157=$r12, var69=$r14, var3344=$r15, var3114=$r16}
; {org.antlr.v4.runtime.tree.pattern.RuleTagToken=var328, r0=var736, $r1=var1309, null_type=var2016, $r8=var3994, $r10=var2964, $r9=var1711, $r11=var2952, $r13=var1134, $r12=var2157, $r14=var69, $r15=var3344, $r16=var3114}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.pattern.RuleTagToken;	$r1 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r9 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String label>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String ruleName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2