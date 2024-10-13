(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3317 0)
(declare-sort var2299 0)
(declare-sort var2109 0)
(declare-sort var1638 0)
(declare-sort var378 0)
(declare-sort var1413 0)
(declare-sort var2665 0)
(declare-sort var467 0)
(declare-sort var3439 0)
(declare-sort var2856 0)
(declare-sort var742 0)
(declare-sort var2554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/586517476 (var3317) var2299)
(declare-fun var2299_getPropertyName/25291882 (var2299) String)
(declare-fun cast-from-var2299-to-var2109 (var2299) var2109)
(declare-fun getToken/-1133296170 (var2109) Int)
(declare-fun finish/-954945785 (var1638) Int)
(declare-fun cast-from-var3317-to-var1638 (var3317) var1638)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var378_encode/-966502321 (String) String)
(declare-fun createIdentNode/-161369918 (var1638 Int Int String) var1413)
(declare-fun expect/-414920746 (var1638 var2665) void)
(declare-fun type/-954945785 (var1638) var2665)
(declare-fun getIdent/1219559664 (var1638) var1413)
(declare-fun verifyStrictIdent/1039619151 (var3317 var1413 String) void)
(declare-fun var467-init () var467)
(declare-fun <init>/-325640736 (var467) void)
(declare-fun functionBody/-1744581561 (var3317 Int var1413 var742 var3439 Int) var2856)
(declare-fun cast-from-var467-to-var742 (var467) var742)
(declare-fun var2554-init () var2554)
(declare-fun <init>/36305993 (var2554 var2299 var2856) void)
(declare-const null-var3317 var3317)
(declare-const null-Int Int)
(declare-const var2665-LPAREN var2665)
(declare-const var2665-IDENT var2665)
(declare-const var2665-RPAREN var2665)
(declare-const null-var1413 var1413)
(declare-const var3439-SETTER var3439)
(declare-const var1286 var3317) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var1286 null-var3317)))
(declare-const var3007 Int) ; Statement: l2 := @parameter0: long 
(assert (not (= var3007 null-Int)))
(declare-const var3222 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3222 null-Int)))
(assert true)
(define-const var3503 var2299 (propertyName/586517476 var1286)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>() 
(define-const var1512 String (var2299_getPropertyName/25291882 var3503)) ; Statement: r2 = interfaceinvoke r1.<jdk.nashorn.internal.ir.PropertyKey: java.lang.String getPropertyName()>() 
(define-const var2614 var2109 (cast-from-var2299-to-var2109 var3503)) ; Statement: $r3 = (jdk.nashorn.internal.ir.Node) r1 
(assert true)
(define-const var738 Int (getToken/-1133296170 var2614)) ; Statement: $l1 = virtualinvoke $r3.<jdk.nashorn.internal.ir.Node: long getToken()>() 
(define-const var3978 Int (finish/-954945785 (cast-from-var3317-to-var1638 var1286))) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.Parser: int finish> 
(define-const var1632 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1632)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1632!1 String)
(assert (= var1632!1 ""))
(assert true)
(define-const var1875 String (append/672562846 var1632!1 "set ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1632!2 String)
(assert (= var1632!2 (str.++ var1632!1 "set ")))
(assert true)
(define-const var2952 String (append/672562846 var1875 var1512)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1875!1 String)
(assert (= var1875!1 (str.++ var1875 var1512)))
(assert true)
(define-const var3660 String (toString/-2075883882 var2952)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var413 String (var378_encode/-966502321 var3660)) ; Statement: $r8 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>($r7) 
(assert true)
(define-const var398 var1413 (createIdentNode/-161369918 (cast-from-var3317-to-var1638 var1286) var738 var3978 var413)) ; Statement: r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode createIdentNode(long,int,java.lang.String)>($l1, $i0, $r8) 
(define-const var3311 var2665 var2665-LPAREN) ; Statement: $r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType LPAREN> 
(assert true)
;(assert (expect/-414920746 (cast-from-var3317-to-var1638 var1286) var3311)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r10) 

(declare-const var1286!1 var3317)
(declare-const var3311!1 var2665)
(define-const var2100 var2665 (type/-954945785 (cast-from-var3317-to-var1638 var1286!1))) ; Statement: $r12 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type> 
(define-const var1982 var2665 var2665-IDENT) ; Statement: $r11 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT> 
 ; Statement: if $r12 == $r11 goto $r18 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode getIdent()>() 
(assert (= var2100 var1982)) ; Cond: $r12 == $r11 
(assert true)
(define-const var2698 var1413 (getIdent/1219559664 (cast-from-var3317-to-var1638 var1286!1))) ; Statement: $r18 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode getIdent()>() 
(define-const var3988 var1413 var2698) ; Statement: r19 = $r18 
(assert true)
;(assert (verifyStrictIdent/1039619151 var1286!1 var2698 "setter argument")) ; Statement: specialinvoke r0.<jdk.nashorn.internal.parser.Parser: void verifyStrictIdent(jdk.nashorn.internal.ir.IdentNode,java.lang.String)>($r18, "setter argument") 

(declare-const var1286!2 var3317)
(declare-const var2698!1 var1413)
(declare-const var977 String)
 ; Statement: goto [?= $r13 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType RPAREN>] 
(assert true) ; Non Conditional
(define-const var3491 var2665 var2665-RPAREN) ; Statement: $r13 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType RPAREN> 
(assert true)
;(assert (expect/-414920746 (cast-from-var3317-to-var1638 var1286!2) var3491)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r13) 

(declare-const var1286!3 var3317)
(declare-const var3491!1 var2665)
(define-const var3813 var467 var467-init) ; Statement: $r14 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3813)) ; Statement: specialinvoke $r14.<java.util.ArrayList: void <init>()>() 

