(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var2172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2638 String) void)
(declare-const null-var2638 var2638)
(declare-const null-String String)
(declare-const var1763 var2638) ; Statement: r0 := @parameter0: java.io.PrintStream 
(assert (not (= var1763 null-var2638)))
(declare-const var3469 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3469 null-String)))
(declare-const var2685 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var2685 null-String)))
(declare-const var27 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var27 null-String)))
 ; Statement: if r12 != null goto (branch) 
(assert (not (= var2685 null-String))) ; Cond: r12 != null 
 ; Statement: if r13 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var27 null-String))) ; Cond: r13 != null 
(define-const var2063 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2063)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2063!1 String)
(assert (= var2063!1 ""))
(assert true)
(define-const var2161 String (append/672562846 var2063!1 var3469)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2063!2 String)
(assert (= var2063!2 (str.++ var2063!1 var3469)))
(assert true)
(define-const var3977 String (append/672562846 var2161 " : ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var2161!1 String)
(assert (= var2161!1 (str.++ var2161 " : ")))
(assert true)
(define-const var2420 String (append/672562846 var3977 var2685)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var3977!1 String)
(assert (= var3977!1 (str.++ var3977 var2685)))
(assert true)
(define-const var2530 String (toString/-2075883882 var2420)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1763 var2530)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var1763!1 var2638)
(declare-const var2530!1 String)
(define-const var2173 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2173)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2173!1 String)
(assert (= var2173!1 ""))
(assert true)
(define-const var3832 String (append/672562846 var2173!1 var3469)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2173!2 String)
(assert (= var2173!2 (str.++ var2173!1 var3469)))
(assert true)
(define-const var2603 String (append/672562846 var3832 " Location: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Location: ") 
(declare-const var3832!1 String)
(assert (= var3832!1 (str.++ var3832 " Location: ")))
(assert true)
(define-const var2848 String (append/672562846 var2603 var27)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var2603!1 String)
(assert (= var2603!1 (str.++ var2603 var27)))
(assert true)
(define-const var3532 String (toString/-2075883882 var2848)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1763!1 var3532)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var1763!2 var2638)
(declare-const var3532!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2638=java.io.PrintStream, var1763=r0, var3469=r2, var2172=null_type, var2685=r12, var27=r13, var2063=$r1, var2161=$r3, var3977=$r4, var2420=$r5, var2530=$r6, var2173=$r7, var3832=$r8, var2603=$r9, var2848=$r10, var3532=$r11}
; {java.io.PrintStream=var2638, r0=var1763, r2=var3469, null_type=var2172, r12=var2685, r13=var27, $r1=var2063, $r3=var2161, $r4=var3977, $r5=var2420, $r6=var2530, $r7=var2173, $r8=var3832, $r9=var2603, $r10=var2848, $r11=var3532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.io.PrintStream;	r2 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	if r12 != null goto (branch);	if r13 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Location: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r11);	return
;block_num 3