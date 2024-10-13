(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1730 0)
(declare-sort var560 0)
(declare-sort var2172 0)
(declare-sort var2267 0)
(declare-sort var2205 0)
(declare-sort var1792 0)
(declare-sort var1812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun consumeToken/-1444615926 (var1730 var560) String)
(declare-fun tokens/663297651 (var1730) var2172)
(declare-fun tokenPos/663297651 (var1730) Int)
(declare-fun var2172_get/-1216255739 (var2172 Int) var2267)
(declare-fun cast-from-var2267-to-var2205 (var2267) var2205)
(declare-fun currentTokenTypeEquals/-472948643 (var1730 var560) Bool)
(declare-fun value/-1654031256 (var2205) String)
(declare-fun var1792_quoteIdentifier/-407364542 (String) String)
(declare-fun var1812-init () var1812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var1812 String) void)
(declare-const null-var1730 var1730)
(declare-const var560-DOT var560)
(declare-const var560-IDENT var560)
(declare-const var3475 var1730) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var3475 null-var1730)))
(define-const var1432 var560 var560-DOT) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType DOT> 
(assert true)
;(assert (consumeToken/-1444615926 var3475 var1432)) ; Statement: virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String consumeToken(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r1) 

(declare-const var3475!1 var1730)
(declare-const var1432!1 var560)
(define-const var487 var2172 (tokens/663297651 var3475!1)) ; Statement: $r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(define-const var1211 Int (tokenPos/663297651 var3475!1)) ; Statement: $i0 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos> 
(define-const var3354 var2267 (var2172_get/-1216255739 var487 var1211)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>($i0) 
(define-const var1433 var2205 (cast-from-var2267-to-var2205 var3354)) ; Statement: r4 = (com.mysql.cj.xdevapi.ExprParser$Token) $r3 
(define-const var823 var560 var560-IDENT) ; Statement: $r5 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT> 
(assert true)
(define-const var3535 Bool (currentTokenTypeEquals/-472948643 var3475!1 var823)) ; Statement: $z0 = virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: boolean currentTokenTypeEquals(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LSTRING> 
(assert (not (= (ite var3535 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3690 String (value/-1654031256 var1433)) ; Statement: $r16 = r4.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value> 
(define-const var2849 String (value/-1654031256 var1433)) ; Statement: $r15 = r4.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value> 
(define-const var220 String (var1792_quoteIdentifier/-407364542 var2849)) ; Statement: $r17 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r15) 
(assert true)
(define-const var419 Bool (= var3690 var220)) ; Statement: $z2 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>($r17) 
 ; Statement: if $z2 != 0 goto $r18 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT> 
(assert (not (not (= (ite var419 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2935 var1812 var1812-init) ; Statement: $r20 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var695 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var695)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var695!1 String)
(assert (= var695!1 ""))
(assert true)
(define-const var1420 String (append/672562846 var695!1 "\u0027")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var695!2 String)
(assert (= var695!2 (str.++ var695!1 "\u0027")))
(define-const var3195 String (value/-1654031256 var1433)) ; Statement: $r22 = r4.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value> 
(assert true)
(define-const var912 String (append/672562846 var1420 var3195)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1420!1 String)
(assert (= var1420!1 (str.++ var1420 var3195)))
(assert true)
(define-const var3411 String (append/672562846 var912 "\u0027 is not a valid JSON/ECMAScript identifier")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not a valid JSON/ECMAScript identifier") 
(declare-const var912!1 String)
(assert (= var912!1 (str.++ var912 "\u0027 is not a valid JSON/ECMAScript identifier")))
(assert true)
(define-const var2377 String (toString/-2075883882 var3411)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var2935 var2377)) ; Statement: specialinvoke $r20.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r26) 

(declare-const var2935!1 var1812)
(declare-const var2377!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {consumeToken/-1444615926=([com.mysql.cj.xdevapi.ExprParser, com.mysql.cj.xdevapi.ExprParser$TokenType], java.lang.String), tokens/663297651=([com.mysql.cj.xdevapi.ExprParser], java.util.List), tokenPos/663297651=([com.mysql.cj.xdevapi.ExprParser], int), var2172_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2267-to-var2205=([java.lang.Object], com.mysql.cj.xdevapi.ExprParser$Token), currentTokenTypeEquals/-472948643=([com.mysql.cj.xdevapi.ExprParser, com.mysql.cj.xdevapi.ExprParser$TokenType], boolean), value/-1654031256=([com.mysql.cj.xdevapi.ExprParser$Token], java.lang.String), var1792_quoteIdentifier/-407364542=([java.lang.String], java.lang.String), var1812-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var1730=com.mysql.cj.xdevapi.ExprParser, var3475=r0, var560=com.mysql.cj.xdevapi.ExprParser$TokenType, var1432=$r1, var2172=java.util.List, var487=$r2, var1211=$i0, var2267=java.lang.Object, var3354=$r3, var2205=com.mysql.cj.xdevapi.ExprParser$Token, var1433=r4, var823=$r5, var3535=$z0, var3690=$r16, var2849=$r15, var1792=com.mysql.cj.xdevapi.ExprUnparser, var220=$r17, var419=$z2, var1812=com.mysql.cj.exceptions.WrongArgumentException, var2935=$r20, var695=$r21, var1420=$r23, var3195=$r22, var912=$r24, var3411=$r25, var2377=$r26}
; {com.mysql.cj.xdevapi.ExprParser=var1730, r0=var3475, com.mysql.cj.xdevapi.ExprParser$TokenType=var560, $r1=var1432, java.util.List=var2172, $r2=var487, $i0=var1211, java.lang.Object=var2267, $r3=var3354, com.mysql.cj.xdevapi.ExprParser$Token=var2205, r4=var1433, $r5=var823, $z0=var3535, $r16=var3690, $r15=var2849, com.mysql.cj.xdevapi.ExprUnparser=var1792, $r17=var220, $z2=var419, com.mysql.cj.exceptions.WrongArgumentException=var1812, $r20=var2935, $r21=var695, $r23=var1420, $r22=var3195, $r24=var912, $r25=var3411, $r26=var2377}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	$r1 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType DOT>;	virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String consumeToken(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r1);	$r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$i0 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos>;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>($i0);	r4 = (com.mysql.cj.xdevapi.ExprParser$Token) $r3;	$r5 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT>;	$z0 = virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: boolean currentTokenTypeEquals(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r5);	if $z0 == 0 goto $r6 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LSTRING>;	$r16 = r4.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value>;	$r15 = r4.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value>;	$r17 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r15);	$z2 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>($r17);	if $z2 != 0 goto $r18 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT>;	$r20 = new com.mysql.cj.exceptions.WrongArgumentException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r22 = r4.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not a valid JSON/ECMAScript identifier");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r26);	throw $r20
;block_num 3