(declare-const var3813!1 var467)
 ; Statement: if r19 == null goto $r15 = <jdk.nashorn.internal.ir.FunctionNode$Kind: jdk.nashorn.internal.ir.FunctionNode$Kind SETTER> 
(assert (= var3988 null-var1413)) ; Cond: r19 == null 
(define-const var1702 var3439 var3439-SETTER) ; Statement: $r15 = <jdk.nashorn.internal.ir.FunctionNode$Kind: jdk.nashorn.internal.ir.FunctionNode$Kind SETTER> 
(assert true)
(define-const var598 var2856 (functionBody/-1744581561 var1286!3 var3007 var398 (cast-from-var467-to-var742 var3813!1) var1702 var3222)) ; Statement: $r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.FunctionNode functionBody(long,jdk.nashorn.internal.ir.IdentNode,java.util.List,jdk.nashorn.internal.ir.FunctionNode$Kind,int)>(l2, r9, $r14, $r15, i3) 
(define-const var847 var2554 var2554-init) ; Statement: $r16 = new jdk.nashorn.internal.parser.Parser$PropertyFunction 
(assert true)
;(assert (<init>/36305993 var847 var3503 var598)) ; Statement: specialinvoke $r16.<jdk.nashorn.internal.parser.Parser$PropertyFunction: void <init>(jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.FunctionNode)>(r1, $r17) 

