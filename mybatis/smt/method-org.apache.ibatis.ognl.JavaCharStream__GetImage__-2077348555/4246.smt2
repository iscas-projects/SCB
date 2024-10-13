(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1553442546 (var1197) Int)
(declare-fun tokenBegin/-1553442546 (var1197) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/-1553442546 (var1197) (Array Int Int))
(declare-fun bufsize/-1553442546 (var1197) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1197 var1197)
(declare-const var2808 var1197) ; Statement: r0 := @this: org.apache.ibatis.ognl.JavaCharStream 
(assert (not (= var2808 null-var1197)))
(define-const var1059 Int (bufpos/-1553442546 var2808)) ; Statement: $i1 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos> 
(define-const var3016 Int (tokenBegin/-1553442546 var2808)) ; Statement: $i0 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (< var1059 var3016)) ; Cond: $i1 < $i0 
(define-const var302 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var302)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var302!1 String)
(assert (= var302!1 ""))
(define-const var3636 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var386 (Array Int Int) (buffer/-1553442546 var2808)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.JavaCharStream: char[] buffer> 
(define-const var1042 Int (tokenBegin/-1553442546 var2808)) ; Statement: $i5 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin> 
(define-const var1739 Int (bufsize/-1553442546 var2808)) ; Statement: $i3 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufsize> 
(define-const var2586 Int (tokenBegin/-1553442546 var2808)) ; Statement: $i2 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin> 
(define-const var297 Int (- var1739 var2586)) ; Statement: $i4 = $i3 - $i2 
(assert true)
;(assert (<init>/-253222812 var3636 var386 var1042 var297)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4) 

(declare-const var3636!1 String)
(declare-const var386!1 (Array Int Int))
(declare-const var1042!1 Int)
(declare-const var297!1 Int)
(assert true)
(define-const var1425 String (append/672562846 var302!1 var3636!1)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var302!2 String)
(assert (= var302!2 (str.++ var302!1 var3636!1)))
(define-const var2415 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var443 (Array Int Int) (buffer/-1553442546 var2808)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.JavaCharStream: char[] buffer> 
(define-const var3062 Int (bufpos/-1553442546 var2808)) ; Statement: $i6 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos> 
(define-const var454 Int (+ var3062 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (<init>/-253222812 var2415 var443 0 var454)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7) 

(declare-const var2415!1 String)
(declare-const var443!1 (Array Int Int))
(declare-const var3974 Int)
(declare-const var454!1 Int)
(assert true)
(define-const var423 String (append/672562846 var1425 var2415!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1425!1 String)
(assert (= var1425!1 (str.++ var1425 var2415!1)))
(assert true)
(define-const var13 String (toString/-2075883882 var423)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], int), tokenBegin/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], char[]), bufsize/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1197=org.apache.ibatis.ognl.JavaCharStream, var2808=r0, var1059=$i1, var3016=$i0, var302=$r1, var3636=$r2, var386=$r3, var1042=$i5, var1739=$i3, var2586=$i2, var297=$i4, var1425=$r6, var2415=$r4, var443=$r5, var3062=$i6, var454=$i7, var3974=0, var423=$r7, var13=$r8}
; {org.apache.ibatis.ognl.JavaCharStream=var1197, r0=var2808, $i1=var1059, $i0=var3016, $r1=var302, $r2=var3636, $r3=var386, $i5=var1042, $i3=var1739, $i2=var2586, $i4=var297, $r6=var1425, $r4=var2415, $r5=var443, $i6=var3062, $i7=var454, 0=var3974, $r7=var423, $r8=var13}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.JavaCharStream;	$i1 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos>;	$i0 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = new java.lang.String;	$r3 = r0.<org.apache.ibatis.ognl.JavaCharStream: char[] buffer>;	$i5 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin>;	$i3 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufsize>;	$i2 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin>;	$i4 = $i3 - $i2;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, $i5, $i4);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = new java.lang.String;	$r5 = r0.<org.apache.ibatis.ognl.JavaCharStream: char[] buffer>;	$i6 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos>;	$i7 = $i6 + 1;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>($r5, 0, $i7);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2