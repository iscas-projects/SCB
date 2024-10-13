(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1867541097 (var3038) Int)
(declare-fun tokenBegin/-1867541097 (var3038) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/-1867541097 (var3038) (Array Int Int))
(declare-fun bufsize/-1867541097 (var3038) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3038 var3038)
(declare-const var3538 var3038) ; Statement: r0 := @this: org.javacc.utils.JavaCharStream 
(assert (not (= var3538 null-var3038)))
(define-const var3666 Int (bufpos/-1867541097 var3538)) ; Statement: $i1 = r0.<org.javacc.utils.JavaCharStream: int bufpos> 
(define-const var3899 Int (tokenBegin/-1867541097 var3538)) ; Statement: $i0 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (< var3666 var3899)) ; Cond: $i1 < $i0 
(define-const var1760 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1760)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1760!1 String)
(assert (= var1760!1 ""))
(define-const var855 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var3641 (Array Int Int) (buffer/-1867541097 var3538)) ; Statement: $r3 = r0.<org.javacc.utils.JavaCharStream: char[] buffer> 
(define-const var1768 Int (tokenBegin/-1867541097 var3538)) ; Statement: $i5 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin> 
(define-const var205 Int (bufsize/-1867541097 var3538)) ; Statement: $i3 = r0.<org.javacc.utils.JavaCharStream: int bufsize> 
(define-const var3096 Int (tokenBegin/-1867541097 var3538)) ; Statement: $i2 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin> 
(define-const var3562 Int (- var205 var3096)) ; Statement: $i4 = $i3 - $i2 
(assert true)
;(assert (<init>/-253222812 var855 var3641 var1768 var3562)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4) 

(declare-const var855!1 String)
(declare-const var3641!1 (Array Int Int))
(declare-const var1768!1 Int)
(declare-const var3562!1 Int)
(assert true)
(define-const var2378 String (append/672562846 var1760!1 var855!1)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1760!2 String)
(assert (= var1760!2 (str.++ var1760!1 var855!1)))
(define-const var2808 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var2606 (Array Int Int) (buffer/-1867541097 var3538)) ; Statement: $r5 = r0.<org.javacc.utils.JavaCharStream: char[] buffer> 
(define-const var3329 Int (bufpos/-1867541097 var3538)) ; Statement: $i6 = r0.<org.javacc.utils.JavaCharStream: int bufpos> 
(define-const var1708 Int (+ var3329 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (<init>/-253222812 var2808 var2606 0 var1708)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7) 

(declare-const var2808!1 String)
(declare-const var2606!1 (Array Int Int))
(declare-const var2951 Int)
(declare-const var1708!1 Int)
(assert true)
(define-const var964 String (append/672562846 var2378 var2808!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2378!1 String)
(assert (= var2378!1 (str.++ var2378 var2808!1)))
(assert true)
(define-const var1846 String (toString/-2075883882 var964)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1867541097=([org.javacc.utils.JavaCharStream], int), tokenBegin/-1867541097=([org.javacc.utils.JavaCharStream], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/-1867541097=([org.javacc.utils.JavaCharStream], char[]), bufsize/-1867541097=([org.javacc.utils.JavaCharStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3038=org.javacc.utils.JavaCharStream, var3538=r0, var3666=$i1, var3899=$i0, var1760=$r1, var855=$r2, var3641=$r3, var1768=$i5, var205=$i3, var3096=$i2, var3562=$i4, var2378=$r6, var2808=$r4, var2606=$r5, var3329=$i6, var1708=$i7, var2951=0, var964=$r7, var1846=$r8}
; {org.javacc.utils.JavaCharStream=var3038, r0=var3538, $i1=var3666, $i0=var3899, $r1=var1760, $r2=var855, $r3=var3641, $i5=var1768, $i3=var205, $i2=var3096, $i4=var3562, $r6=var2378, $r4=var2808, $r5=var2606, $i6=var3329, $i7=var1708, 0=var2951, $r7=var964, $r8=var1846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.utils.JavaCharStream;	$i1 = r0.<org.javacc.utils.JavaCharStream: int bufpos>;	$i0 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = new java.lang.String;	$r3 = r0.<org.javacc.utils.JavaCharStream: char[] buffer>;	$i5 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin>;	$i3 = r0.<org.javacc.utils.JavaCharStream: int bufsize>;	$i2 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin>;	$i4 = $i3 - $i2;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = new java.lang.String;	$r5 = r0.<org.javacc.utils.JavaCharStream: char[] buffer>;	$i6 = r0.<org.javacc.utils.JavaCharStream: int bufpos>;	$i7 = $i6 + 1;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2