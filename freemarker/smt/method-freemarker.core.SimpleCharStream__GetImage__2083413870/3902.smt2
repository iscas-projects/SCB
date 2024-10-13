(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/864528911 (var231) Int)
(declare-fun tokenBegin/864528911 (var231) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/864528911 (var231) (Array Int Int))
(declare-fun bufsize/864528911 (var231) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var231 var231)
(declare-const var2685 var231) ; Statement: r0 := @this: freemarker.core.SimpleCharStream 
(assert (not (= var2685 null-var231)))
(define-const var750 Int (bufpos/864528911 var2685)) ; Statement: $i1 = r0.<freemarker.core.SimpleCharStream: int bufpos> 
(define-const var2456 Int (tokenBegin/864528911 var2685)) ; Statement: $i0 = r0.<freemarker.core.SimpleCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (< var750 var2456)) ; Cond: $i1 < $i0 
(define-const var3667 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3667)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3667!1 String)
(assert (= var3667!1 ""))
(define-const var797 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var777 (Array Int Int) (buffer/864528911 var2685)) ; Statement: $r3 = r0.<freemarker.core.SimpleCharStream: char[] buffer> 
(define-const var1916 Int (tokenBegin/864528911 var2685)) ; Statement: $i5 = r0.<freemarker.core.SimpleCharStream: int tokenBegin> 
(define-const var165 Int (bufsize/864528911 var2685)) ; Statement: $i3 = r0.<freemarker.core.SimpleCharStream: int bufsize> 
(define-const var1250 Int (tokenBegin/864528911 var2685)) ; Statement: $i2 = r0.<freemarker.core.SimpleCharStream: int tokenBegin> 
(define-const var1852 Int (- var165 var1250)) ; Statement: $i4 = $i3 - $i2 
(assert true)
;(assert (<init>/-253222812 var797 var777 var1916 var1852)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4) 

(declare-const var797!1 String)
(declare-const var777!1 (Array Int Int))
(declare-const var1916!1 Int)
(declare-const var1852!1 Int)
(assert true)
(define-const var1887 String (append/672562846 var3667!1 var797!1)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3667!2 String)
(assert (= var3667!2 (str.++ var3667!1 var797!1)))
(define-const var3768 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var1820 (Array Int Int) (buffer/864528911 var2685)) ; Statement: $r5 = r0.<freemarker.core.SimpleCharStream: char[] buffer> 
(define-const var51 Int (bufpos/864528911 var2685)) ; Statement: $i6 = r0.<freemarker.core.SimpleCharStream: int bufpos> 
(define-const var3413 Int (+ var51 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (<init>/-253222812 var3768 var1820 0 var3413)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7) 

(declare-const var3768!1 String)
(declare-const var1820!1 (Array Int Int))
(declare-const var2112 Int)
(declare-const var3413!1 Int)
(assert true)
(define-const var3666 String (append/672562846 var1887 var3768!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1887!1 String)
(assert (= var1887!1 (str.++ var1887 var3768!1)))
(assert true)
(define-const var3332 String (toString/-2075883882 var3666)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/864528911=([freemarker.core.SimpleCharStream], int), tokenBegin/864528911=([freemarker.core.SimpleCharStream], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/864528911=([freemarker.core.SimpleCharStream], char[]), bufsize/864528911=([freemarker.core.SimpleCharStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var231=freemarker.core.SimpleCharStream, var2685=r0, var750=$i1, var2456=$i0, var3667=$r1, var797=$r2, var777=$r3, var1916=$i5, var165=$i3, var1250=$i2, var1852=$i4, var1887=$r6, var3768=$r4, var1820=$r5, var51=$i6, var3413=$i7, var2112=0, var3666=$r7, var3332=$r8}
; {freemarker.core.SimpleCharStream=var231, r0=var2685, $i1=var750, $i0=var2456, $r1=var3667, $r2=var797, $r3=var777, $i5=var1916, $i3=var165, $i2=var1250, $i4=var1852, $r6=var1887, $r4=var3768, $r5=var1820, $i6=var51, $i7=var3413, 0=var2112, $r7=var3666, $r8=var3332}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.SimpleCharStream;	$i1 = r0.<freemarker.core.SimpleCharStream: int bufpos>;	$i0 = r0.<freemarker.core.SimpleCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = new java.lang.String;	$r3 = r0.<freemarker.core.SimpleCharStream: char[] buffer>;	$i5 = r0.<freemarker.core.SimpleCharStream: int tokenBegin>;	$i3 = r0.<freemarker.core.SimpleCharStream: int bufsize>;	$i2 = r0.<freemarker.core.SimpleCharStream: int tokenBegin>;	$i4 = $i3 - $i2;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = new java.lang.String;	$r5 = r0.<freemarker.core.SimpleCharStream: char[] buffer>;	$i6 = r0.<freemarker.core.SimpleCharStream: int bufpos>;	$i7 = $i6 + 1;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2