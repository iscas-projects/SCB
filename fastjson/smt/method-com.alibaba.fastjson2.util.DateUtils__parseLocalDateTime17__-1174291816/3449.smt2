(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var831-init () var831)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var831 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1197 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var1197 null-__Array__Int__Int__)))
(declare-const var1597 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1597 null-Int)))
(define-const var153 Int (+ var1597 17)) ; Statement: $i2 = i0 + 17 
(define-const var542 Int (getLength-Arr-Int-1 var1197)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto c93 = r0[i0] 
(assert (not (<= var153 var542))) ; Negate: Cond: $i2 <= $i1  
(define-const var1388 String String-init) ; Statement: $r8 = new java.lang.String 
(define-const var3467 Int (getLength-Arr-Int-1 var1197)) ; Statement: $i91 = lengthof r0 
(define-const var1232 Int (- var3467 var1597)) ; Statement: $i92 = $i91 - i0 
(assert true)
;(assert (<init>/-253222812 var1388 var1197 var1597 var1232)) ; Statement: specialinvoke $r8.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i92) 

(declare-const var1388!1 String)
(declare-const var1197!1 (Array Int Int))
(declare-const var1597!1 Int)
(declare-const var1232!1 Int)
(define-const var1632 var831 var831-init) ; Statement: $r10 = new java.time.format.DateTimeParseException 
(define-const var3716 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3716)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3716!1 String)
(assert (= var3716!1 ""))
(assert true)
(define-const var1018 String (append/672562846 var3716!1 "illegal input ")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var3716!2 String)
(assert (= var3716!2 (str.++ var3716!1 "illegal input ")))
(assert true)
(define-const var2756 String (append/672562846 var1018 var1388!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1018!1 String)
(assert (= var1018!1 (str.++ var1018 var1388!1)))
(assert true)
(define-const var1580 String (toString/-2075883882 var2756)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var1632 var1580 (cast-from-String-to-String var1388!1) 0)) ; Statement: specialinvoke $r10.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r7, $r8, 0) 

(declare-const var1632!1 var831)
(declare-const var1580!1 String)
(declare-const var1388!2 String)
(declare-const var1815 Int)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var831-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1197=r0, var1597=i0, var153=$i2, var542=$i1, var1388=$r8, var3467=$i91, var1232=$i92, var831=java.time.format.DateTimeParseException, var1632=$r10, var3716=$r9, var1018=$r5, var2756=$r6, var1580=$r7, var1815=0}
; {r0=var1197, i0=var1597, $i2=var153, $i1=var542, $r8=var1388, $i91=var3467, $i92=var1232, java.time.format.DateTimeParseException=var831, $r10=var1632, $r9=var3716, $r5=var1018, $r6=var2756, $r7=var1580, 0=var1815}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i0 := @parameter1: int;	$i2 = i0 + 17;	$i1 = lengthof r0;	if $i2 <= $i1 goto c93 = r0[i0];	$r8 = new java.lang.String;	$i91 = lengthof r0;	$i92 = $i91 - i0;	specialinvoke $r8.<java.lang.String: void <init>(char[],int,int)>(r0, i0, $i92);	$r10 = new java.time.format.DateTimeParseException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r7, $r8, 0);	throw $r10
;block_num 2