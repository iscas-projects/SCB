(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2163 0)
(declare-sort var2583 0)
(declare-sort var1967 0)
(declare-sort var1827 0)
(declare-sort var2390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1967-init () var1967)
(declare-fun <init>/-325640736 (var1967) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1827_size/-959786421 (var1827) Int)
(declare-fun cast-from-var1967-to-var1827 (var1967) var1827)
(declare-fun var2390-init () var2390)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2390 String) void)
(declare-const null-var2163 var2163)
(declare-const null-String String)
(declare-const var3104 var2163) ; Statement: r6 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreePatternMatcher 
(assert (not (= var3104 null-var2163)))
(declare-const var3777 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3777 null-String)))
(define-const var2572 Int 0) ; Statement: i40 = 0 
(assert true)
(define-const var1081 Int (length/-134980193 var3777)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var985 var1967 var1967-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var985)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var985!1 var1967)
(define-const var3208 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(define-const var2472 var1967 var1967-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2472)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var2472!1 var1967)
(define-const var1961 var1967 var1967-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1961)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var1961!1 var1967)
(assert true) ; Non Conditional
 ; Statement: if i40 >= i0 goto $i2 = interfaceinvoke $r3.<java.util.List: int size()>() 
(assert (>= var2572 var1081)) ; Cond: i40 >= i0 
(define-const var2719 Int (var1827_size/-959786421 (cast-from-var1967-to-var1827 var2472!1))) ; Statement: $i2 = interfaceinvoke $r3.<java.util.List: int size()>() 
(define-const var3371 Int (var1827_size/-959786421 (cast-from-var1967-to-var1827 var1961!1))) ; Statement: $i1 = interfaceinvoke $r4.<java.util.List: int size()>() 
 ; Statement: if $i2 <= $i1 goto $i4 = interfaceinvoke $r3.<java.util.List: int size()>() 
(assert (not (<= var2719 var3371))) ; Negate: Cond: $i2 <= $i1  
(define-const var3690 var2390 var2390-init) ; Statement: $r48 = new java.lang.IllegalArgumentException 
(define-const var3730 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3730)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3730!1 String)
(assert (= var3730!1 ""))
(assert true)
(define-const var1885 String (append/672562846 var3730!1 "unterminated tag in pattern: ")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unterminated tag in pattern: ") 
(declare-const var3730!2 String)
(assert (= var3730!2 (str.++ var3730!1 "unterminated tag in pattern: ")))
(assert true)
(define-const var1662 String (append/672562846 var1885 var3777)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1885!1 String)
(assert (= var1885!1 (str.++ var1885 var3777)))
(assert true)
(define-const var1523 String (toString/-2075883882 var1662)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3690 var1523)) ; Statement: specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r52) 

(declare-const var3690!1 var2390)
(declare-const var1523!1 String)
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1967-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1827_size/-959786421=([java.util.List], int), cast-from-var1967-to-var1827=([java.util.ArrayList], java.util.List), var2390-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2163=com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreePatternMatcher, var3104=r6, var3777=r0, var2583=null_type, var2572=i40, var1081=i0, var1967=java.util.ArrayList, var985=$r1, var3208=$r2, var2472=$r3, var1961=$r4, var1827=java.util.List, var2719=$i2, var3371=$i1, var2390=java.lang.IllegalArgumentException, var3690=$r48, var3730=$r49, var1885=$r50, var1662=$r51, var1523=$r52}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreePatternMatcher=var2163, r6=var3104, r0=var3777, null_type=var2583, i40=var2572, i0=var1081, java.util.ArrayList=var1967, $r1=var985, $r2=var3208, $r3=var2472, $r4=var1961, java.util.List=var1827, $i2=var2719, $i1=var3371, java.lang.IllegalArgumentException=var2390, $r48=var3690, $r49=var3730, $r50=var1885, $r51=var1662, $r52=var1523}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.ParseTreePatternMatcher;	r0 := @parameter0: java.lang.String;	i40 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	if i40 >= i0 goto $i2 = interfaceinvoke $r3.<java.util.List: int size()>();	$i2 = interfaceinvoke $r3.<java.util.List: int size()>();	$i1 = interfaceinvoke $r4.<java.util.List: int size()>();	if $i2 <= $i1 goto $i4 = interfaceinvoke $r3.<java.util.List: int size()>();	$r48 = new java.lang.IllegalArgumentException;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unterminated tag in pattern: ");	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r52);	throw $r48
;block_num 4