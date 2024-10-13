(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun s32bitAt/1005193841 (var2945 Int) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun setCharAt/-2056395727 (String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2945 var2945)
(declare-const null-Int Int)
(declare-const var2869 var2945) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2869 null-var2945)))
(declare-const var3553 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3553 null-Int)))
(define-const var1482 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1482 "lookupswitch {\n")) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>("lookupswitch {\n") 
(declare-const var1482!1 String)
(assert (= var1482!1 "lookupswitch {\n"))
(define-const var3401 Int (cast-from-Int-to-Int (- 4))) ; Statement: $i17 = (int) -4 
(define-const var1819 Int (bv2nat (bvand ((_ int2bv 64) var3553) ((_ int2bv 64) var3401)))) ; Statement: $i1 = i0 & $i17 
(define-const var506 Int (+ var1819 4)) ; Statement: i13 = $i1 + 4 
(assert true)
(define-const var1774 String (append/672562846 var1482!1 "\t\tdefault: ")) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tdefault: ") 
(declare-const var1482!2 String)
(assert (= var1482!2 (str.++ var1482!1 "\t\tdefault: ")))
(assert true)
(define-const var452 Int (s32bitAt/1005193841 var2869 var506)) ; Statement: $i2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i13) 
(define-const var253 Int (+ var3553 var452)) ; Statement: $i3 = i0 + $i2 
(assert true)
(define-const var3468 String (append/-1001720160 var1774 var253)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1774!1 String)
(assert (str.prefixof var1774 var1774!1))
(assert true)
;(assert (append/-1166366385 var3468 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3468!1 String)
(assert (str.prefixof var3468 var3468!1))
(define-const var944 Int (+ var506 4)) ; Statement: i14 = i13 + 4 
(assert true)
(define-const var3135 Int (s32bitAt/1005193841 var2869 var944)) ; Statement: i4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i14) 
(define-const var2089 Int (* var3135 8)) ; Statement: $i5 = i4 * 8 
(define-const var1763 Int (+ var944 4)) ; Statement: i15 = i14 + 4 
(define-const var3406 Int (+ var2089 var1763)) ; Statement: i6 = $i5 + i15 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i6 goto $i7 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>() 
(assert (>= var1763 var3406)) ; Cond: i15 >= i6 
(assert true)
(define-const var2139 Int (length/-171891354 var1482!2)) ; Statement: $i7 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>() 
(define-const var43 Int (- var2139 1)) ; Statement: $i8 = $i7 - 1 
(assert true)
;(assert (setCharAt/-2056395727 var1482!2 var43 125)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: void setCharAt(int,char)>($i8, 125) 

(declare-const var1482!3 String)
(declare-const var43!1 Int)
(declare-const var3180 Int)
(assert true)
(define-const var1293 String (toString/-2075883882 var1482!3)) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), cast-from-Int-to-Int=([int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), s32bitAt/1005193841=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), setCharAt/-2056395727=([java.lang.StringBuilder, int, char], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2945=org.apache.ibatis.javassist.bytecode.CodeIterator, var2869=r1, var3553=i0, var1482=$r9, var3401=$i17, var1819=$i1, var506=i13, var1774=$r2, var452=$i2, var253=$i3, var3468=$r3, var944=i14, var3135=i4, var2089=$i5, var1763=i15, var3406=i6, var2139=$i7, var43=$i8, var3180=125, var1293=$r4}
; {org.apache.ibatis.javassist.bytecode.CodeIterator=var2945, r1=var2869, i0=var3553, $r9=var1482, $i17=var3401, $i1=var1819, i13=var506, $r2=var1774, $i2=var452, $i3=var253, $r3=var3468, i14=var944, i4=var3135, $i5=var2089, i15=var1763, i6=var3406, $i7=var2139, $i8=var43, 125=var3180, $r4=var1293}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setCharAt(int,char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setCharAt(int,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i0 := @parameter1: int;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>("lookupswitch {\n");	$i17 = (int) -4;	$i1 = i0 & $i17;	i13 = $i1 + 4;	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tdefault: ");	$i2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i13);	$i3 = i0 + $i2;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	i14 = i13 + 4;	i4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i14);	$i5 = i4 * 8;	i15 = i14 + 4;	i6 = $i5 + i15;	if i15 >= i6 goto $i7 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>();	$i7 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>();	$i8 = $i7 - 1;	virtualinvoke $r9.<java.lang.StringBuilder: void setCharAt(int,char)>($i8, 125);	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3