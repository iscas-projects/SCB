(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3432 0)
(declare-sort var3435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-1774502042 (var3432) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun colCount/-1774502042 (var3432) Int)
(declare-const null-var3432 var3432)
(declare-const null-String String)
(declare-const var1196 var3432) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var1196 null-var3432)))
(declare-const var2688 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2688 null-String)))
(define-const var1388 String (sb/-1774502042 var1196)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var1388 var2688)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1388!1 String)
(assert (= var1388!1 (str.++ var1388 var2688)))
(define-const var1284 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var1222 Int var1284) ; Statement: i10 = $i13 
(define-const var1636 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
(define-const var494 Int var1636) ; Statement: i11 = $i15 
(assert true) ; Non Conditional
(define-const var2308 Int (+ var1222 1)) ; Statement: $i0 = i10 + 1 
(assert true)
(define-const var932 Int (indexOf/1426977840 var2688 10 var2308)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(10, $i0) 
(define-const var1222!1 Int var932) ; Statement: i10 = $i1 
 ; Statement: if $i1 < 0 goto $i17 = (int) -1 
(assert (< var932 0)) ; Cond: $i1 < 0 
(define-const var2506 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i17 = (int) -1 
 ; Statement: if i11 != $i17 goto $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= var494 var2506))) ; Cond: i11 != $i17 
(assert true)
(define-const var549 Int (length/-134980193 var2688)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var608 Int (+ var494 1)) ; Statement: $i2 = i11 + 1 
(define-const var2271 Int (- var549 var608)) ; Statement: $i4 = $i3 - $i2 
(declare-const var1196!1 var3432)
(assert (not (= var1196!1 null-var3432)))
(assert (= (colCount/-1774502042 var1196!1) var2271)) ; Statement: r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> = $i4 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), indexOf/1426977840=([java.lang.String, int, int], int), length/-134980193=([java.lang.String], int), colCount/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], int)}
; {var3432=com.google.javascript.jscomp.Compiler$CodeBuilder, var1196=r0, var2688=r1, var3435=null_type, var1388=$r2, var1284=$i13, var1222=i10, var1636=$i15, var494=i11, var2308=$i0, var932=$i1, var2506=$i17, var549=$i3, var608=$i2, var2271=$i4}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var3432, r0=var1196, r1=var2688, null_type=var3435, $r2=var1388, $i13=var1284, i10=var1222, $i15=var1636, i11=var494, $i0=var2308, $i1=var932, $i17=var2506, $i3=var549, $i2=var608, $i4=var2271}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$i13 = (int) -1;	i10 = $i13;	$i15 = (int) -1;	i11 = $i15;	$i0 = i10 + 1;	$i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(10, $i0);	i10 = $i1;	if $i1 < 0 goto $i17 = (int) -1;	$i17 = (int) -1;	if i11 != $i17 goto $i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = i11 + 1;	$i4 = $i3 - $i2;	r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> = $i4;	return r0
;block_num 5