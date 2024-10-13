(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2114 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/679542414 (var2114) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleName/679542414 (var2114) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2114 var2114)
(declare-const null-String String)
(declare-const var3956 var2114) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.pattern.RuleTagToken 
(assert (not (= var3956 null-var2114)))
(define-const var2902 String (label/679542414 var3956)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2902 null-String)) ; Cond: $r1 == null 
(define-const var3263 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3263)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3263!1 String)
(assert (= var3263!1 ""))
(assert true)
(define-const var1214 String (append/672562846 var3263!1 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var3263!2 String)
(assert (= var3263!2 (str.++ var3263!1 "<")))
(define-const var149 String (ruleName/679542414 var3956)) ; Statement: $r3 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String ruleName> 
(assert true)
(define-const var1634 String (append/672562846 var1214 var149)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1214!1 String)
(assert (= var1214!1 (str.++ var1214 var149)))
(assert true)
(define-const var3954 String (append/672562846 var1634 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1634!1 String)
(assert (= var1634!1 (str.++ var1634 ">")))
(assert true)
(define-const var3901 String (toString/-2075883882 var3954)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {label/679542414=([org.antlr.v4.runtime.tree.pattern.RuleTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleName/679542414=([org.antlr.v4.runtime.tree.pattern.RuleTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2114=org.antlr.v4.runtime.tree.pattern.RuleTagToken, var3956=r0, var2902=$r1, var528=null_type, var3263=$r2, var1214=$r4, var149=$r3, var1634=$r5, var3954=$r6, var3901=$r7}
; {org.antlr.v4.runtime.tree.pattern.RuleTagToken=var2114, r0=var3956, $r1=var2902, null_type=var528, $r2=var3263, $r4=var1214, $r3=var149, $r5=var1634, $r6=var3954, $r7=var3901}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.pattern.RuleTagToken;	$r1 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = r0.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String ruleName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2