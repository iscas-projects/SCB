(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var863 0)
(declare-sort var1853 0)
(declare-sort var552 0)
(declare-sort var1485 0)
(declare-sort var126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(declare-fun getToken/1324186377 (var863) var1485)
(declare-fun ordinal/-291641772 (var126) Int)
(declare-fun cast-from-var1485-to-var126 (var1485) var126)
(declare-const null-var863 var863)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var552-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var884 var863) ; Statement: r1 := @this: com.google.javascript.rhino.Node 
(assert (not (= var884 null-var863)))
(declare-const var2309 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2309 null-String)))
(declare-const var2049 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2049 null-Int)))
(define-const var2208 Int (- var2049 1)) ; Statement: $i1 = i0 - 1 
(assert true)
(define-const var2107 Int (lastIndexOf/679652410 var2309 46 var2208)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int,int)>(46, $i1) 
(define-const var2743 Int (+ var2107 1)) ; Statement: i3 = $i2 + 1 
(define-const var1951 (Array Int Int) var552-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r2 = <com.google.javascript.rhino.Node$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var3561 var1485 (getToken/1324186377 var884)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var659 Int (ordinal/-291641772 (cast-from-var1485-to-var126 var3561))) ; Statement: $i4 = virtualinvoke $r3.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var3308 Int (select var1951 var659)) ; Statement: $i5 = $r2[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 2: goto r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 3: goto if i3 != 0 goto $z7 = 0;     case 4: goto if i3 != 0 goto $z8 = 0;     case 5: goto return 0;     case 6: goto r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto return 0; } 
(assert (and (not (= var3308 4)) (and (not (= var3308 3)) (and (not (= var3308 2)) (and (not (= var3308 1)) true))))) ; Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/679652410=([java.lang.String, int, int], int), getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1485-to-var126=([com.google.javascript.rhino.Token], java.lang.Enum)}
; {var863=com.google.javascript.rhino.Node, var884=r1, var2309=r0, var1853=null_type, var2049=i0, var2208=$i1, var2107=$i2, var2743=i3, var552=com.google.javascript.rhino.Node$1, var1951=$r2, var1485=com.google.javascript.rhino.Token, var3561=$r3, var126=java.lang.Enum, var659=$i4, var3308=$i5}
; {com.google.javascript.rhino.Node=var863, r1=var884, r0=var2309, null_type=var1853, i0=var2049, $i1=var2208, $i2=var2107, i3=var2743, com.google.javascript.rhino.Node$1=var552, $r2=var1951, com.google.javascript.rhino.Token=var1485, $r3=var3561, java.lang.Enum=var126, $i4=var659, $i5=var3308}
;seq <java.lang.String: int lastIndexOf(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int,int)>": 1}
;stmts r1 := @this: com.google.javascript.rhino.Node;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = i0 - 1;	$i2 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int,int)>(46, $i1);	i3 = $i2 + 1;	$r2 = <com.google.javascript.rhino.Node$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i4 = virtualinvoke $r3.<com.google.javascript.rhino.Token: int ordinal()>();	$i5 = $r2[$i4];	tableswitch($i5) {     case 1: goto r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 2: goto r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 3: goto if i3 != 0 goto $z7 = 0;     case 4: goto if i3 != 0 goto $z8 = 0;     case 5: goto return 0;     case 6: goto r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto return 0; };	return 0
;block_num 2