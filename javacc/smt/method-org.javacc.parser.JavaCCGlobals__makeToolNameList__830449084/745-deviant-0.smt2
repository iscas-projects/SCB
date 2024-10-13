(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort var929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var929-init () var929)
(declare-fun <init>/-325640736 (var929) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var971 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var971 null-String)))
(define-const var2986 var929 var929-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2986)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var2986!1 var929)
(assert true)
(define-const var3868 Int (indexOf/-1037706067 var971 10)) ; Statement: i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10) 
(define-const var3281 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(assert (not (= var3868 var3281))) ; Cond: i9 != $i14 
(assert true)
(define-const var2398 Int (indexOf/-1037706067 var971 13)) ; Statement: $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(define-const var1389 Int var2398) ; Statement: i10 = $i8 
(define-const var1715 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i8 != $i16 goto (branch) 
(assert (not (= var2398 var1715))) ; Cond: $i8 != $i16 
 ; Statement: if i9 >= i10 goto $i11 = i10 
(assert (>= var3868 var1389)) ; Cond: i9 >= i10 
(define-const var1776 Int var1389) ; Statement: $i11 = i10 
(assert true) ; Non Conditional
 ; Statement: if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11) 
(assert (not (= var1776 1000))) ; Cond: $i11 != 1000 
(assert (not (and true (and (>= 0 0) (>= (str.len var971) var1776) (>= var1776 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var929-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var971=r1, var1500=null_type, var929=java.util.ArrayList, var2986=$r7, var3868=i9, var3281=$i14, var2398=$i8, var1389=i10, var1715=$i16, var1776=$i11, var1366=r4, var1966=$i0, var1431=$i18}
; {r1=var971, null_type=var1500, java.util.ArrayList=var929, $r7=var2986, i9=var3868, $i14=var3281, $i8=var2398, i10=var1389, $i16=var1715, $i11=var1776, r4=var1366, $i0=var1966, $i18=var1431}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 3,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10);	$i14 = (int) -1;	if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	$i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	i10 = $i8;	$i16 = (int) -1;	if $i8 != $i16 goto (branch);	if i9 >= i10 goto $i11 = i10;	$i11 = i10;	if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11);	r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11);	$i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	$i18 = (int) -1;	if $i0 != $i18 goto $i1 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	return $r7
;block_num 8