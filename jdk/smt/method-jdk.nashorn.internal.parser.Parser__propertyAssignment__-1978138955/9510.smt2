(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3650 0)
(declare-sort var1442 0)
(declare-sort var1744 0)
(declare-sort var3006 0)
(declare-sort var3170 0)
(declare-sort var1607 0)
(declare-sort var2825 0)
(declare-sort var3371 0)
(declare-sort var3518 0)
(declare-sort var1867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun token/-954945785 (var1442) Int)
(declare-fun cast-from-var3650-to-var1442 (var3650) var1442)
(declare-fun line/-954945785 (var1442) Int)
(declare-fun type/-954945785 (var1442) var1744)
(declare-fun expectValue/-702602642 (var1442 var1744) var3006)
(declare-fun cast-from-var3006-to-String (var3006) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun propertySetterFunction/-2120779659 (var3650 Int Int) var3170)
(declare-fun var1607-init () var1607)
(declare-fun finish/-954945785 (var1442) Int)
(declare-fun ident/-1663285908 (var3170) var2825)
(declare-fun functionNode/-1663285908 (var3170) var3371)
(declare-fun <init>/-858303307 (var1607 Int Int var2825 var3518 var3371 var3371) void)
(declare-const null-var3650 var3650)
(declare-const var1744-IDENT var1744)
(declare-const var1744-COLON var1744)
(declare-const null-NullType var1867)
(declare-const null-var3518 var3518)
(declare-const null-var3371 var3371)
(declare-const var1626 var3650) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var1626 null-var3650)))
(define-const var412 Int (token/-954945785 (cast-from-var3650-to-var1442 var1626))) ; Statement: l0 = r0.<jdk.nashorn.internal.parser.Parser: long token> 
(define-const var3631 Int (line/-954945785 (cast-from-var3650-to-var1442 var1626))) ; Statement: i1 = r0.<jdk.nashorn.internal.parser.Parser: int line> 
(define-const var3365 var1744 (type/-954945785 (cast-from-var3650-to-var1442 var1626))) ; Statement: $r2 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type> 
(define-const var3259 var1744 var1744-IDENT) ; Statement: $r1 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT> 
 ; Statement: if $r2 != $r1 goto r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>() 
(assert (not (not (= var3365 var3259)))) ; Negate: Cond: $r2 != $r1  
(define-const var414 var1744 var1744-IDENT) ; Statement: $r8 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT> 
(assert true)
(define-const var165 var3006 (expectValue/-702602642 (cast-from-var3650-to-var1442 var1626) var414)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.Object expectValue(jdk.nashorn.internal.parser.TokenType)>($r8) 
(define-const var511 String (cast-from-var3006-to-String var165)) ; Statement: r23 = (java.lang.String) $r9 
(define-const var791 var1744 (type/-954945785 (cast-from-var3650-to-var1442 var1626))) ; Statement: $r11 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type> 
(define-const var1395 var1744 var1744-COLON) ; Statement: $r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType COLON> 
 ; Statement: if $r11 == $r10 goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish> 
(assert (not (= var791 var1395))) ; Negate: Cond: $r11 == $r10  
(define-const var587 Int (- 1)) ; Statement: b7 = -1 
(assert true)
(define-const var3031 Int (hashCode/-467973558 var511)) ; Statement: $i4 = virtualinvoke r23.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i4) {     case 102230: goto $z1 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("get");     case 113762: goto $z0 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("set");     default: goto lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; }; } 
(assert (and (not (= var3031 113762)) (and (not (= var3031 102230)) true))) ; Intersect: Negate: Cond: $i4 == 113762   and Intersect: Negate: Cond: $i4 == 102230   and Non Conditional  
 ; Statement: lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; } 
(assert (and (= var587 1) (and (not (= var587 0)) true))) ; Intersect: Cond: b7 == 1  and Intersect: Negate: Cond: b7 == 0   and Non Conditional  
(assert true)
(define-const var921 var3170 (propertySetterFunction/-2120779659 var1626 var412 var3631)) ; Statement: r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1) 
(define-const var2723 var1607 var1607-init) ; Statement: $r14 = new jdk.nashorn.internal.ir.PropertyNode 
(define-const var2433 Int (finish/-954945785 (cast-from-var3650-to-var1442 var1626))) ; Statement: $i5 = r0.<jdk.nashorn.internal.parser.Parser: int finish> 
(define-const var1755 var2825 (ident/-1663285908 var921)) ; Statement: $r16 = r13.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.PropertyKey ident> 
(define-const var233 var3371 (functionNode/-1663285908 var921)) ; Statement: $r15 = r13.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.FunctionNode functionNode> 
(assert true)
;(assert (<init>/-858303307 var2723 var412 var2433 var1755 null-var3518 null-var3371 var233)) ; Statement: specialinvoke $r14.<jdk.nashorn.internal.ir.PropertyNode: void <init>(long,int,jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.Expression,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.FunctionNode)>(l0, $i5, $r16, null, null, $r15) 

