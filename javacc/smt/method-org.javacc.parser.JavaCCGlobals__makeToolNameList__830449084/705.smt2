(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2219 0)
(declare-sort var2984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2984-init () var2984)
(declare-fun <init>/-325640736 (var2984) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2740 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2740 null-String)))
(define-const var2133 var2984 var2984-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2133)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var2133!1 var2984)
(assert true)
(define-const var1585 Int (indexOf/-1037706067 var2740 10)) ; Statement: i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10) 
(define-const var1292 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(assert (not (= var1585 var1292))) ; Cond: i9 != $i14 
(assert true)
(define-const var1085 Int (indexOf/-1037706067 var2740 13)) ; Statement: $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(define-const var584 Int var1085) ; Statement: i10 = $i8 
(define-const var460 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i8 != $i16 goto (branch) 
(assert (not (= var1085 var460))) ; Cond: $i8 != $i16 
 ; Statement: if i9 >= i10 goto $i11 = i10 
(assert (not (>= var1585 var584))) ; Negate: Cond: i9 >= i10  
(define-const var1324 Int var1585) ; Statement: $i11 = i9 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11) 
(assert (not (not (= var1324 1000)))) ; Negate: Cond: $i11 != 1000  
(define-const var956 String var2740) ; Statement: r4 = r1 
 ; Statement: goto [?= $i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1212 Int (indexOf/-1037706067 var956 58)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58) 
(define-const var1102 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i0 != $i18 goto $i1 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58) 
(assert (not (not (= var1212 var1102)))) ; Negate: Cond: $i0 != $i18  
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2984-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2740=r1, var2219=null_type, var2984=java.util.ArrayList, var2133=$r7, var1585=i9, var1292=$i14, var1085=$i8, var584=i10, var460=$i16, var1324=$i11, var956=r4, var1212=$i0, var1102=$i18}
; {r1=var2740, null_type=var2219, java.util.ArrayList=var2984, $r7=var2133, i9=var1585, $i14=var1292, $i8=var1085, i10=var584, $i16=var460, $i11=var1324, r4=var956, $i0=var1212, $i18=var1102}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 3}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10);	$i14 = (int) -1;	if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	$i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	i10 = $i8;	$i16 = (int) -1;	if $i8 != $i16 goto (branch);	if i9 >= i10 goto $i11 = i10;	$i11 = i9;	goto [?= (branch)];	if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11);	r4 = r1;	goto [?= $i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58)];	$i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	$i18 = (int) -1;	if $i0 != $i18 goto $i1 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	return $r7
;block_num 8