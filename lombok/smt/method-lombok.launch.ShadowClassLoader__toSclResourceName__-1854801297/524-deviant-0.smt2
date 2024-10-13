(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2227 0)
(declare-sort var1316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun sclSuffix/1139179338 (var2227) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2227 var2227)
(declare-const null-String String)
(declare-const var3402 var2227) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3402 null-var2227)))
(declare-const var1803 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1803 null-String)))
(define-const var240 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var240 "SCL.")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("SCL.") 
(declare-const var240!1 String)
(assert (= var240!1 "SCL."))
(define-const var1112 String (sclSuffix/1139179338 var3402)) ; Statement: $r2 = r1.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> 
(assert true)
(define-const var3428 String (append/672562846 var240!1 var1112)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var240!2 String)
(assert (= var240!2 (str.++ var240!1 var1112)))
(assert true)
(define-const var1366 String (append/672562846 var3428 "/")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3428!1 String)
(assert (= var3428!1 (str.++ var3428 "/")))
(assert true)
(define-const var1677 Int (length/-134980193 var1803)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2892 Int (- var1677 6)) ; Statement: $i1 = $i0 - 6 
(assert (not (and true (and (>= 0 0) (>= (str.len var1803) var2892) (>= var2892 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2227=lombok.launch.ShadowClassLoader, var3402=r1, var1803=r4, var1316=null_type, var240=$r0, var1112=$r2, var3428=$r3, var1366=$r6, var1677=$i0, var2892=$i1, var749=$r5, var559=$r7, var1581=$r9, var2092=$r8, var1580=$r10, var2779=$r11}
; {lombok.launch.ShadowClassLoader=var2227, r1=var3402, r4=var1803, null_type=var1316, $r0=var240, $r2=var1112, $r3=var3428, $r6=var1366, $i0=var1677, $i1=var2892, $r5=var749, $r7=var559, $r9=var1581, $r8=var2092, $r10=var1580, $r11=var2779}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("SCL.");	$r2 = r1.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$i1 = $i0 - 6;	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".SCL.");	$r8 = r1.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1