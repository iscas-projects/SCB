(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2142 0)
(declare-sort var2425 0)
(declare-sort var2007 0)
(declare-sort var605 0)
(declare-sort var2666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2007-init () var2007)
(declare-fun <init>/-325640736 (var2007) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var605_size/-959786421 (var605) Int)
(declare-fun cast-from-var2007-to-var605 (var2007) var605)
(declare-fun var2666-init () var2666)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2666 String) void)
(declare-const null-var2142 var2142)
(declare-const null-String String)
(declare-const var3917 var2142) ; Statement: r6 := @this: org.antlr.v4.runtime.tree.pattern.ParseTreePatternMatcher 
(assert (not (= var3917 null-var2142)))
(declare-const var384 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var384 null-String)))
(define-const var3530 Int 0) ; Statement: i40 = 0 
(assert true)
(define-const var753 Int (length/-134980193 var384)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var791 var2007 var2007-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var791)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var791!1 var2007)
(define-const var1458 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1458)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1458!1 String)
(assert (= var1458!1 ""))
(define-const var200 var2007 var2007-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var200)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var200!1 var2007)
(define-const var2732 var2007 var2007-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2732)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var2732!1 var2007)
(assert true) ; Non Conditional
 ; Statement: if i40 >= i0 goto $i2 = interfaceinvoke $r3.<java.util.List: int size()>() 
(assert (>= var3530 var753)) ; Cond: i40 >= i0 
(define-const var392 Int (var605_size/-959786421 (cast-from-var2007-to-var605 var200!1))) ; Statement: $i2 = interfaceinvoke $r3.<java.util.List: int size()>() 
(define-const var942 Int (var605_size/-959786421 (cast-from-var2007-to-var605 var2732!1))) ; Statement: $i1 = interfaceinvoke $r4.<java.util.List: int size()>() 
 ; Statement: if $i2 <= $i1 goto $i4 = interfaceinvoke $r3.<java.util.List: int size()>() 
(assert (not (<= var392 var942))) ; Negate: Cond: $i2 <= $i1  
(define-const var3997 var2666 var2666-init) ; Statement: $r48 = new java.lang.IllegalArgumentException 
(define-const var2959 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2959)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2959!1 String)
(assert (= var2959!1 ""))
(assert true)
(define-const var1747 String (append/672562846 var2959!1 "unterminated tag in pattern: ")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unterminated tag in pattern: ") 
(declare-const var2959!2 String)
(assert (= var2959!2 (str.++ var2959!1 "unterminated tag in pattern: ")))
(assert true)
(define-const var3538 String (append/672562846 var1747 var384)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1747!1 String)
(assert (= var1747!1 (str.++ var1747 var384)))
(assert true)
(define-const var2145 String (toString/-2075883882 var3538)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3997 var2145)) ; Statement: specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r52) 

(declare-const var3997!1 var2666)
(declare-const var2145!1 String)
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2007-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var605_size/-959786421=([java.util.List], int), cast-from-var2007-to-var605=([java.util.ArrayList], java.util.List), var2666-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2142=org.antlr.v4.runtime.tree.pattern.ParseTreePatternMatcher, var3917=r6, var384=r0, var2425=null_type, var3530=i40, var753=i0, var2007=java.util.ArrayList, var791=$r1, var1458=$r2, var200=$r3, var2732=$r4, var605=java.util.List, var392=$i2, var942=$i1, var2666=java.lang.IllegalArgumentException, var3997=$r48, var2959=$r49, var1747=$r50, var3538=$r51, var2145=$r52}
; {org.antlr.v4.runtime.tree.pattern.ParseTreePatternMatcher=var2142, r6=var3917, r0=var384, null_type=var2425, i40=var3530, i0=var753, java.util.ArrayList=var2007, $r1=var791, $r2=var1458, $r3=var200, $r4=var2732, java.util.List=var605, $i2=var392, $i1=var942, java.lang.IllegalArgumentException=var2666, $r48=var3997, $r49=var2959, $r50=var1747, $r51=var3538, $r52=var2145}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.antlr.v4.runtime.tree.pattern.ParseTreePatternMatcher;	r0 := @parameter0: java.lang.String;	i40 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	if i40 >= i0 goto $i2 = interfaceinvoke $r3.<java.util.List: int size()>();	$i2 = interfaceinvoke $r3.<java.util.List: int size()>();	$i1 = interfaceinvoke $r4.<java.util.List: int size()>();	if $i2 <= $i1 goto $i4 = interfaceinvoke $r3.<java.util.List: int size()>();	$r48 = new java.lang.IllegalArgumentException;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unterminated tag in pattern: ");	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r52);	throw $r48
;block_num 4