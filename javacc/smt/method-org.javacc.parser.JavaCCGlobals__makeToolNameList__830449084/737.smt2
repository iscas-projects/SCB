(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var933 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var191-init () var191)
(declare-fun <init>/-325640736 (var191) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1838 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1838 null-String)))
(define-const var3516 var191 var191-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3516)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var3516!1 var191)
(assert true)
(define-const var3143 Int (indexOf/-1037706067 var1838 10)) ; Statement: i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10) 
(define-const var2849 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(assert (not (= var3143 var2849))) ; Cond: i9 != $i14 
(assert true)
(define-const var242 Int (indexOf/-1037706067 var1838 13)) ; Statement: $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13) 
(define-const var590 Int var242) ; Statement: i10 = $i8 
(define-const var1358 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i8 != $i16 goto (branch) 
(assert (not (= var242 var1358))) ; Cond: $i8 != $i16 
 ; Statement: if i9 >= i10 goto $i11 = i10 
(assert (>= var3143 var590)) ; Cond: i9 >= i10 
(define-const var3006 Int var590) ; Statement: $i11 = i10 
(assert true) ; Non Conditional
 ; Statement: if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11) 
(assert (not (not (= var3006 1000)))) ; Negate: Cond: $i11 != 1000  
(define-const var1831 String var1838) ; Statement: r4 = r1 
 ; Statement: goto [?= $i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1615 Int (indexOf/-1037706067 var1831 58)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58) 
(define-const var1971 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i0 != $i18 goto $i1 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58) 
(assert (not (not (= var1615 var1971)))) ; Negate: Cond: $i0 != $i18  
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var191-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1838=r1, var933=null_type, var191=java.util.ArrayList, var3516=$r7, var3143=i9, var2849=$i14, var242=$i8, var590=i10, var1358=$i16, var3006=$i11, var1831=r4, var1615=$i0, var1971=$i18}
; {r1=var1838, null_type=var933, java.util.ArrayList=var191, $r7=var3516, i9=var3143, $i14=var2849, $i8=var242, i10=var590, $i16=var1358, $i11=var3006, r4=var1831, $i0=var1615, $i18=var1971}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 3}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	i9 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10);	$i14 = (int) -1;	if i9 != $i14 goto $i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	$i8 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(13);	i10 = $i8;	$i16 = (int) -1;	if $i8 != $i16 goto (branch);	if i9 >= i10 goto $i11 = i10;	$i11 = i10;	if $i11 != 1000 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i11);	r4 = r1;	goto [?= $i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58)];	$i0 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	$i18 = (int) -1;	if $i0 != $i18 goto $i1 = virtualinvoke r4.<java.lang.String: int indexOf(int)>(58);	return $r7
;block_num 8