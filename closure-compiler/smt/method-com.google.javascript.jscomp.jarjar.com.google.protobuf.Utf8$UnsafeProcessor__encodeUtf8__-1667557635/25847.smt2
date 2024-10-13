(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var449 0)
(declare-sort var2347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2347-init () var2347)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1057600344 (var2347 String) void)
(declare-const null-var449 var449)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3117 var449) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor 
(assert (not (= var3117 null-var449)))
(declare-const var2285 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2285 null-String)))
(declare-const var1601 (Array Int Int)) ; Statement: r8 := @parameter1: byte[] 
(assert (not (= var1601 null-__Array__Int__Int__)))
(declare-const var2694 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2694 null-Int)))
(declare-const var2042 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2042 null-Int)))
(define-const var630 Int (cast-from-Int-to-Int var2694)) ; Statement: l61 = (long) i0 
(define-const var2741 Int (cast-from-Int-to-Int var2042)) ; Statement: $l2 = (long) i1 
(define-const var2657 Int (+ var630 var2741)) ; Statement: l3 = l61 + $l2 
(define-const var401 Int (String_length/-667254855 var2285)) ; Statement: i4 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i4 > i1 goto $r20 = new java.lang.ArrayIndexOutOfBoundsException 
(assert (> var401 var2042)) ; Cond: i4 > i1 
(define-const var2195 var2347 var2347-init) ; Statement: $r20 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var1350 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1350)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1350!1 String)
(assert (= var1350!1 ""))
(assert true)
(define-const var2153 String (append/672562846 var1350!1 "Failed writing ")) ; Statement: $r3 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed writing ") 
(declare-const var1350!2 String)
(assert (= var1350!2 (str.++ var1350!1 "Failed writing ")))
(define-const var2448 Int (- var401 1)) ; Statement: $i5 = i4 - 1 
(define-const var3653 Int (String_charAt/1466887330 var2285 var2448)) ; Statement: $c6 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>($i5) 
(assert true)
(define-const var1988 String (append/-1166366385 var2153 var3653)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var2153!1 String)
(assert (str.prefixof var2153 var2153!1))
(assert true)
(define-const var3269 String (append/672562846 var1988 " at index ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at index ") 
(declare-const var1988!1 String)
(assert (= var1988!1 (str.++ var1988 " at index ")))
(define-const var3567 Int (+ var2694 var2042)) ; Statement: $i7 = i0 + i1 
(assert true)
(define-const var2259 String (append/-1001720160 var3269 var3567)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var3269!1 String)
(assert (str.prefixof var3269 var3269!1))
(assert true)
(define-const var1388 String (toString/-2075883882 var2259)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1057600344 var2195 var1388)) ; Statement: specialinvoke $r20.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var2195!1 var2347)
(declare-const var1388!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], long), String_length/-667254855=([java.lang.CharSequence], int), var2347-init=([], java.lang.ArrayIndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_charAt/1466887330=([java.lang.CharSequence, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var449=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor, var3117=r11, var2285=r0, var1601=r8, var2694=i0, var2042=i1, var630=l61, var2741=$l2, var2657=l3, var401=i4, var2347=java.lang.ArrayIndexOutOfBoundsException, var2195=$r20, var1350=$r19, var2153=$r3, var2448=$i5, var3653=$c6, var1988=$r4, var3269=$r5, var3567=$i7, var2259=$r6, var1388=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor=var449, r11=var3117, r0=var2285, r8=var1601, i0=var2694, i1=var2042, l61=var630, $l2=var2741, l3=var2657, i4=var401, java.lang.ArrayIndexOutOfBoundsException=var2347, $r20=var2195, $r19=var1350, $r3=var2153, $i5=var2448, $c6=var3653, $r4=var1988, $r5=var3269, $i7=var3567, $r6=var2259, $r7=var1388}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.CharSequence: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor;	r0 := @parameter0: java.lang.CharSequence;	r8 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	l61 = (long) i0;	$l2 = (long) i1;	l3 = l61 + $l2;	i4 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i4 > i1 goto $r20 = new java.lang.ArrayIndexOutOfBoundsException;	$r20 = new java.lang.ArrayIndexOutOfBoundsException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed writing ");	$i5 = i4 - 1;	$c6 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>($i5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at index ");	$i7 = i0 + i1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r20
;block_num 2