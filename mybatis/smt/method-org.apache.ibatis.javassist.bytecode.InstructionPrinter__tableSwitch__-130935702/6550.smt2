(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun s32bitAt/1005193841 (var1856 Int) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun setCharAt/-2056395727 (String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1856 var1856)
(declare-const null-Int Int)
(declare-const var321 var1856) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var321 null-var1856)))
(declare-const var1820 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1820 null-Int)))
(define-const var197 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var197 "tableswitch {\n")) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>("tableswitch {\n") 
(declare-const var197!1 String)
(assert (= var197!1 "tableswitch {\n"))
(define-const var955 Int (cast-from-Int-to-Int (- 4))) ; Statement: $i20 = (int) -4 
(define-const var1965 Int (bv2nat (bvand ((_ int2bv 64) var1820) ((_ int2bv 64) var955)))) ; Statement: $i1 = i0 & $i20 
(define-const var1734 Int (+ var1965 4)) ; Statement: i14 = $i1 + 4 
(assert true)
(define-const var1626 String (append/672562846 var197!1 "\t\tdefault: ")) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tdefault: ") 
(declare-const var197!2 String)
(assert (= var197!2 (str.++ var197!1 "\t\tdefault: ")))
(assert true)
(define-const var3054 Int (s32bitAt/1005193841 var321 var1734)) ; Statement: $i2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i14) 
(define-const var1165 Int (+ var1820 var3054)) ; Statement: $i3 = i0 + $i2 
(assert true)
(define-const var949 String (append/-1001720160 var1626 var1165)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1626!1 String)
(assert (str.prefixof var1626 var1626!1))
(assert true)
;(assert (append/-1166366385 var949 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var949!1 String)
(assert (str.prefixof var949 var949!1))
(define-const var2517 Int (+ var1734 4)) ; Statement: i15 = i14 + 4 
(assert true)
(define-const var2335 Int (s32bitAt/1005193841 var321 var2517)) ; Statement: i4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i15) 
(define-const var1493 Int (+ var2517 4)) ; Statement: i16 = i15 + 4 
(assert true)
(define-const var73 Int (s32bitAt/1005193841 var321 var1493)) ; Statement: i5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i16) 
(define-const var113 Int (- var73 var2335)) ; Statement: $i6 = i5 - i4 
(define-const var538 Int (+ var113 1)) ; Statement: $i7 = $i6 + 1 
(define-const var1410 Int (* var538 4)) ; Statement: $i8 = $i7 * 4 
(define-const var2882 Int (+ var1493 4)) ; Statement: i17 = i16 + 4 
(define-const var2528 Int (+ var1410 var2882)) ; Statement: i9 = $i8 + i17 
(define-const var3847 Int var2335) ; Statement: i18 = i4 
(assert true) ; Non Conditional
 ; Statement: if i17 >= i9 goto $i10 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>() 
(assert (>= var2882 var2528)) ; Cond: i17 >= i9 
(assert true)
(define-const var3158 Int (length/-171891354 var197!2)) ; Statement: $i10 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>() 
(define-const var3987 Int (- var3158 1)) ; Statement: $i11 = $i10 - 1 
(assert true)
;(assert (setCharAt/-2056395727 var197!2 var3987 125)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: void setCharAt(int,char)>($i11, 125) 

(declare-const var197!3 String)
(declare-const var3987!1 Int)
(declare-const var2461 Int)
(assert true)
(define-const var2469 String (toString/-2075883882 var197!3)) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), cast-from-Int-to-Int=([int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), s32bitAt/1005193841=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), setCharAt/-2056395727=([java.lang.StringBuilder, int, char], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1856=org.apache.ibatis.javassist.bytecode.CodeIterator, var321=r1, var1820=i0, var197=$r9, var955=$i20, var1965=$i1, var1734=i14, var1626=$r2, var3054=$i2, var1165=$i3, var949=$r3, var2517=i15, var2335=i4, var1493=i16, var73=i5, var113=$i6, var538=$i7, var1410=$i8, var2882=i17, var2528=i9, var3847=i18, var3158=$i10, var3987=$i11, var2461=125, var2469=$r4}
; {org.apache.ibatis.javassist.bytecode.CodeIterator=var1856, r1=var321, i0=var1820, $r9=var197, $i20=var955, $i1=var1965, i14=var1734, $r2=var1626, $i2=var3054, $i3=var1165, $r3=var949, i15=var2517, i4=var2335, i16=var1493, i5=var73, $i6=var113, $i7=var538, $i8=var1410, i17=var2882, i9=var2528, i18=var3847, $i10=var3158, $i11=var3987, 125=var2461, $r4=var2469}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setCharAt(int,char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setCharAt(int,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i0 := @parameter1: int;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>("tableswitch {\n");	$i20 = (int) -4;	$i1 = i0 & $i20;	i14 = $i1 + 4;	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tdefault: ");	$i2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i14);	$i3 = i0 + $i2;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	i15 = i14 + 4;	i4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i15);	i16 = i15 + 4;	i5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.CodeIterator: int s32bitAt(int)>(i16);	$i6 = i5 - i4;	$i7 = $i6 + 1;	$i8 = $i7 * 4;	i17 = i16 + 4;	i9 = $i8 + i17;	i18 = i4;	if i17 >= i9 goto $i10 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>();	$i10 = virtualinvoke $r9.<java.lang.StringBuilder: int length()>();	$i11 = $i10 - 1;	virtualinvoke $r9.<java.lang.StringBuilder: void setCharAt(int,char)>($i11, 125);	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3