(declare-const var847!1 var2554)
(declare-const var3503!1 var2299)
(declare-const var598!1 var2856)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/586517476=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.ir.PropertyKey), var2299_getPropertyName/25291882=([jdk.nashorn.internal.ir.PropertyKey], java.lang.String), cast-from-var2299-to-var2109=([jdk.nashorn.internal.ir.PropertyKey], jdk.nashorn.internal.ir.Node), getToken/-1133296170=([jdk.nashorn.internal.ir.Node], long), finish/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), cast-from-var3317-to-var1638=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.parser.AbstractParser), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var378_encode/-966502321=([java.lang.String], java.lang.String), createIdentNode/-161369918=([jdk.nashorn.internal.parser.AbstractParser, long, int, java.lang.String], jdk.nashorn.internal.ir.IdentNode), expect/-414920746=([jdk.nashorn.internal.parser.AbstractParser, jdk.nashorn.internal.parser.TokenType], void), type/-954945785=([jdk.nashorn.internal.parser.AbstractParser], jdk.nashorn.internal.parser.TokenType), getIdent/1219559664=([jdk.nashorn.internal.parser.AbstractParser], jdk.nashorn.internal.ir.IdentNode), verifyStrictIdent/1039619151=([jdk.nashorn.internal.parser.Parser, jdk.nashorn.internal.ir.IdentNode, java.lang.String], void), var467-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), functionBody/-1744581561=([jdk.nashorn.internal.parser.Parser, long, jdk.nashorn.internal.ir.IdentNode, java.util.List, jdk.nashorn.internal.ir.FunctionNode$Kind, int], jdk.nashorn.internal.ir.FunctionNode), cast-from-var467-to-var742=([java.util.ArrayList], java.util.List), var2554-init=([], jdk.nashorn.internal.parser.Parser$PropertyFunction), <init>/36305993=([jdk.nashorn.internal.parser.Parser$PropertyFunction, jdk.nashorn.internal.ir.PropertyKey, jdk.nashorn.internal.ir.FunctionNode], void)}
; {var3317=jdk.nashorn.internal.parser.Parser, var1286=r0, var3007=l2, var3222=i3, var2299=jdk.nashorn.internal.ir.PropertyKey, var3503=r1, var1512=r2, var2109=jdk.nashorn.internal.ir.Node, var2614=$r3, var738=$l1, var1638=jdk.nashorn.internal.parser.AbstractParser, var3978=$i0, var1632=$r4, var1875=$r5, var2952=$r6, var3660=$r7, var378=jdk.internal.dynalink.support.NameCodec, var413=$r8, var1413=jdk.nashorn.internal.ir.IdentNode, var398=r9, var2665=jdk.nashorn.internal.parser.TokenType, var3311=$r10, var2100=$r12, var1982=$r11, var2698=$r18, var3988=r19, var977="setter argument", var3491=$r13, var467=java.util.ArrayList, var3813=$r14, var3439=jdk.nashorn.internal.ir.FunctionNode$Kind, var1702=$r15, var2856=jdk.nashorn.internal.ir.FunctionNode, var742=java.util.List, var598=$r17, var2554=jdk.nashorn.internal.parser.Parser$PropertyFunction, var847=$r16}
; {jdk.nashorn.internal.parser.Parser=var3317, r0=var1286, l2=var3007, i3=var3222, jdk.nashorn.internal.ir.PropertyKey=var2299, r1=var3503, r2=var1512, jdk.nashorn.internal.ir.Node=var2109, $r3=var2614, $l1=var738, jdk.nashorn.internal.parser.AbstractParser=var1638, $i0=var3978, $r4=var1632, $r5=var1875, $r6=var2952, $r7=var3660, jdk.internal.dynalink.support.NameCodec=var378, $r8=var413, jdk.nashorn.internal.ir.IdentNode=var1413, r9=var398, jdk.nashorn.internal.parser.TokenType=var2665, $r10=var3311, $r12=var2100, $r11=var1982, $r18=var2698, r19=var3988, "setter argument"=var977, $r13=var3491, java.util.ArrayList=var467, $r14=var3813, jdk.nashorn.internal.ir.FunctionNode$Kind=var3439, $r15=var1702, jdk.nashorn.internal.ir.FunctionNode=var2856, java.util.List=var742, $r17=var598, jdk.nashorn.internal.parser.Parser$PropertyFunction=var2554, $r16=var847}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	l2 := @parameter0: long;	i3 := @parameter1: int;	r1 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>();	r2 = interfaceinvoke r1.<jdk.nashorn.internal.ir.PropertyKey: java.lang.String getPropertyName()>();	$r3 = (jdk.nashorn.internal.ir.Node) r1;	$l1 = virtualinvoke $r3.<jdk.nashorn.internal.ir.Node: long getToken()>();	$i0 = r0.<jdk.nashorn.internal.parser.Parser: int finish>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>($r7);	r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode createIdentNode(long,int,java.lang.String)>($l1, $i0, $r8);	$r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType LPAREN>;	virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r10);	$r12 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type>;	$r11 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT>;	if $r12 == $r11 goto $r18 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode getIdent()>();	$r18 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode getIdent()>();	r19 = $r18;	specialinvoke r0.<jdk.nashorn.internal.parser.Parser: void verifyStrictIdent(jdk.nashorn.internal.ir.IdentNode,java.lang.String)>($r18, "setter argument");	goto [?= $r13 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType RPAREN>];	$r13 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType RPAREN>;	virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r13);	$r14 = new java.util.ArrayList;	specialinvoke $r14.<java.util.ArrayList: void <init>()>();	if r19 == null goto $r15 = <jdk.nashorn.internal.ir.FunctionNode$Kind: jdk.nashorn.internal.ir.FunctionNode$Kind SETTER>;	$r15 = <jdk.nashorn.internal.ir.FunctionNode$Kind: jdk.nashorn.internal.ir.FunctionNode$Kind SETTER>;	$r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.FunctionNode functionBody(long,jdk.nashorn.internal.ir.IdentNode,java.util.List,jdk.nashorn.internal.ir.FunctionNode$Kind,int)>(l2, r9, $r14, $r15, i3);	$r16 = new jdk.nashorn.internal.parser.Parser$PropertyFunction;	specialinvoke $r16.<jdk.nashorn.internal.parser.Parser$PropertyFunction: void <init>(jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.FunctionNode)>(r1, $r17);	return $r16
;block_num 4