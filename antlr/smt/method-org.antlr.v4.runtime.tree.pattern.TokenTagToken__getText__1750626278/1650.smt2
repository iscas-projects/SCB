(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2099 0)
(declare-sort var1420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-1415157499 (var2099) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokenName/-1415157499 (var2099) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2099 var2099)
(declare-const null-String String)
(declare-const var737 var2099) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.pattern.TokenTagToken 
(assert (not (= var737 null-var2099)))
(define-const var1015 String (label/-1415157499 var737)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var1015 null-String)) ; Cond: $r1 == null 
(define-const var1232 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1232)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1232!1 String)
(assert (= var1232!1 ""))
(assert true)
(define-const var3782 String (append/672562846 var1232!1 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1232!2 String)
(assert (= var1232!2 (str.++ var1232!1 "<")))
(define-const var905 String (tokenName/-1415157499 var737)) ; Statement: $r3 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String tokenName> 
(assert true)
(define-const var1516 String (append/672562846 var3782 var905)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3782!1 String)
(assert (= var3782!1 (str.++ var3782 var905)))
(assert true)
(define-const var220 String (append/672562846 var1516 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1516!1 String)
(assert (= var1516!1 (str.++ var1516 ">")))
(assert true)
(define-const var3389 String (toString/-2075883882 var220)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-1415157499=([org.antlr.v4.runtime.tree.pattern.TokenTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokenName/-1415157499=([org.antlr.v4.runtime.tree.pattern.TokenTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2099=org.antlr.v4.runtime.tree.pattern.TokenTagToken, var737=r0, var1015=$r1, var1420=null_type, var1232=$r2, var3782=$r4, var905=$r3, var1516=$r5, var220=$r6, var3389=$r7}
; {org.antlr.v4.runtime.tree.pattern.TokenTagToken=var2099, r0=var737, $r1=var1015, null_type=var1420, $r2=var1232, $r4=var3782, $r3=var905, $r5=var1516, $r6=var220, $r7=var3389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.pattern.TokenTagToken;	$r1 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String tokenName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2