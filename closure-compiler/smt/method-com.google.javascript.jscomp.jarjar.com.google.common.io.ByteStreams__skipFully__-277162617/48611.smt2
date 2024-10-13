(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var1048 0)
(declare-sort var2936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1048_skipUpTo/1619701199 (var609 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2936-init () var2936)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var2936 String) void)
(declare-const null-var609 var609)
(declare-const null-Int Int)
(declare-const var3767 var609) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3767 null-var609)))
(declare-const var3218 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3218 null-Int)))
(define-const var708 Int (var1048_skipUpTo/1619701199 var3767 var3218)) ; Statement: l1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: long skipUpTo(java.io.InputStream,long)>(r0, l0) 
(define-const var2322 Int (ite (> var708 var3218) 1 (ite (< var708 var3218) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
(define-const var3486 Int (cast-from-Int-to-Int var2322)) ; Statement: $i3 = (int) $b2 
 ; Statement: if $i3 >= 0 goto return 
(assert (not (>= var3486 0))) ; Negate: Cond: $i3 >= 0  
(define-const var3265 var2936 var2936-init) ; Statement: $r10 = new java.io.EOFException 
(define-const var3651 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3651)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3651!1 String)
(assert (= var3651!1 ""))
(assert true)
(define-const var3687 String (append/672562846 var3651!1 "reached end of stream after skipping ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reached end of stream after skipping ") 
(declare-const var3651!2 String)
(assert (= var3651!2 (str.++ var3651!1 "reached end of stream after skipping ")))
(assert true)
(define-const var3404 String (append/-901862667 var3687 var708)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var3687!1 String)
(assert (str.prefixof var3687 var3687!1))
(assert true)
(define-const var1864 String (append/672562846 var3404 " bytes; ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes; ") 
(declare-const var3404!1 String)
(assert (= var3404!1 (str.++ var3404 " bytes; ")))
(assert true)
(define-const var172 String (append/-901862667 var1864 var3218)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1864!1 String)
(assert (str.prefixof var1864 var1864!1))
(assert true)
(define-const var3121 String (append/672562846 var172 " bytes expected")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes expected") 
(declare-const var172!1 String)
(assert (= var172!1 (str.++ var172 " bytes expected")))
(assert true)
(define-const var3597 String (toString/-2075883882 var3121)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var3265 var3597)) ; Statement: specialinvoke $r10.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var3265!1 var2936)
(declare-const var3597!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1048_skipUpTo/1619701199=([java.io.InputStream, long], long), cast-from-Int-to-Int=([byte], int), var2936-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var609=java.io.InputStream, var3767=r0, var3218=l0, var1048=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams, var708=l1, var2322=$b2, var3486=$i3, var2936=java.io.EOFException, var3265=$r10, var3651=$r9, var3687=$r3, var3404=$r4, var1864=$r5, var172=$r6, var3121=$r7, var3597=$r8}
; {java.io.InputStream=var609, r0=var3767, l0=var3218, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams=var1048, l1=var708, $b2=var2322, $i3=var3486, java.io.EOFException=var2936, $r10=var3265, $r9=var3651, $r3=var3687, $r4=var3404, $r5=var1864, $r6=var172, $r7=var3121, $r8=var3597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	l1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: long skipUpTo(java.io.InputStream,long)>(r0, l0);	$b2 = l1 cmp l0;	$i3 = (int) $b2;	if $i3 >= 0 goto return;	$r10 = new java.io.EOFException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reached end of stream after skipping ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes; ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes expected");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 2