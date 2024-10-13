(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1462 0)
(declare-sort var3225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var1462) (Array Int Int))
(declare-fun pos/1477480286 (var1462) Int)
(declare-fun limit/1477480286 (var1462) Int)
(declare-fun fillBuffer/548664799 (var1462 Int) Bool)
(declare-fun var3225-init () var3225)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/1083242436 (var1462) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var3225 String) void)
(declare-const null-var1462 var1462)
(declare-const null-Bool Bool)
(declare-const var362 var1462) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var362 null-var1462)))
(declare-const var172 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var172 null-Bool)))
(define-const var3228 (Array Int Int) (buffer/1477480286 var362)) ; Statement: r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2465 Int (pos/1477480286 var362)) ; Statement: i15 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var2073 Int (limit/1477480286 var362)) ; Statement: i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
(assert true) ; Non Conditional
 ; Statement: if i15 != i16 goto $i0 = i15 
(assert (not (not (= var2465 var2073)))) ; Negate: Cond: i15 != i16  
(declare-const var362!1 var1462)
(assert (not (= var362!1 null-var1462)))
(assert (= (pos/1477480286 var362!1) var2465)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = i15 
(assert true)
(define-const var3382 Bool (fillBuffer/548664799 var362!1 1)) ; Statement: $z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1) 
 ; Statement: if $z1 != 0 goto i15 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (not (not (= (ite var3382 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $i28 = (int) -1 
(assert (not (= (ite var172 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var769 var3225 var3225-init) ; Statement: $r10 = new java.io.EOFException 
(define-const var2833 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2833)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2833!1 String)
(assert (= var2833!1 ""))
(assert true)
(define-const var2837 String (append/672562846 var2833!1 "End of input")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("End of input") 
(declare-const var2833!2 String)
(assert (= var2833!2 (str.++ var2833!1 "End of input")))
(assert true)
(define-const var786 String (locationString/1083242436 var362!1)) ; Statement: $r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var1254 String (append/672562846 var2837 var786)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2837!1 String)
(assert (= var2837!1 (str.++ var2837 var786)))
(assert true)
(define-const var3147 String (toString/-2075883882 var1254)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var769 var3147)) ; Statement: specialinvoke $r10.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var769!1 var3225)
(declare-const var3147!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean), var3225-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var1462=com.google.gson.stream.JsonReader, var362=r0, var172=z2, var3228=r1, var2465=i15, var2073=i16, var3382=$z1, var3225=java.io.EOFException, var769=$r10, var2833=$r9, var2837=$r6, var786=$r5, var1254=$r7, var3147=$r8}
; {com.google.gson.stream.JsonReader=var1462, r0=var362, z2=var172, r1=var3228, i15=var2465, i16=var2073, $z1=var3382, java.io.EOFException=var3225, $r10=var769, $r9=var2833, $r6=var2837, $r5=var786, $r7=var1254, $r8=var3147}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	z2 := @parameter0: boolean;	r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	i15 = r0.<com.google.gson.stream.JsonReader: int pos>;	i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	if i15 != i16 goto $i0 = i15;	r0.<com.google.gson.stream.JsonReader: int pos> = i15;	$z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1);	if $z1 != 0 goto i15 = r0.<com.google.gson.stream.JsonReader: int pos>;	goto [?= (branch)];	if z2 == 0 goto $i28 = (int) -1;	$r10 = new java.io.EOFException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("End of input");	$r5 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 6