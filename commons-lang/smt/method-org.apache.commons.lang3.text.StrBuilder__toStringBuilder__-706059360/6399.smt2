(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/1389889126 (var2908) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun buffer/1389889126 (var2908) (Array Int Int))
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var2908 var2908)
(declare-const var6 var2908) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var6 null-var2908)))
(define-const var179 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2684 Int (size/1389889126 var6)) ; Statement: $i0 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
;(assert (<init>/543593434 var179 var2684)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var179!1 String)
(declare-const var2684!1 Int)
(define-const var124 (Array Int Int) (buffer/1389889126 var6)) ; Statement: $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var2798 Int (size/1389889126 var6)) ; Statement: $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
(define-const var2148 String (append/-1748486345 var179!1 var124 0 var2798)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r2, 0, $i1) 
(declare-const var179!2 String)
(assert (str.prefixof var179!1 var179!2))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), <init>/543593434=([java.lang.StringBuilder, int], void), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var2908=org.apache.commons.lang3.text.StrBuilder, var6=r1, var179=$r0, var2684=$i0, var124=$r2, var2798=$i1, var2148=$r3}
; {org.apache.commons.lang3.text.StrBuilder=var2908, r1=var6, $r0=var179, $i0=var2684, $r2=var124, $i1=var2798, $r3=var2148}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	$r0 = new java.lang.StringBuilder;	$i0 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0);	$r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r2, 0, $i1);	return $r3
;block_num 1