(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2856 0)
(declare-sort var555 0)
(declare-sort var2989 0)
(declare-sort var1697 0)
(declare-sort var439 0)
(declare-sort var3071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun consumeToken/-1444615926 (var2856 var555) String)
(declare-fun tokens/663297651 (var2856) var2989)
(declare-fun tokenPos/663297651 (var2856) Int)
(declare-fun var2989_get/-1216255739 (var2989 Int) var1697)
(declare-fun cast-from-var1697-to-var439 (var1697) var439)
(declare-fun currentTokenTypeEquals/-472948643 (var2856 var555) Bool)
(declare-fun var3071-init () var3071)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var3071 String) void)
(declare-const null-var2856 var2856)
(declare-const var555-DOT var555)
(declare-const var555-IDENT var555)
(declare-const var555-LSTRING var555)
(declare-const var977 var2856) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var977 null-var2856)))
(define-const var1118 var555 var555-DOT) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType DOT> 
(assert true)
;(assert (consumeToken/-1444615926 var977 var1118)) ; Statement: virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String consumeToken(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r1) 

(declare-const var977!1 var2856)
(declare-const var1118!1 var555)
(define-const var3913 var2989 (tokens/663297651 var977!1)) ; Statement: $r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(define-const var3358 Int (tokenPos/663297651 var977!1)) ; Statement: $i0 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos> 
(define-const var1187 var1697 (var2989_get/-1216255739 var3913 var3358)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>($i0) 
(define-const var1723 var439 (cast-from-var1697-to-var439 var1187)) ; Statement: r4 = (com.mysql.cj.xdevapi.ExprParser$Token) $r3 
(define-const var1719 var555 var555-IDENT) ; Statement: $r5 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT> 
(assert true)
(define-const var3280 Bool (currentTokenTypeEquals/-472948643 var977!1 var1719)) ; Statement: $z0 = virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: boolean currentTokenTypeEquals(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LSTRING> 
(assert (= (ite var3280 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3259 var555 var555-LSTRING) ; Statement: $r6 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LSTRING> 
(assert true)
(define-const var1123 Bool (currentTokenTypeEquals/-472948643 var977!1 var3259)) ; Statement: $z1 = virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: boolean currentTokenTypeEquals(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r6) 
 ; Statement: if $z1 == 0 goto $r7 = new com.mysql.cj.exceptions.WrongArgumentException 
(assert (= (ite var1123 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3114 var3071 var3071-init) ; Statement: $r7 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var2380 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2380)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2380!1 String)
(assert (= var2380!1 ""))
(assert true)
(define-const var713 String (append/672562846 var2380!1 "Expected token type IDENT or LSTRING in JSON path at token position ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected token type IDENT or LSTRING in JSON path at token position ") 
(declare-const var2380!2 String)
(assert (= var2380!2 (str.++ var2380!1 "Expected token type IDENT or LSTRING in JSON path at token position ")))
(define-const var2299 Int (tokenPos/663297651 var977!1)) ; Statement: $i1 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos> 
(assert true)
(define-const var361 String (append/-1001720160 var713 var2299)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var713!1 String)
(assert (str.prefixof var713 var713!1))
(assert true)
(define-const var1771 String (toString/-2075883882 var361)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var3114 var1771)) ; Statement: specialinvoke $r7.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3114!1 var3071)
(declare-const var1771!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {consumeToken/-1444615926=([com.mysql.cj.xdevapi.ExprParser, com.mysql.cj.xdevapi.ExprParser$TokenType], java.lang.String), tokens/663297651=([com.mysql.cj.xdevapi.ExprParser], java.util.List), tokenPos/663297651=([com.mysql.cj.xdevapi.ExprParser], int), var2989_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1697-to-var439=([java.lang.Object], com.mysql.cj.xdevapi.ExprParser$Token), currentTokenTypeEquals/-472948643=([com.mysql.cj.xdevapi.ExprParser, com.mysql.cj.xdevapi.ExprParser$TokenType], boolean), var3071-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var2856=com.mysql.cj.xdevapi.ExprParser, var977=r0, var555=com.mysql.cj.xdevapi.ExprParser$TokenType, var1118=$r1, var2989=java.util.List, var3913=$r2, var3358=$i0, var1697=java.lang.Object, var1187=$r3, var439=com.mysql.cj.xdevapi.ExprParser$Token, var1723=r4, var1719=$r5, var3280=$z0, var3259=$r6, var1123=$z1, var3071=com.mysql.cj.exceptions.WrongArgumentException, var3114=$r7, var2380=$r8, var713=$r9, var2299=$i1, var361=$r10, var1771=$r11}
; {com.mysql.cj.xdevapi.ExprParser=var2856, r0=var977, com.mysql.cj.xdevapi.ExprParser$TokenType=var555, $r1=var1118, java.util.List=var2989, $r2=var3913, $i0=var3358, java.lang.Object=var1697, $r3=var1187, com.mysql.cj.xdevapi.ExprParser$Token=var439, r4=var1723, $r5=var1719, $z0=var3280, $r6=var3259, $z1=var1123, com.mysql.cj.exceptions.WrongArgumentException=var3071, $r7=var3114, $r8=var2380, $r9=var713, $i1=var2299, $r10=var361, $r11=var1771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	$r1 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType DOT>;	virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String consumeToken(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r1);	$r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$i0 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos>;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>($i0);	r4 = (com.mysql.cj.xdevapi.ExprParser$Token) $r3;	$r5 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType IDENT>;	$z0 = virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: boolean currentTokenTypeEquals(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r5);	if $z0 == 0 goto $r6 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LSTRING>;	$r6 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LSTRING>;	$z1 = virtualinvoke r0.<com.mysql.cj.xdevapi.ExprParser: boolean currentTokenTypeEquals(com.mysql.cj.xdevapi.ExprParser$TokenType)>($r6);	if $z1 == 0 goto $r7 = new com.mysql.cj.exceptions.WrongArgumentException;	$r7 = new com.mysql.cj.exceptions.WrongArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected token type IDENT or LSTRING in JSON path at token position ");	$i1 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 3