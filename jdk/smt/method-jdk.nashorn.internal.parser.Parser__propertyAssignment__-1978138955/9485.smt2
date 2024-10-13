(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2647 0)
(declare-sort var1850 0)
(declare-sort var1471 0)
(declare-sort var734 0)
(declare-sort var679 0)
(declare-sort var1284 0)
(declare-sort var2217 0)
(declare-sort var3633 0)
(declare-sort var1025 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun token/-954945785 (var1850) Int)
(declare-fun cast-from-var2647-to-var1850 (var2647) var1850)
(declare-fun line/-954945785 (var1850) Int)
(declare-fun type/-954945785 (var1850) var1471)
(declare-fun expectValue/-702602642 (var1850 var1471) var734)
(declare-fun cast-from-var734-to-String (var734) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun propertyGetterFunction/1330895977 (var2647 Int Int) var679)
(declare-fun var1284-init () var1284)
(declare-fun finish/-954945785 (var1850) Int)
(declare-fun ident/-1663285908 (var679) var2217)
(declare-fun functionNode/-1663285908 (var679) var3633)
(declare-fun <init>/-858303307 (var1284 Int Int var2217 var1025 var3633 var3633) void)
(declare-const null-var2647 var2647)
(declare-const var1471-IDENT var1471)
(declare-const var1471-COLON var1471)
(declare-const null-NullType var2558)
(declare-const null-var1025 var1025)
(declare-const null-var3633 var3633)
(declare-const var1736 var2647) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var1736 null-var2647)))
(define-const var3799 Int (token/-954945785 (cast-from-var2647-to-var1850 var1736))) ; Statement: l0 = r0.<jdk.nashorn.internal.parser.Parser: long token> 
(define-const var3709 Int (line/-954945785 (cast-from-var2647-to-var1850 var1736))) ; Statement: i1 = r0.<jdk.nashorn.internal.parser.Parser: int line> 
(define-const var151 var1471 (type/-954945785 (cast-from-var2647-to-var1850 var1736))) ; Statement: $r2 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type> 
(define-const var363 var1471 var1471-IDENT) ; Statement: $r1 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT> 
 ; Statement: if $r2 != $r1 goto r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>() 
(assert (not (not (= var151 var363)))) ; Negate: Cond: $r2 != $r1  
(define-const var643 var1471 var1471-IDENT) ; Statement: $r8 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT> 
(assert true)
(define-const var767 var734 (expectValue/-702602642 (cast-from-var2647-to-var1850 var1736) var643)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.Object expectValue(jdk.nashorn.internal.parser.TokenType)>($r8) 
(define-const var1382 String (cast-from-var734-to-String var767)) ; Statement: r23 = (java.lang.String) $r9 
(define-const var739 var1471 (type/-954945785 (cast-from-var2647-to-var1850 var1736))) ; Statement: $r11 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type> 
(define-const var1861 var1471 var1471-COLON) ; Statement: $r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType COLON> 
 ; Statement: if $r11 == $r10 goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish> 
(assert (not (= var739 var1861))) ; Negate: Cond: $r11 == $r10  
(define-const var1970 Int (- 1)) ; Statement: b7 = -1 
(assert true)
(define-const var2369 Int (hashCode/-467973558 var1382)) ; Statement: $i4 = virtualinvoke r23.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i4) {     case 102230: goto $z1 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("get");     case 113762: goto $z0 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("set");     default: goto lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; }; } 
(assert (and (not (= var2369 113762)) (and (not (= var2369 102230)) true))) ; Intersect: Negate: Cond: $i4 == 113762   and Intersect: Negate: Cond: $i4 == 102230   and Non Conditional  
 ; Statement: lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; } 
(assert (and (= var1970 0) true)) ; Intersect: Cond: b7 == 0  and Non Conditional 
(assert true)
(define-const var2495 var679 (propertyGetterFunction/1330895977 var1736 var3799 var3709)) ; Statement: r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1) 
(define-const var3853 var1284 var1284-init) ; Statement: $r18 = new jdk.nashorn.internal.ir.PropertyNode 
(define-const var3781 Int (finish/-954945785 (cast-from-var2647-to-var1850 var1736))) ; Statement: $i6 = r0.<jdk.nashorn.internal.parser.Parser: int finish> 
(define-const var3537 var2217 (ident/-1663285908 var2495)) ; Statement: $r20 = r17.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.PropertyKey ident> 
(define-const var2983 var3633 (functionNode/-1663285908 var2495)) ; Statement: $r19 = r17.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.FunctionNode functionNode> 
(assert true)
;(assert (<init>/-858303307 var3853 var3799 var3781 var3537 null-var1025 var2983 null-var3633)) ; Statement: specialinvoke $r18.<jdk.nashorn.internal.ir.PropertyNode: void <init>(long,int,jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.Expression,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.FunctionNode)>(l0, $i6, $r20, null, $r19, null) 

