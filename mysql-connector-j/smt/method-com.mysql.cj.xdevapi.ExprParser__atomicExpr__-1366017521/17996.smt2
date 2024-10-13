(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1597 0)
(declare-sort var3401 0)
(declare-sort var705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenPos/663297651 (var1597) Int)
(declare-fun tokens/663297651 (var1597) var3401)
(declare-fun var3401_size/-959786421 (var3401) Int)
(declare-fun var705-init () var705)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var705 String) void)
(declare-const null-var1597 var1597)
(declare-const var1879 var1597) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var1879 null-var1597)))
(define-const var3129 Int (tokenPos/663297651 var1879)) ; Statement: $i0 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos> 
(define-const var3820 var3401 (tokens/663297651 var1879)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(define-const var2125 Int (var3401_size/-959786421 var3820)) ; Statement: $i1 = interfaceinvoke $r1.<java.util.List: int size()>() 
 ; Statement: if $i0 < $i1 goto $r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(assert (not (< var3129 var2125))) ; Negate: Cond: $i0 < $i1  
(define-const var1419 var705 var705-init) ; Statement: $r148 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var59 String String-init) ; Statement: $r149 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var59)) ; Statement: specialinvoke $r149.<java.lang.StringBuilder: void <init>()>() 
(declare-const var59!1 String)
(assert (= var59!1 ""))
(assert true)
(define-const var917 String (append/672562846 var59!1 "No more tokens when expecting one at token position ")) ; Statement: $r150 = virtualinvoke $r149.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No more tokens when expecting one at token position ") 
(declare-const var59!2 String)
(assert (= var59!2 (str.++ var59!1 "No more tokens when expecting one at token position ")))
(define-const var3411 Int (tokenPos/663297651 var1879)) ; Statement: $i35 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos> 
(assert true)
(define-const var3469 String (append/-1001720160 var917 var3411)) ; Statement: $r151 = virtualinvoke $r150.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i35) 
(declare-const var917!1 String)
(assert (str.prefixof var917 var917!1))
(assert true)
(define-const var2563 String (toString/-2075883882 var3469)) ; Statement: $r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var1419 var2563)) ; Statement: specialinvoke $r148.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r152) 

(declare-const var1419!1 var705)
(declare-const var2563!1 String)
 ; Statement: throw $r148 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenPos/663297651=([com.mysql.cj.xdevapi.ExprParser], int), tokens/663297651=([com.mysql.cj.xdevapi.ExprParser], java.util.List), var3401_size/-959786421=([java.util.List], int), var705-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var1597=com.mysql.cj.xdevapi.ExprParser, var1879=r0, var3129=$i0, var3401=java.util.List, var3820=$r1, var2125=$i1, var705=com.mysql.cj.exceptions.WrongArgumentException, var1419=$r148, var59=$r149, var917=$r150, var3411=$i35, var3469=$r151, var2563=$r152}
; {com.mysql.cj.xdevapi.ExprParser=var1597, r0=var1879, $i0=var3129, java.util.List=var3401, $r1=var3820, $i1=var2125, com.mysql.cj.exceptions.WrongArgumentException=var705, $r148=var1419, $r149=var59, $r150=var917, $i35=var3411, $r151=var3469, $r152=var2563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	$i0 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos>;	$r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$i1 = interfaceinvoke $r1.<java.util.List: int size()>();	if $i0 < $i1 goto $r2 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$r148 = new com.mysql.cj.exceptions.WrongArgumentException;	$r149 = new java.lang.StringBuilder;	specialinvoke $r149.<java.lang.StringBuilder: void <init>()>();	$r150 = virtualinvoke $r149.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No more tokens when expecting one at token position ");	$i35 = r0.<com.mysql.cj.xdevapi.ExprParser: int tokenPos>;	$r151 = virtualinvoke $r150.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i35);	$r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r148.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r152);	throw $r148
;block_num 2