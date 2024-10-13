(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1620628507 (var465) Int)
(declare-fun tokenBegin/-1620628507 (var465) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/-1620628507 (var465) (Array Int Int))
(declare-fun bufsize/-1620628507 (var465) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var465 var465)
(declare-const var1206 var465) ; Statement: r0 := @this: org.javacc.parser.JavaCharStream 
(assert (not (= var1206 null-var465)))
(define-const var2089 Int (bufpos/-1620628507 var1206)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCharStream: int bufpos> 
(define-const var2284 Int (tokenBegin/-1620628507 var1206)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (< var2089 var2284)) ; Cond: $i1 < $i0 
(define-const var981 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var981)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var981!1 String)
(assert (= var981!1 ""))
(define-const var544 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var1093 (Array Int Int) (buffer/-1620628507 var1206)) ; Statement: $r3 = r0.<org.javacc.parser.JavaCharStream: char[] buffer> 
(define-const var1728 Int (tokenBegin/-1620628507 var1206)) ; Statement: $i5 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin> 
(define-const var1377 Int (bufsize/-1620628507 var1206)) ; Statement: $i3 = r0.<org.javacc.parser.JavaCharStream: int bufsize> 
(define-const var666 Int (tokenBegin/-1620628507 var1206)) ; Statement: $i2 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin> 
(define-const var3029 Int (- var1377 var666)) ; Statement: $i4 = $i3 - $i2 
(assert true)
;(assert (<init>/-253222812 var544 var1093 var1728 var3029)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4) 

(declare-const var544!1 String)
(declare-const var1093!1 (Array Int Int))
(declare-const var1728!1 Int)
(declare-const var3029!1 Int)
(assert true)
(define-const var984 String (append/672562846 var981!1 var544!1)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var981!2 String)
(assert (= var981!2 (str.++ var981!1 var544!1)))
(define-const var2539 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var3692 (Array Int Int) (buffer/-1620628507 var1206)) ; Statement: $r5 = r0.<org.javacc.parser.JavaCharStream: char[] buffer> 
(define-const var500 Int (bufpos/-1620628507 var1206)) ; Statement: $i6 = r0.<org.javacc.parser.JavaCharStream: int bufpos> 
(define-const var2166 Int (+ var500 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (<init>/-253222812 var2539 var3692 0 var2166)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7) 

(declare-const var2539!1 String)
(declare-const var3692!1 (Array Int Int))
(declare-const var2005 Int)
(declare-const var2166!1 Int)
(assert true)
(define-const var676 String (append/672562846 var984 var2539!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var984!1 String)
(assert (= var984!1 (str.++ var984 var2539!1)))
(assert true)
(define-const var3318 String (toString/-2075883882 var676)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1620628507=([org.javacc.parser.JavaCharStream], int), tokenBegin/-1620628507=([org.javacc.parser.JavaCharStream], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/-1620628507=([org.javacc.parser.JavaCharStream], char[]), bufsize/-1620628507=([org.javacc.parser.JavaCharStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var465=org.javacc.parser.JavaCharStream, var1206=r0, var2089=$i1, var2284=$i0, var981=$r1, var544=$r2, var1093=$r3, var1728=$i5, var1377=$i3, var666=$i2, var3029=$i4, var984=$r6, var2539=$r4, var3692=$r5, var500=$i6, var2166=$i7, var2005=0, var676=$r7, var3318=$r8}
; {org.javacc.parser.JavaCharStream=var465, r0=var1206, $i1=var2089, $i0=var2284, $r1=var981, $r2=var544, $r3=var1093, $i5=var1728, $i3=var1377, $i2=var666, $i4=var3029, $r6=var984, $r4=var2539, $r5=var3692, $i6=var500, $i7=var2166, 0=var2005, $r7=var676, $r8=var3318}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCharStream;	$i1 = r0.<org.javacc.parser.JavaCharStream: int bufpos>;	$i0 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = new java.lang.String;	$r3 = r0.<org.javacc.parser.JavaCharStream: char[] buffer>;	$i5 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin>;	$i3 = r0.<org.javacc.parser.JavaCharStream: int bufsize>;	$i2 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin>;	$i4 = $i3 - $i2;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = new java.lang.String;	$r5 = r0.<org.javacc.parser.JavaCharStream: char[] buffer>;	$i6 = r0.<org.javacc.parser.JavaCharStream: int bufpos>;	$i7 = $i6 + 1;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2