(declare-const var3853!1 var1284)
(declare-const var3799!1 Int)
(declare-const var3781!1 Int)
(declare-const var3537!1 var2217)
(declare-const var715 var2558)
(declare-const var2983!1 var3633)
(declare-const var715!1 var2558)
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {token/-954945785=([jdk.nashorn.internal.parser.AbstractParser], long), cast-from-var2647-to-var1850=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.parser.AbstractParser), line/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), type/-954945785=([jdk.nashorn.internal.parser.AbstractParser], jdk.nashorn.internal.parser.TokenType), expectValue/-702602642=([jdk.nashorn.internal.parser.AbstractParser, jdk.nashorn.internal.parser.TokenType], java.lang.Object), cast-from-var734-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), propertyGetterFunction/1330895977=([jdk.nashorn.internal.parser.Parser, long, int], jdk.nashorn.internal.parser.Parser$PropertyFunction), var1284-init=([], jdk.nashorn.internal.ir.PropertyNode), finish/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), ident/-1663285908=([jdk.nashorn.internal.parser.Parser$PropertyFunction], jdk.nashorn.internal.ir.PropertyKey), functionNode/-1663285908=([jdk.nashorn.internal.parser.Parser$PropertyFunction], jdk.nashorn.internal.ir.FunctionNode), <init>/-858303307=([jdk.nashorn.internal.ir.PropertyNode, long, int, jdk.nashorn.internal.ir.PropertyKey, jdk.nashorn.internal.ir.Expression, jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.FunctionNode], void)}
; {var2647=jdk.nashorn.internal.parser.Parser, var1736=r0, var1850=jdk.nashorn.internal.parser.AbstractParser, var3799=l0, var3709=i1, var1471=jdk.nashorn.internal.parser.TokenType, var151=$r2, var363=$r1, var643=$r8, var734=java.lang.Object, var767=$r9, var1382=r23, var739=$r11, var1861=$r10, var1970=b7, var2369=$i4, var679=jdk.nashorn.internal.parser.Parser$PropertyFunction, var2495=r17, var1284=jdk.nashorn.internal.ir.PropertyNode, var3853=$r18, var3781=$i6, var2217=jdk.nashorn.internal.ir.PropertyKey, var3537=$r20, var3633=jdk.nashorn.internal.ir.FunctionNode, var2983=$r19, var1025=jdk.nashorn.internal.ir.Expression, var715=null, var2558=null_type}
; {jdk.nashorn.internal.parser.Parser=var2647, r0=var1736, jdk.nashorn.internal.parser.AbstractParser=var1850, l0=var3799, i1=var3709, jdk.nashorn.internal.parser.TokenType=var1471, $r2=var151, $r1=var363, $r8=var643, java.lang.Object=var734, $r9=var767, r23=var1382, $r11=var739, $r10=var1861, b7=var1970, $i4=var2369, jdk.nashorn.internal.parser.Parser$PropertyFunction=var679, r17=var2495, jdk.nashorn.internal.ir.PropertyNode=var1284, $r18=var3853, $i6=var3781, jdk.nashorn.internal.ir.PropertyKey=var2217, $r20=var3537, jdk.nashorn.internal.ir.FunctionNode=var3633, $r19=var2983, jdk.nashorn.internal.ir.Expression=var1025, null=var715, null_type=var2558}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	l0 = r0.<jdk.nashorn.internal.parser.Parser: long token>;	i1 = r0.<jdk.nashorn.internal.parser.Parser: int line>;	$r2 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type>;	$r1 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT>;	if $r2 != $r1 goto r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>();	$r8 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT>;	$r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.Object expectValue(jdk.nashorn.internal.parser.TokenType)>($r8);	r23 = (java.lang.String) $r9;	$r11 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type>;	$r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType COLON>;	if $r11 == $r10 goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>;	b7 = -1;	$i4 = virtualinvoke r23.<java.lang.String: int hashCode()>();	lookupswitch($i4) {     case 102230: goto $z1 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("get");     case 113762: goto $z0 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("set");     default: goto lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; }; };	lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; };	r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);	$r18 = new jdk.nashorn.internal.ir.PropertyNode;	$i6 = r0.<jdk.nashorn.internal.parser.Parser: int finish>;	$r20 = r17.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.PropertyKey ident>;	$r19 = r17.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.FunctionNode functionNode>;	specialinvoke $r18.<jdk.nashorn.internal.ir.PropertyNode: void <init>(long,int,jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.Expression,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.FunctionNode)>(l0, $i6, $r20, null, $r19, null);	return $r18
;block_num 5