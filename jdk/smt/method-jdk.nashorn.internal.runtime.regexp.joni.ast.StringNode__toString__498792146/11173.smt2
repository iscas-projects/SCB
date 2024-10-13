(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun p/-1962398425 (var580) Int)
(declare-fun end/-1962398425 (var580) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var580 var580)
(declare-const null-Int Int)
(declare-const var2004 var580) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode 
(assert (not (= var2004 null-var580)))
(declare-const var1292 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var1292 null-Int)))
(define-const var2199 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2199)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2199!1 String)
(assert (= var2199!1 ""))
(assert true)
;(assert (append/672562846 var2199!1 "\n  bytes: \u0027")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bytes: \'") 
(declare-const var2199!2 String)
(assert (= var2199!2 (str.++ var2199!1 "\n  bytes: \u0027")))
(define-const var1571 Int (p/-1962398425 var2004)) ; Statement: i6 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode: int p> 
(assert true) ; Non Conditional
(define-const var3570 Int (end/-1962398425 var2004)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode: int end> 
 ; Statement: if i6 >= $i0 goto virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(assert (>= var1571 var3570)) ; Cond: i6 >= $i0 
(assert true)
;(assert (append/672562846 var2199!2 "\u0027")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2199!3 String)
(assert (= var2199!3 (str.++ var2199!2 "\u0027")))
(assert true)
(define-const var1701 String (toString/-2075883882 var2199!3)) ; Statement: $r2 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), p/-1962398425=([jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode], int), end/-1962398425=([jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var580=jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode, var2004=r1, var1292=i5, var2199=$r10, var1571=i6, var3570=$i0, var1701=$r2}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode=var580, r1=var2004, i5=var1292, $r10=var2199, i6=var1571, $i0=var3570, $r2=var1701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode;	i5 := @parameter0: int;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bytes: \'");	i6 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode: int p>;	$i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StringNode: int end>;	if i6 >= $i0 goto virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3