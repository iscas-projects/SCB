(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var3730 0)
(declare-sort var3804 0)
(declare-sort var3294 0)
(declare-sort var3714 0)
(declare-sort var1420 0)
(declare-sort var1351 0)
(declare-sort var1128 0)
(declare-sort var1642 0)
(declare-sort var254 0)
(declare-sort var239 0)
(declare-sort var2383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/586517476 (var1775) var3730)
(declare-fun var3730_getPropertyName/25291882 (var3730) String)
(declare-fun cast-from-var3730-to-var3804 (var3730) var3804)
(declare-fun getToken/-1133296170 (var3804) Int)
(declare-fun finish/-954945785 (var3294) Int)
(declare-fun cast-from-var1775-to-var3294 (var1775) var3294)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3714_encode/-966502321 (String) String)
(declare-fun createIdentNode/-161369918 (var3294 Int Int String) var1420)
(declare-fun expect/-414920746 (var3294 var1351) void)
(declare-fun var1128-init () var1128)
(declare-fun <init>/-325640736 (var1128) void)
(declare-fun functionBody/-1744581561 (var1775 Int var1420 var239 var1642 Int) var254)
(declare-fun cast-from-var1128-to-var239 (var1128) var239)
(declare-fun var2383-init () var2383)
(declare-fun <init>/36305993 (var2383 var3730 var254) void)
(declare-const null-var1775 var1775)
(declare-const null-Int Int)
(declare-const var1351-LPAREN var1351)
(declare-const var1351-RPAREN var1351)
(declare-const var1642-GETTER var1642)
(declare-const var1978 var1775) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var1978 null-var1775)))
(declare-const var204 Int) ; Statement: l2 := @parameter0: long 
(assert (not (= var204 null-Int)))
(declare-const var1813 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1813 null-Int)))
(assert true)
(define-const var3674 var3730 (propertyName/586517476 var1978)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>() 
(define-const var2095 String (var3730_getPropertyName/25291882 var3674)) ; Statement: r2 = interfaceinvoke r1.<jdk.nashorn.internal.ir.PropertyKey: java.lang.String getPropertyName()>() 
(define-const var1254 var3804 (cast-from-var3730-to-var3804 var3674)) ; Statement: $r3 = (jdk.nashorn.internal.ir.Node) r1 
(assert true)
(define-const var1590 Int (getToken/-1133296170 var1254)) ; Statement: $l1 = virtualinvoke $r3.<jdk.nashorn.internal.ir.Node: long getToken()>() 
(define-const var3918 Int (finish/-954945785 (cast-from-var1775-to-var3294 var1978))) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.Parser: int finish> 
(define-const var750 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var750)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var750!1 String)
(assert (= var750!1 ""))
(assert true)
(define-const var29 String (append/672562846 var750!1 "get ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get ") 
(declare-const var750!2 String)
(assert (= var750!2 (str.++ var750!1 "get ")))
(assert true)
(define-const var3893 String (append/672562846 var29 var2095)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var29!1 String)
(assert (= var29!1 (str.++ var29 var2095)))
(assert true)
(define-const var2912 String (toString/-2075883882 var3893)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1660 String (var3714_encode/-966502321 var2912)) ; Statement: $r8 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>($r7) 
(assert true)
(define-const var2402 var1420 (createIdentNode/-161369918 (cast-from-var1775-to-var3294 var1978) var1590 var3918 var1660)) ; Statement: r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode createIdentNode(long,int,java.lang.String)>($l1, $i0, $r8) 
(define-const var3722 var1351 var1351-LPAREN) ; Statement: $r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType LPAREN> 
(assert true)
;(assert (expect/-414920746 (cast-from-var1775-to-var3294 var1978) var3722)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r10) 

(declare-const var1978!1 var1775)
(declare-const var3722!1 var1351)
(define-const var3045 var1351 var1351-RPAREN) ; Statement: $r11 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType RPAREN> 
(assert true)
;(assert (expect/-414920746 (cast-from-var1775-to-var3294 var1978!1) var3045)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r11) 

(declare-const var1978!2 var1775)
(declare-const var3045!1 var1351)
(define-const var3780 var1128 var1128-init) ; Statement: $r12 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3780)) ; Statement: specialinvoke $r12.<java.util.ArrayList: void <init>()>() 

(declare-const var3780!1 var1128)
(define-const var2364 var1642 var1642-GETTER) ; Statement: $r13 = <jdk.nashorn.internal.ir.FunctionNode$Kind: jdk.nashorn.internal.ir.FunctionNode$Kind GETTER> 
(assert true)
(define-const var1378 var254 (functionBody/-1744581561 var1978!2 var204 var2402 (cast-from-var1128-to-var239 var3780!1) var2364 var1813)) ; Statement: r14 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.FunctionNode functionBody(long,jdk.nashorn.internal.ir.IdentNode,java.util.List,jdk.nashorn.internal.ir.FunctionNode$Kind,int)>(l2, r9, $r12, $r13, i3) 
(define-const var213 var2383 var2383-init) ; Statement: $r15 = new jdk.nashorn.internal.parser.Parser$PropertyFunction 
(assert true)
;(assert (<init>/36305993 var213 var3674 var1378)) ; Statement: specialinvoke $r15.<jdk.nashorn.internal.parser.Parser$PropertyFunction: void <init>(jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.FunctionNode)>(r1, r14) 

