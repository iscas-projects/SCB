(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2580 0)
(declare-sort var768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-1415157499 (var2580) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokenName/-1415157499 (var2580) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2580 var2580)
(declare-const null-String String)
(declare-const var2545 var2580) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.pattern.TokenTagToken 
(assert (not (= var2545 null-var2580)))
(define-const var2098 String (label/-1415157499 var2545)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var2098 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1664 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1664)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1664!1 String)
(assert (= var1664!1 ""))
(assert true)
(define-const var1173 String (append/672562846 var1664!1 "<")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1664!2 String)
(assert (= var1664!2 (str.++ var1664!1 "<")))
(define-const var834 String (label/-1415157499 var2545)) ; Statement: $r9 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String label> 
(assert true)
(define-const var2881 String (append/672562846 var1173 var834)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1173!1 String)
(assert (= var1173!1 (str.++ var1173 var834)))
(assert true)
(define-const var1020 String (append/672562846 var2881 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2881!1 String)
(assert (= var2881!1 (str.++ var2881 ":")))
(define-const var2345 String (tokenName/-1415157499 var2545)) ; Statement: $r12 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String tokenName> 
(assert true)
(define-const var534 String (append/672562846 var1020 var2345)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1020!1 String)
(assert (= var1020!1 (str.++ var1020 var2345)))
(assert true)
(define-const var1762 String (append/672562846 var534 ">")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var534!1 String)
(assert (= var534!1 (str.++ var534 ">")))
(assert true)
(define-const var3976 String (toString/-2075883882 var1762)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-1415157499=([org.antlr.v4.runtime.tree.pattern.TokenTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokenName/-1415157499=([org.antlr.v4.runtime.tree.pattern.TokenTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2580=org.antlr.v4.runtime.tree.pattern.TokenTagToken, var2545=r0, var2098=$r1, var768=null_type, var1664=$r8, var1173=$r10, var834=$r9, var2881=$r11, var1020=$r13, var2345=$r12, var534=$r14, var1762=$r15, var3976=$r16}
; {org.antlr.v4.runtime.tree.pattern.TokenTagToken=var2580, r0=var2545, $r1=var2098, null_type=var768, $r8=var1664, $r10=var1173, $r9=var834, $r11=var2881, $r13=var1020, $r12=var2345, $r14=var534, $r15=var1762, $r16=var3976}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.pattern.TokenTagToken;	$r1 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r9 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String label>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = r0.<org.antlr.v4.runtime.tree.pattern.TokenTagToken: java.lang.String tokenName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2