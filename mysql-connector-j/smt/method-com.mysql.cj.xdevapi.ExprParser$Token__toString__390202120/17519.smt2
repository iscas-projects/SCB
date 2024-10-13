(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var3744 0)
(declare-sort var2415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-1654031256 (var2194) var3744)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/1761020461 (var2415) String)
(declare-fun cast-from-var3744-to-var2415 (var3744) var2415)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1654031256 (var2194) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2194 var2194)
(declare-const var3744-IDENT var3744)
(declare-const var3392 var2194) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser$Token 
(assert (not (= var3392 null-var2194)))
(define-const var2496 var3744 (type/-1654031256 var3392)) ; Statement: $r2 = r0.<com.mysql.cj.xdevapi.ExprParser$Token: com.mysql.cj.xdevapi.ExprParser$TokenType type> 
(define-const var1727 var3744 var3744-IDENT) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT> 
 ; Statement: if $r2 == $r1 goto $r11 = new java.lang.StringBuilder 
(assert (= var2496 var1727)) ; Cond: $r2 == $r1 
(define-const var2915 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2915)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2915!1 String)
(assert (= var2915!1 ""))
(define-const var158 var3744 (type/-1654031256 var3392)) ; Statement: $r12 = r0.<com.mysql.cj.xdevapi.ExprParser$Token: com.mysql.cj.xdevapi.ExprParser$TokenType type> 
(assert true)
(define-const var2756 String (toString/1761020461 (cast-from-var3744-to-var2415 var158))) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.xdevapi.ExprParser$TokenType: java.lang.String toString()>() 
(assert true)
(define-const var528 String (append/672562846 var2915!1 var2756)) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2915!2 String)
(assert (= var2915!2 (str.++ var2915!1 var2756)))
(assert true)
(define-const var779 String (append/672562846 var528 "(")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var528!1 String)
(assert (= var528!1 (str.++ var528 "(")))
(define-const var2953 String (value/-1654031256 var3392)) ; Statement: $r16 = r0.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value> 
(assert true)
(define-const var916 String (append/672562846 var779 var2953)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var779!1 String)
(assert (= var779!1 (str.++ var779 var2953)))
(assert true)
(define-const var60 String (append/672562846 var916 ")")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var916!1 String)
(assert (= var916!1 (str.++ var916 ")")))
(assert true)
(define-const var1603 String (toString/-2075883882 var60)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-1654031256=([com.mysql.cj.xdevapi.ExprParser$Token], com.mysql.cj.xdevapi.ExprParser$TokenType), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/1761020461=([java.lang.Enum], java.lang.String), cast-from-var3744-to-var2415=([com.mysql.cj.xdevapi.ExprParser$TokenType], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1654031256=([com.mysql.cj.xdevapi.ExprParser$Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2194=com.mysql.cj.xdevapi.ExprParser$Token, var3392=r0, var3744=com.mysql.cj.xdevapi.ExprParser$TokenType, var2496=$r2, var1727=$r1, var2915=$r11, var158=$r12, var2415=java.lang.Enum, var2756=$r13, var528=$r14, var779=$r15, var2953=$r16, var916=$r17, var60=$r18, var1603=$r19}
; {com.mysql.cj.xdevapi.ExprParser$Token=var2194, r0=var3392, com.mysql.cj.xdevapi.ExprParser$TokenType=var3744, $r2=var2496, $r1=var1727, $r11=var2915, $r12=var158, java.lang.Enum=var2415, $r13=var2756, $r14=var528, $r15=var779, $r16=var2953, $r17=var916, $r18=var60, $r19=var1603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Enum: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser$Token;	$r2 = r0.<com.mysql.cj.xdevapi.ExprParser$Token: com.mysql.cj.xdevapi.ExprParser$TokenType type>;	$r1 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT>;	if $r2 == $r1 goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = r0.<com.mysql.cj.xdevapi.ExprParser$Token: com.mysql.cj.xdevapi.ExprParser$TokenType type>;	$r13 = virtualinvoke $r12.<com.mysql.cj.xdevapi.ExprParser$TokenType: java.lang.String toString()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r16 = r0.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value>;	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 2