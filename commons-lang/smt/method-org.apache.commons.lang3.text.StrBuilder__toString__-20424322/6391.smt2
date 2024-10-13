(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var3763) (Array Int Int))
(declare-fun size/1389889126 (var3763) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3763 var3763)
(declare-const var711 var3763) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var711 null-var3763)))
(define-const var627 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3030 (Array Int Int) (buffer/1389889126 var711)) ; Statement: $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var3959 Int (size/1389889126 var711)) ; Statement: $i0 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
;(assert (<init>/-253222812 var627 var3030 0 var3959)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0) 

(declare-const var627!1 String)
(declare-const var3030!1 (Array Int Int))
(declare-const var3328 Int)
(declare-const var3959!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3763=org.apache.commons.lang3.text.StrBuilder, var711=r1, var627=$r0, var3030=$r2, var3959=$i0, var3328=0}
; {org.apache.commons.lang3.text.StrBuilder=var3763, r1=var711, $r0=var627, $r2=var3030, $i0=var3959, 0=var3328}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	$r0 = new java.lang.String;	$r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i0 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0);	return $r0
;block_num 1