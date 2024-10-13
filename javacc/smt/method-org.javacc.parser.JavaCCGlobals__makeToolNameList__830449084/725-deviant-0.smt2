(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1712 0)
(declare-sort var617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var617-init () var617)
(declare-fun <init>/-325640736 (var617) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2897 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2897 null-String)))
(define-const var1995 var617 var617-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1995)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var1995!1 var617)
(assert true)
(define-const var2443 Int (indexOf/-1037706067 var2897 10)) ; Statement: i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10) 
(define-const var2302 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(assert (not (= var2443 var2302))) ; Cond: i9 != $i14 
(assert true)
(define-const var803 Int (indexOf/-1037706067 var2897 13)) ; Statement: $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(define-const var2642 Int var803) ; Statement: i10 = $i8 
(define-const var819 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i8 != $i16 goto (branch) 
(assert (not (= var803 var819))) ; Cond: $i8 != $i16 
 ; Statement: if i9 >= i10 goto $i11 = i10 
(assert (not (>= var2443 var2642))) ; Negate: Cond: i9 >= i10  
(define-const var1692 Int var2443) ; Statement: $i11 = i9 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11) 
(assert (not (= var1692 1000))) ; Cond: $i11 != 1000 
(assert (not (and true (and (>= 0 0) (>= (str.len var2897) var1692) (>= var1692 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var617-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2897=r1, var1712=null_type, var617=java.util.ArrayList, var1995=$r7, var2443=i9, var2302=$i14, var803=$i8, var2642=i10, var819=$i16, var1692=$i11, var2365=r4, var376=$i0, var323=$i18}
; {r1=var2897, null_type=var1712, java.util.ArrayList=var617, $r7=var1995, i9=var2443, $i14=var2302, $i8=var803, i10=var2642, $i16=var819, $i11=var1692, r4=var2365, $i0=var376, $i18=var323}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 3,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10);	$i14 = (int) -1;	if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	$i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	i10 = $i8;	$i16 = (int) -1;	if $i8 != $i16 goto (branch);	if i9 >= i10 goto $i11 = i10;	$i11 = i9;	goto [?= (branch)];	if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11);	r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11);	$i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	$i18 = (int) -1;	if $i0 != $i18 goto $i1 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	return $r7
;block_num 8