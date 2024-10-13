(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2766 0)
(declare-sort var1462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-800842017 (var2766) Int)
(declare-fun bufferSize/-800842017 (var2766) Int)
(declare-fun var1462-init () var1462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1462 String) void)
(declare-const null-var2766 var2766)
(declare-const null-Int Int)
(declare-const var3571 var2766) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder 
(assert (not (= var3571 null-var2766)))
(declare-const var2590 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2590 null-Int)))
(define-const var3287 Int (pos/-800842017 var3571)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos> 
(define-const var1580 Int (+ var3287 var2590)) ; Statement: $i3 = $i1 + i0 
(define-const var2573 Int (bufferSize/-800842017 var3571)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int bufferSize> 
 ; Statement: if $i3 > $i2 goto $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int sizeLimit> 
(assert (not (> var1580 var2573))) ; Negate: Cond: $i3 > $i2  
(define-const var3018 var1462 var1462-init) ; Statement: $r25 = new java.lang.IllegalStateException 
(define-const var3909 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3909)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3909!1 String)
(assert (= var3909!1 ""))
(assert true)
(define-const var2250 String (append/672562846 var3909!1 "refillBuffer() called when ")) ; Statement: $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("refillBuffer() called when ") 
(declare-const var3909!2 String)
(assert (= var3909!2 (str.++ var3909!1 "refillBuffer() called when ")))
(assert true)
(define-const var2544 String (append/-1001720160 var2250 var2590)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2250!1 String)
(assert (str.prefixof var2250 var2250!1))
(assert true)
(define-const var3020 String (append/672562846 var2544 " bytes were already available in buffer")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes were already available in buffer") 
(declare-const var2544!1 String)
(assert (= var2544!1 (str.++ var2544 " bytes were already available in buffer")))
(assert true)
(define-const var3277 String (toString/-2075883882 var3020)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3018 var3277)) ; Statement: specialinvoke $r25.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var3018!1 var1462)
(declare-const var3277!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-800842017=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], int), bufferSize/-800842017=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], int), var1462-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2766=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder, var3571=r0, var2590=i0, var3287=$i1, var1580=$i3, var2573=$i2, var1462=java.lang.IllegalStateException, var3018=$r25, var3909=$r24, var2250=$r8, var2544=$r9, var3020=$r10, var3277=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder=var2766, r0=var3571, i0=var2590, $i1=var3287, $i3=var1580, $i2=var2573, java.lang.IllegalStateException=var1462, $r25=var3018, $r24=var3909, $r8=var2250, $r9=var2544, $r10=var3020, $r11=var3277}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder;	i0 := @parameter0: int;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int pos>;	$i3 = $i1 + i0;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int bufferSize>;	if $i3 > $i2 goto $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int sizeLimit>;	$r25 = new java.lang.IllegalStateException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("refillBuffer() called when ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes were already available in buffer");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	throw $r25
;block_num 2