(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3232 0)
(declare-sort var1376 0)
(declare-sort var2635 0)
(declare-sort var953 0)
(declare-sort var577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2635-init () var2635)
(declare-fun var953-init () var953)
(declare-fun <init>/630241661 (var953 var3232 String) void)
(declare-fun <init>/30097470 (var2635 var577) void)
(declare-fun cast-from-var953-to-var577 (var953) var577)
(declare-fun readLine/150542008 (var2635) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3232 var3232)
(declare-const null-String String)
(declare-const var3684 var3232) ; Statement: r2 := @parameter0: java.io.InputStream 
(assert (not (= var3684 null-var3232)))
(declare-const var1489 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1489 null-String)))
(define-const var1246 var2635 var2635-init) ; Statement: $r7 = new java.io.BufferedReader 
(define-const var850 var953 var953-init) ; Statement: $r6 = new java.io.InputStreamReader 
(assert true)
;(assert (<init>/630241661 var850 var3684 "UTF-8")) ; Statement: specialinvoke $r6.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.lang.String)>(r2, "UTF-8") 

(declare-const var850!1 var953)
(declare-const var3684!1 var3232)
(declare-const var2780 String)
(assert true)
;(assert (<init>/30097470 var1246 (cast-from-var953-to-var577 var850!1))) ; Statement: specialinvoke $r7.<java.io.BufferedReader: void <init>(java.io.Reader)>($r6) 

(declare-const var1246!1 var2635)
(declare-const var850!2 var953)
(assert true)
(define-const var521 String (readLine/150542008 var1246!1)) ; Statement: r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert (not (= var521 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var3240 String (trim/-847153721 var521)) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var54 Bool (isEmpty/-1285796103 var3240)) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>() 
(assert (not (not (= (ite var54 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert (and true (and (> (str.len var3240) 0) (<= 0 0))))
(define-const var3523 Int (charAt/698050440 var3240 0)) ; Statement: $c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0) 
(define-const var2718 Int (cast-from-Int-to-Int var3523)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 != 35 goto $z1 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
(assert (not (= var2718 35))) ; Cond: $i1 != 35 
(assert true)
(define-const var3080 Bool (= var3240 var1489)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z1 == 0 goto r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>() 
(assert (not (= (ite var3080 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2635-init=([], java.io.BufferedReader), var953-init=([], java.io.InputStreamReader), <init>/630241661=([java.io.InputStreamReader, java.io.InputStream, java.lang.String], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var953-to-var577=([java.io.InputStreamReader], java.io.Reader), readLine/150542008=([java.io.BufferedReader], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3232=java.io.InputStream, var3684=r2, var1489=r3, var1376=null_type, var2635=java.io.BufferedReader, var1246=$r7, var953=java.io.InputStreamReader, var850=$r6, var2780="UTF-8", var577=java.io.Reader, var521=r4, var3240=r5, var54=$z0, var3523=$c0, var2718=$i1, var3080=$z1}
; {java.io.InputStream=var3232, r2=var3684, r3=var1489, null_type=var1376, java.io.BufferedReader=var2635, $r7=var1246, java.io.InputStreamReader=var953, $r6=var850, "UTF-8"=var2780, java.io.Reader=var577, r4=var521, r5=var3240, $z0=var54, $c0=var3523, $i1=var2718, $z1=var3080}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: java.io.InputStream;	r3 := @parameter1: java.lang.String;	$r7 = new java.io.BufferedReader;	$r6 = new java.io.InputStreamReader;	specialinvoke $r6.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.lang.String)>(r2, "UTF-8");	specialinvoke $r7.<java.io.BufferedReader: void <init>(java.io.Reader)>($r6);	r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>();	goto [?= (branch)];	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r5.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>();	$c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 != 35 goto $z1 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r3);	$z1 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z1 == 0 goto r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>();	return 1
;block_num 6