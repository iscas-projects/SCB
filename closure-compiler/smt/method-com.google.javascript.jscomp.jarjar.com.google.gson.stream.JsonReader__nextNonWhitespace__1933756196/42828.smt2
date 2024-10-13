(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2460 0)
(declare-sort var2622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var2460) (Array Int Int))
(declare-fun pos/-1654894195 (var2460) Int)
(declare-fun limit/-1654894195 (var2460) Int)
(declare-fun fillBuffer/945453390 (var2460 Int) Bool)
(declare-fun var2622-init () var2622)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/391724147 (var2460) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var2622 String) void)
(declare-const null-var2460 var2460)
(declare-const null-Bool Bool)
(declare-const var3285 var2460) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3285 null-var2460)))
(declare-const var2454 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var2454 null-Bool)))
(define-const var1200 (Array Int Int) (buffer/-1654894195 var3285)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var3726 Int (pos/-1654894195 var3285)) ; Statement: i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var874 Int (limit/-1654894195 var3285)) ; Statement: i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
(assert true) ; Non Conditional
 ; Statement: if i15 != i16 goto $i0 = i15 
(assert (not (not (= var3726 var874)))) ; Negate: Cond: i15 != i16  
(declare-const var3285!1 var2460)
(assert (not (= var3285!1 null-var2460)))
(assert (= (pos/-1654894195 var3285!1) var3726)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15 
(assert true)
(define-const var930 Bool (fillBuffer/945453390 var3285!1 1)) ; Statement: $z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1) 
 ; Statement: if $z1 != 0 goto i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (not (not (= (ite var930 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $i28 = (int) -1 
(assert (not (= (ite var2454 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var1619 var2622 var2622-init) ; Statement: $r10 = new java.io.EOFException 
(define-const var3831 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3831)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3831!1 String)
(assert (= var3831!1 ""))
(assert true)
(define-const var3024 String (append/672562846 var3831!1 "End of input")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("End of input") 
(declare-const var3831!2 String)
(assert (= var3831!2 (str.++ var3831!1 "End of input")))
(assert true)
(define-const var3851 String (locationString/391724147 var3285!1)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var55 String (append/672562846 var3024 var3851)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3024!1 String)
(assert (= var3024!1 (str.++ var3024 var3851)))
(assert true)
(define-const var589 String (toString/-2075883882 var55)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var1619 var589)) ; Statement: specialinvoke $r10.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var1619!1 var2622)
(declare-const var589!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean), var2622-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var2460=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3285=r0, var2454=z2, var1200=r1, var3726=i15, var874=i16, var930=$z1, var2622=java.io.EOFException, var1619=$r10, var3831=$r9, var3024=$r6, var3851=$r5, var55=$r7, var589=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2460, r0=var3285, z2=var2454, r1=var1200, i15=var3726, i16=var874, $z1=var930, java.io.EOFException=var2622, $r10=var1619, $r9=var3831, $r6=var3024, $r5=var3851, $r7=var55, $r8=var589}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	z2 := @parameter0: boolean;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if i15 != i16 goto $i0 = i15;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15;	$z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1);	if $z1 != 0 goto i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	goto [?= (branch)];	if z2 == 0 goto $i28 = (int) -1;	$r10 = new java.io.EOFException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("End of input");	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 6