(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var1890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun image/-1103324373 (var1890) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/1906106355 (String Int) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var478 var478)
(declare-const null-var1890 var1890)
(declare-const var2194 var478) ; Statement: r6 := @this: org.javacc.jjtree.JJTreeNode 
(assert (not (= var2194 null-var478)))
(declare-const var2879 var1890) ; Statement: r1 := @parameter0: org.javacc.jjtree.Token 
(assert (not (= var2879 null-var1890)))
(define-const var387 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(define-const var3886 String (image/-1103324373 var2879)) ; Statement: $r2 = r1.<org.javacc.jjtree.Token: java.lang.String image> 
(assert true)
(define-const var391 Int (length/-134980193 var3886)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/1906106355 var387 var391)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>(int)>($i0) 

(declare-const var387!1 String)
(declare-const var391!1 Int)
(define-const var2368 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2665 String (image/-1103324373 var2879)) ; Statement: $r3 = r1.<org.javacc.jjtree.Token: java.lang.String image> 
(assert true)
(define-const var3644 Int (length/-134980193 var2665)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i1 goto $r4 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var2368 var3644)) ; Cond: i3 >= $i1 
(assert true)
(define-const var3539 String (toString/-222306083 var387!1)) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), image/-1103324373=([org.javacc.jjtree.Token], java.lang.String), length/-134980193=([java.lang.String], int), <init>/1906106355=([java.lang.StringBuffer, int], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var478=org.javacc.jjtree.JJTreeNode, var2194=r6, var1890=org.javacc.jjtree.Token, var2879=r1, var387=$r7, var3886=$r2, var391=$i0, var2368=i3, var2665=$r3, var3644=$i1, var3539=$r4}
; {org.javacc.jjtree.JJTreeNode=var478, r6=var2194, org.javacc.jjtree.Token=var1890, r1=var2879, $r7=var387, $r2=var3886, $i0=var391, i3=var2368, $r3=var2665, $i1=var3644, $r4=var3539}
;seq <java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.jjtree.JJTreeNode;	r1 := @parameter0: org.javacc.jjtree.Token;	$r7 = new java.lang.StringBuffer;	$r2 = r1.<org.javacc.jjtree.Token: java.lang.String image>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke $r7.<java.lang.StringBuffer: void <init>(int)>($i0);	i3 = 0;	$r3 = r1.<org.javacc.jjtree.Token: java.lang.String image>;	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	if i3 >= $i1 goto $r4 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 3