(declare-const var2723!1 var1607)
(declare-const var412!1 Int)
(declare-const var2433!1 Int)
(declare-const var1755!1 var2825)
(declare-const var3597 var1867)
(declare-const var3597!1 var1867)
(declare-const var233!1 var3371)
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {token/-954945785=([jdk.nashorn.internal.parser.AbstractParser], long), cast-from-var3650-to-var1442=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.parser.AbstractParser), line/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), type/-954945785=([jdk.nashorn.internal.parser.AbstractParser], jdk.nashorn.internal.parser.TokenType), expectValue/-702602642=([jdk.nashorn.internal.parser.AbstractParser, jdk.nashorn.internal.parser.TokenType], java.lang.Object), cast-from-var3006-to-String=([java.lang.Object], java.lang.String), hashCode/-467973558=([java.lang.String], int), propertySetterFunction/-2120779659=([jdk.nashorn.internal.parser.Parser, long, int], jdk.nashorn.internal.parser.Parser$PropertyFunction), var1607-init=([], jdk.nashorn.internal.ir.PropertyNode), finish/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), ident/-1663285908=([jdk.nashorn.internal.parser.Parser$PropertyFunction], jdk.nashorn.internal.ir.PropertyKey), functionNode/-1663285908=([jdk.nashorn.internal.parser.Parser$PropertyFunction], jdk.nashorn.internal.ir.FunctionNode), <init>/-858303307=([jdk.nashorn.internal.ir.PropertyNode, long, int, jdk.nashorn.internal.ir.PropertyKey, jdk.nashorn.internal.ir.Expression, jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.FunctionNode], void)}
; {var3650=jdk.nashorn.internal.parser.Parser, var1626=r0, var1442=jdk.nashorn.internal.parser.AbstractParser, var412=l0, var3631=i1, var1744=jdk.nashorn.internal.parser.TokenType, var3365=$r2, var3259=$r1, var414=$r8, var3006=java.lang.Object, var165=$r9, var511=r23, var791=$r11, var1395=$r10, var587=b7, var3031=$i4, var3170=jdk.nashorn.internal.parser.Parser$PropertyFunction, var921=r13, var1607=jdk.nashorn.internal.ir.PropertyNode, var2723=$r14, var2433=$i5, var2825=jdk.nashorn.internal.ir.PropertyKey, var1755=$r16, var3371=jdk.nashorn.internal.ir.FunctionNode, var233=$r15, var3518=jdk.nashorn.internal.ir.Expression, var3597=null, var1867=null_type}
; {jdk.nashorn.internal.parser.Parser=var3650, r0=var1626, jdk.nashorn.internal.parser.AbstractParser=var1442, l0=var412, i1=var3631, jdk.nashorn.internal.parser.TokenType=var1744, $r2=var3365, $r1=var3259, $r8=var414, java.lang.Object=var3006, $r9=var165, r23=var511, $r11=var791, $r10=var1395, b7=var587, $i4=var3031, jdk.nashorn.internal.parser.Parser$PropertyFunction=var3170, r13=var921, jdk.nashorn.internal.ir.PropertyNode=var1607, $r14=var2723, $i5=var2433, jdk.nashorn.internal.ir.PropertyKey=var2825, $r16=var1755, jdk.nashorn.internal.ir.FunctionNode=var3371, $r15=var233, jdk.nashorn.internal.ir.Expression=var3518, null=var3597, null_type=var1867}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	l0 = r0.<jdk.nashorn.internal.parser.Parser: long token>;	i1 = r0.<jdk.nashorn.internal.parser.Parser: int line>;	$r2 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type>;	$r1 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT>;	if $r2 != $r1 goto r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>();	$r8 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT>;	$r9 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.Object expectValue(jdk.nashorn.internal.parser.TokenType)>($r8);	r23 = (java.lang.String) $r9;	$r11 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type>;	$r10 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType COLON>;	if $r11 == $r10 goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>;	b7 = -1;	$i4 = virtualinvoke r23.<java.lang.String: int hashCode()>();	lookupswitch($i4) {     case 102230: goto $z1 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("get");     case 113762: goto $z0 = virtualinvoke r23.<java.lang.String: boolean equals(java.lang.Object)>("set");     default: goto lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; }; };	lookupswitch(b7) {     case 0: goto r17 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertyGetterFunction(long,int)>(l0, i1);     case 1: goto r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);     default: goto $i3 = r0.<jdk.nashorn.internal.parser.Parser: int finish>; };	r13 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.Parser$PropertyFunction propertySetterFunction(long,int)>(l0, i1);	$r14 = new jdk.nashorn.internal.ir.PropertyNode;	$i5 = r0.<jdk.nashorn.internal.parser.Parser: int finish>;	$r16 = r13.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.PropertyKey ident>;	$r15 = r13.<jdk.nashorn.internal.parser.Parser$PropertyFunction: jdk.nashorn.internal.ir.FunctionNode functionNode>;	specialinvoke $r14.<jdk.nashorn.internal.ir.PropertyNode: void <init>(long,int,jdk.nashorn.internal.ir.PropertyKey,jdk.nashorn.internal.ir.Expression,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.FunctionNode)>(l0, $i5, $r16, null, null, $r15);	return $r14
;block_num 5