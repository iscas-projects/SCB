(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1376 0)
(declare-sort var1735 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-1373302144 (var1376) String)
(declare-fun symbol/-1373302144 (var1376) var1735)
(declare-fun append/-1031950772 (String var1860) String)
(declare-fun cast-from-var1735-to-var1860 (var1735) var1860)
(declare-fun value/-1373302144 (var1376) var1860)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1376 var1376)
(declare-const null-var1860 var1860)
(declare-const var3906 var1376) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MapTuple 
(assert (not (= var3906 null-var1376)))
(define-const var2719 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2719)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2719!1 String)
(assert (= var2719!1 ""))
(assert true)
(define-const var965 String (append/672562846 var2719!1 "[key=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[key=") 
(declare-const var2719!2 String)
(assert (= var2719!2 (str.++ var2719!1 "[key=")))
(define-const var2779 String (key/-1373302144 var3906)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.String key> 
(assert true)
(define-const var249 String (append/672562846 var965 var2779)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var965!1 String)
(assert (= var965!1 (str.++ var965 var2779)))
(assert true)
(define-const var3332 String (append/672562846 var249 ", symbol=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", symbol=") 
(declare-const var249!1 String)
(assert (= var249!1 (str.++ var249 ", symbol=")))
(define-const var3592 var1735 (symbol/-1373302144 var3906)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.MapTuple: jdk.nashorn.internal.ir.Symbol symbol> 
(assert true)
(define-const var3629 String (append/-1031950772 var3332 (cast-from-var1735-to-var1860 var3592))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3332!1 String)
(assert (str.prefixof var3332 var3332!1))
(assert true)
(define-const var1160 String (append/672562846 var3629 ", value=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=") 
(declare-const var3629!1 String)
(assert (= var3629!1 (str.++ var3629 ", value=")))
(define-const var3787 var1860 (value/-1373302144 var3906)) ; Statement: $r8 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
(assert true)
(define-const var2659 String (append/-1031950772 var1160 var3787)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1160!1 String)
(assert (str.prefixof var1160 var1160!1))
(assert true)
(define-const var2916 String (append/672562846 var2659 " (")) ; Statement: $r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2659!1 String)
(assert (= var2659!1 (str.++ var2659 " (")))
(define-const var1193 var1860 (value/-1373302144 var3906)) ; Statement: $r11 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
 ; Statement: if $r11 != null goto $r12 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
(assert (not (not (= var1193 null-var1860)))) ; Negate: Cond: $r11 != null  
(define-const var2284 String "null") ; Statement: $r18 = "null" 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3643 String (append/672562846 var2916 var2284)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2916!1 String)
(assert (= var2916!1 (str.++ var2916 var2284)))
(assert true)
(define-const var107 String (append/672562846 var3643 ")]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var3643!1 String)
(assert (= var3643!1 (str.++ var3643 ")]")))
(assert true)
(define-const var1850 String (toString/-2075883882 var107)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-1373302144=([jdk.nashorn.internal.codegen.MapTuple], java.lang.String), symbol/-1373302144=([jdk.nashorn.internal.codegen.MapTuple], jdk.nashorn.internal.ir.Symbol), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1735-to-var1860=([jdk.nashorn.internal.ir.Symbol], java.lang.Object), value/-1373302144=([jdk.nashorn.internal.codegen.MapTuple], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1376=jdk.nashorn.internal.codegen.MapTuple, var3906=r1, var2719=$r0, var965=$r3, var2779=$r2, var249=$r4, var3332=$r6, var1735=jdk.nashorn.internal.ir.Symbol, var3592=$r5, var1860=java.lang.Object, var3629=$r7, var1160=$r9, var3787=$r8, var2659=$r10, var2916=$r14, var1193=$r11, var2284=$r18, var3643=$r15, var107=$r16, var1850=$r17}
; {jdk.nashorn.internal.codegen.MapTuple=var1376, r1=var3906, $r0=var2719, $r3=var965, $r2=var2779, $r4=var249, $r6=var3332, jdk.nashorn.internal.ir.Symbol=var1735, $r5=var3592, java.lang.Object=var1860, $r7=var3629, $r9=var1160, $r8=var3787, $r10=var2659, $r14=var2916, $r11=var1193, $r18=var2284, $r15=var3643, $r16=var107, $r17=var1850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MapTuple;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[key=");	$r2 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", symbol=");	$r5 = r1.<jdk.nashorn.internal.codegen.MapTuple: jdk.nashorn.internal.ir.Symbol symbol>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=");	$r8 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r11 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	if $r11 != null goto $r12 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	$r18 = "null";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3