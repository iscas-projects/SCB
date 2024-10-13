(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-623079098 (var681) Int)
(declare-fun tokenBegin/-623079098 (var681) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/-623079098 (var681) (Array Int Int))
(declare-fun bufsize/-623079098 (var681) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var681 var681)
(declare-const var1163 var681) ; Statement: r0 := @this: org.javacc.jjtree.JavaCharStream 
(assert (not (= var1163 null-var681)))
(define-const var2845 Int (bufpos/-623079098 var1163)) ; Statement: $i1 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos> 
(define-const var2745 Int (tokenBegin/-623079098 var1163)) ; Statement: $i0 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (< var2845 var2745)) ; Cond: $i1 < $i0 
(define-const var1509 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1509)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1509!1 String)
(assert (= var1509!1 ""))
(define-const var1826 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var3314 (Array Int Int) (buffer/-623079098 var1163)) ; Statement: $r3 = r0.<org.javacc.jjtree.JavaCharStream: char[] buffer> 
(define-const var491 Int (tokenBegin/-623079098 var1163)) ; Statement: $i5 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin> 
(define-const var1601 Int (bufsize/-623079098 var1163)) ; Statement: $i3 = r0.<org.javacc.jjtree.JavaCharStream: int bufsize> 
(define-const var376 Int (tokenBegin/-623079098 var1163)) ; Statement: $i2 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin> 
(define-const var759 Int (- var1601 var376)) ; Statement: $i4 = $i3 - $i2 
(assert true)
;(assert (<init>/-253222812 var1826 var3314 var491 var759)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4) 

(declare-const var1826!1 String)
(declare-const var3314!1 (Array Int Int))
(declare-const var491!1 Int)
(declare-const var759!1 Int)
(assert true)
(define-const var1433 String (append/672562846 var1509!1 var1826!1)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1509!2 String)
(assert (= var1509!2 (str.++ var1509!1 var1826!1)))
(define-const var522 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var1594 (Array Int Int) (buffer/-623079098 var1163)) ; Statement: $r5 = r0.<org.javacc.jjtree.JavaCharStream: char[] buffer> 
(define-const var3829 Int (bufpos/-623079098 var1163)) ; Statement: $i6 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos> 
(define-const var2512 Int (+ var3829 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (<init>/-253222812 var522 var1594 0 var2512)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7) 

(declare-const var522!1 String)
(declare-const var1594!1 (Array Int Int))
(declare-const var685 Int)
(declare-const var2512!1 Int)
(assert true)
(define-const var456 String (append/672562846 var1433 var522!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1433!1 String)
(assert (= var1433!1 (str.++ var1433 var522!1)))
(assert true)
(define-const var3216 String (toString/-2075883882 var456)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-623079098=([org.javacc.jjtree.JavaCharStream], int), tokenBegin/-623079098=([org.javacc.jjtree.JavaCharStream], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/-623079098=([org.javacc.jjtree.JavaCharStream], char[]), bufsize/-623079098=([org.javacc.jjtree.JavaCharStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var681=org.javacc.jjtree.JavaCharStream, var1163=r0, var2845=$i1, var2745=$i0, var1509=$r1, var1826=$r2, var3314=$r3, var491=$i5, var1601=$i3, var376=$i2, var759=$i4, var1433=$r6, var522=$r4, var1594=$r5, var3829=$i6, var2512=$i7, var685=0, var456=$r7, var3216=$r8}
; {org.javacc.jjtree.JavaCharStream=var681, r0=var1163, $i1=var2845, $i0=var2745, $r1=var1509, $r2=var1826, $r3=var3314, $i5=var491, $i3=var1601, $i2=var376, $i4=var759, $r6=var1433, $r4=var522, $r5=var1594, $i6=var3829, $i7=var2512, 0=var685, $r7=var456, $r8=var3216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjtree.JavaCharStream;	$i1 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos>;	$i0 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = new java.lang.String;	$r3 = r0.<org.javacc.jjtree.JavaCharStream: char[] buffer>;	$i5 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin>;	$i3 = r0.<org.javacc.jjtree.JavaCharStream: int bufsize>;	$i2 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin>;	$i4 = $i3 - $i2;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = new java.lang.String;	$r5 = r0.<org.javacc.jjtree.JavaCharStream: char[] buffer>;	$i6 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos>;	$i7 = $i6 + 1;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2