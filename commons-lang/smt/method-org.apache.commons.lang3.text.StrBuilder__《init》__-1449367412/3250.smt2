(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2303 0)
(declare-sort var2175 0)
(declare-sort var1645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1645) void)
(declare-fun cast-from-var2303-to-var1645 (var2303) var1645)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun buffer/1389889126 (var2303) (Array Int Int))
(declare-fun append/1659648310 (var2303 String) var2303)
(declare-const null-var2303 var2303)
(declare-const null-String String)
(declare-const var1514 var2303) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1514 null-var2303)))
(declare-const var3652 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3652 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2303-to-var1645 var1514))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1514!1 var2303)
 ; Statement: if r1 != null goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= var3652 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2499 Int (length/-134980193 var3652)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3992 Int (+ var2499 32)) ; Statement: $i1 = $i0 + 32 
(define-const var2669 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (char)[$i1] 
(declare-const var1514!2 var2303)
(assert (not (= var1514!2 null-var2303)))
(assert (= (buffer/1389889126 var1514!2) var2669)) ; Statement: r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> = $r2 
(assert true)
;(assert (append/1659648310 var1514!2 var3652)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>(r1) 

(declare-const var1514!3 var2303)
(declare-const var3652!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2303-to-var1645=([org.apache.commons.lang3.text.StrBuilder], java.lang.Object), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var2303=org.apache.commons.lang3.text.StrBuilder, var1514=r0, var3652=r1, var2175=null_type, var1645=java.lang.Object, var2499=$i0, var3992=$i1, var2669=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var2303, r0=var1514, r1=var3652, null_type=var2175, java.lang.Object=var1645, $i0=var2499, $i1=var3992, $r2=var2669}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 != null goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 32;	$r2 = newarray (char)[$i1];	r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> = $r2;	virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>(r1);	return
;block_num 3