(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var843 0)
(declare-sort var457 0)
(declare-sort var34 0)
(declare-sort var2698 0)
(declare-sort var807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokens/663297651 (var843) var34)
(declare-fun var34_size/-959786421 (var34) Int)
(declare-fun var2698-init () var2698)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var807) String)
(declare-fun cast-from-var457-to-var807 (var457) var807)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var2698 String) void)
(declare-const null-var843 var843)
(declare-const null-Int Int)
(declare-const null-var457 var457)
(declare-const var2925 var843) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var2925 null-var843)))
(declare-const var588 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var588 null-Int)))
(declare-const var658 var457) ; Statement: r5 := @parameter1: com.mysql.cj.xdevapi.ExprParser$TokenType 
(assert (not (= var658 null-var457)))
(define-const var3819 var34 (tokens/663297651 var2925)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(define-const var1528 Int (var34_size/-959786421 var3819)) ; Statement: $i1 = interfaceinvoke $r1.<java.util.List: int size()>() 
 ; Statement: if $i1 > i0 goto $r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(assert (not (> var1528 var588))) ; Negate: Cond: $i1 > i0  
(define-const var2445 var2698 var2698-init) ; Statement: $r14 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var2799 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2799)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2799!1 String)
(assert (= var2799!1 ""))
(assert true)
(define-const var1126 String (append/672562846 var2799!1 "No more tokens when expecting ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No more tokens when expecting ") 
(declare-const var2799!2 String)
(assert (= var2799!2 (str.++ var2799!1 "No more tokens when expecting ")))
(assert true)
(define-const var938 String (append/-1031950772 var1126 (cast-from-var457-to-var807 var658))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1126!1 String)
(assert (str.prefixof var1126 var1126!1))
(assert true)
(define-const var2139 String (append/672562846 var938 " at token position ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at token position ") 
(declare-const var938!1 String)
(assert (= var938!1 (str.++ var938 " at token position ")))
(assert true)
(define-const var2987 String (append/-1001720160 var2139 var588)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2139!1 String)
(assert (str.prefixof var2139 var2139!1))
(assert true)
(define-const var694 String (toString/-2075883882 var2987)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var2445 var694)) ; Statement: specialinvoke $r14.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var2445!1 var2698)
(declare-const var694!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {tokens/663297651=([com.mysql.cj.xdevapi.ExprParser], java.util.List), var34_size/-959786421=([java.util.List], int), var2698-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var457-to-var807=([com.mysql.cj.xdevapi.ExprParser$TokenType], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var843=com.mysql.cj.xdevapi.ExprParser, var2925=r0, var588=i0, var457=com.mysql.cj.xdevapi.ExprParser$TokenType, var658=r5, var34=java.util.List, var3819=$r1, var1528=$i1, var2698=com.mysql.cj.exceptions.WrongArgumentException, var2445=$r14, var2799=$r15, var1126=$r16, var807=java.lang.Object, var938=$r17, var2139=$r18, var2987=$r19, var694=$r20}
; {com.mysql.cj.xdevapi.ExprParser=var843, r0=var2925, i0=var588, com.mysql.cj.xdevapi.ExprParser$TokenType=var457, r5=var658, java.util.List=var34, $r1=var3819, $i1=var1528, com.mysql.cj.exceptions.WrongArgumentException=var2698, $r14=var2445, $r15=var2799, $r16=var1126, java.lang.Object=var807, $r17=var938, $r18=var2139, $r19=var2987, $r20=var694}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	i0 := @parameter0: int;	r5 := @parameter1: com.mysql.cj.xdevapi.ExprParser$TokenType;	$r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$i1 = interfaceinvoke $r1.<java.util.List: int size()>();	if $i1 > i0 goto $r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$r14 = new com.mysql.cj.exceptions.WrongArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No more tokens when expecting ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at token position ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r20);	throw $r14
;block_num 2