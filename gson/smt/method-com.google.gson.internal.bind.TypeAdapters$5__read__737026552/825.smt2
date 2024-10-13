(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort var1537 0)
(declare-sort var360 0)
(declare-sort var2400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var1537) var360)
(declare-fun nextInt/-1874079238 (var1537) Int)
(declare-fun var2400-init () var2400)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getPreviousPath/455305022 (var1537) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/303326391 (var2400 String) void)
(declare-const null-var272 var272)
(declare-const null-var1537 var1537)
(declare-const var360-NULL var360)
(declare-const var970 var272) ; Statement: r14 := @this: com.google.gson.internal.bind.TypeAdapters$5 
(assert (not (= var970 null-var272)))
(declare-const var1345 var1537) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var1345 null-var1537)))
(assert true)
(define-const var3446 var360 (peek/-699404472 var1345)) ; Statement: $r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2347 var360 var360-NULL) ; Statement: $r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if $r2 != $r1 goto i0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: int nextInt()>() 
(assert (not (= var3446 var2347))) ; Cond: $r2 != $r1 
(assert true)
(define-const var1631 Int (nextInt/-1874079238 var1345)) ; Statement: i0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: int nextInt()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 > 255 goto $r17 = new com.google.gson.JsonSyntaxException 
(assert (> var1631 255)) ; Cond: i0 > 255 
(define-const var846 var2400 var2400-init) ; Statement: $r17 = new com.google.gson.JsonSyntaxException 
(define-const var2432 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2432)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2432!1 String)
(assert (= var2432!1 ""))
(assert true)
(define-const var176 String (append/672562846 var2432!1 "Lossy conversion from ")) ; Statement: $r5 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lossy conversion from ") 
(declare-const var2432!2 String)
(assert (= var2432!2 (str.++ var2432!1 "Lossy conversion from ")))
(assert true)
(define-const var2356 String (append/-1001720160 var176 var1631)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var176!1 String)
(assert (str.prefixof var176 var176!1))
(assert true)
(define-const var676 String (append/672562846 var2356 " to byte; at path ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to byte; at path ") 
(declare-const var2356!1 String)
(assert (= var2356!1 (str.++ var2356 " to byte; at path ")))
(assert true)
(define-const var1482 String (getPreviousPath/455305022 var1345)) ; Statement: $r7 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>() 
(assert true)
(define-const var831 String (append/672562846 var676 var1482)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var676!1 String)
(assert (= var676!1 (str.++ var676 var1482)))
(assert true)
(define-const var3074 String (toString/-2075883882 var831)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/303326391 var846 var3074)) ; Statement: specialinvoke $r17.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r10) 

(declare-const var846!1 var2400)
(declare-const var3074!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), nextInt/-1874079238=([com.google.gson.stream.JsonReader], int), var2400-init=([], com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getPreviousPath/455305022=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/303326391=([com.google.gson.JsonSyntaxException, java.lang.String], void)}
; {var272=com.google.gson.internal.bind.TypeAdapters$5, var970=r14, var1537=com.google.gson.stream.JsonReader, var1345=r0, var360=com.google.gson.stream.JsonToken, var3446=$r2, var2347=$r1, var1631=i0, var2400=com.google.gson.JsonSyntaxException, var846=$r17, var2432=$r16, var176=$r5, var2356=$r6, var676=$r8, var1482=$r7, var831=$r9, var3074=$r10}
; {com.google.gson.internal.bind.TypeAdapters$5=var272, r14=var970, com.google.gson.stream.JsonReader=var1537, r0=var1345, com.google.gson.stream.JsonToken=var360, $r2=var3446, $r1=var2347, i0=var1631, com.google.gson.JsonSyntaxException=var2400, $r17=var846, $r16=var2432, $r5=var176, $r6=var2356, $r8=var676, $r7=var1482, $r9=var831, $r10=var3074}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: com.google.gson.internal.bind.TypeAdapters$5;	r0 := @parameter0: com.google.gson.stream.JsonReader;	$r2 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r1 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if $r2 != $r1 goto i0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: int nextInt()>();	i0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: int nextInt()>();	goto [?= (branch)];	if i0 > 255 goto $r17 = new com.google.gson.JsonSyntaxException;	$r17 = new com.google.gson.JsonSyntaxException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lossy conversion from ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to byte; at path ");	$r7 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPreviousPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r10);	throw $r17
;block_num 5