(declare-const var213!1 var2383)
(declare-const var3674!1 var3730)
(declare-const var1378!1 var254)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/586517476=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.ir.PropertyKey), var3730_getPropertyName/25291882=([jdk.nashorn.internal.ir.PropertyKey], java.lang.String), cast-from-var3730-to-var3804=([jdk.nashorn.internal.ir.PropertyKey], jdk.nashorn.internal.ir.Node), getToken/-1133296170=([jdk.nashorn.internal.ir.Node], long), finish/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), cast-from-var1775-to-var3294=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.parser.AbstractParser), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3714_encode/-966502321=([java.lang.String], java.lang.String), createIdentNode/-161369918=([jdk.nashorn.internal.parser.AbstractParser, long, int, java.lang.String], jdk.nashorn.internal.ir.IdentNode), expect/-414920746=([jdk.nashorn.internal.parser.AbstractParser, jdk.nashorn.internal.parser.TokenType], void), var1128-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), functionBody/-1744581561=([jdk.nashorn.internal.parser.Parser, long, jdk.nashorn.internal.ir.IdentNode, java.util.List, jdk.nashorn.internal.ir.FunctionNode$Kind, int], jdk.nashorn.internal.ir.FunctionNode), cast-from-var1128-to-var239=([java.util.ArrayList], java.util.List), var2383-init=([], jdk.nashorn.internal.parser.Parser$PropertyFunction), <init>/36305993=([jdk.nashorn.internal.parser.Parser$PropertyFunction, jdk.nashorn.internal.ir.PropertyKey, jdk.nashorn.internal.ir.FunctionNode], void)}
; {var1775=jdk.nashorn.internal.parser.Parser, var1978=r0, var204=l2, var1813=i3, var3730=jdk.nashorn.internal.ir.PropertyKey, var3674=r1, var2095=r2, var3804=jdk.nashorn.internal.ir.Node, var1254=$r3, var1590=$l1, var3294=jdk.nashorn.internal.parser.AbstractParser, var3918=$i0, var750=$r4, var29=$r5, var3893=$r6, var2912=$r7, var3714=jdk.internal.dynalink.support.NameCodec, var1660=$r8, var1420=jdk.nashorn.internal.ir.IdentNode, var2402=r9, var1351=jdk.nashorn.internal.parser.TokenType, var3722=$r10, var3045=$r11, var1128=java.util.ArrayList, var3780=$r12, var1642=jdk.nashorn.internal.ir.FunctionNode$Kind, var2364=$r13, var254=jdk.nashorn.internal.ir.FunctionNode, var239=java.util.List, var1378=r14, var2383=jdk.nashorn.internal.parser.Parser$PropertyFunction, var213=$r15}
; {jdk.nashorn.internal.parser.Parser=var1775, r0=var1978, l2=var204, i3=var1813, jdk.nashorn.internal.ir.PropertyKey=var3730, r1=var3674, r2=var2095, jdk.nashorn.internal.ir.Node=var3804, $r3=var1254, $l1=var1590, jdk.nashorn.internal.parser.AbstractParser=var3294, $i0=var3918, $r4=var750, $r5=var29, $r6=var3893, $r7=var2912, jdk.internal.dynalink.support.NameCodec=var3714, $r8=var1660, jdk.nashorn.internal.ir.IdentNode=var1420, r9=var2402, jdk.nashorn.internal.parser.TokenType=var1351, $r10=var3722, $r11=var3045, java.util.ArrayList=var1128, $r12=var3780, jdk.nashorn.internal.ir.FunctionNode$Kind=var1642, $r13=var2364, jdk.nashorn.internal.ir.FunctionNode=var254, java.util.List=var239, r14=var1378, jdk.nashorn.internal.parser.Parser$PropertyFunction=var2383, $r15=var213}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	l2 := @parameter0: long;	i3 := @parameter1: int;	r1 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>();	r2 = interfaceinvoke r1.<jdk.nashorn.internal.ir.PropertyKey: java.lang.String getPropertyName()>();	$r3 = (jdk.nashorn.internal.ir.Node) r1;	$l1 = virtualinvoke $r3.<jdk.nashorn.internal.ir.Node: long getToken()>();	$i0 = r0.<jdk.nashorn.internal.parser.Parser: int finish>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <jdk.internal.dynalink.support.NameCodec: java.lang.String encode(java.lang.String)>($r7);	r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.IdentNode createIdentNode(long,int,java.lang.String)>($l1, $i0, $r8);	$r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType LPAREN>;	virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r10);	$r11 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType RPAREN>;	virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r11);	$r12 = new java.util.ArrayList;	specialinvoke $r12.<java.util.ArrayList: void <init>()>();	$r13 = <jdk.nashorn.internal.ir.FunctionNode$Kind: jdk.nashorn.internal.ir.FunctionNode$Kind GETTER>;	r14 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.FunctionNode functionBody(long,jdk.nashorn.internal.ir.IdentNode,java.util.List,jdk.nashorn.internal.ir.FunctionNode$Kind,int)>(l2, r9, $r12, $r13, i3);	$r15 = new jdk.nashorn.internal.parser.Parser$PropertyFunction;	specialinvoke $r15.<jdk.nashorn.internal.parser.Parser$PropertyFunction: void <init>(jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.FunctionNode)>(r1, r14);	return $r15
;block_num 1